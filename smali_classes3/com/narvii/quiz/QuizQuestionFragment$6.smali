.class Lcom/narvii/quiz/QuizQuestionFragment$6;
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

    .line 432
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 435
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1500(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010016

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 441
    new-instance v0, Lcom/narvii/quiz/QuizQuestionFragment$6$1;

    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizQuestionFragment$6$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$6;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 457
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    new-instance v1, Lcom/narvii/quiz/QuizQuestionFragment$6$2;

    iget v2, v0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    int-to-long v4, v2

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v2

    const-wide/16 v6, 0xa

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/narvii/quiz/QuizQuestionFragment$6$2;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$6;JJLandroid/view/animation/Animation;)V

    invoke-static {v0, v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1602(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 500
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1600(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
