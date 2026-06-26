.class Lcom/narvii/quiz/QuizQuestionFragment$6$2;
.super Landroid/os/CountDownTimer;
.source "QuizQuestionFragment.java"


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

.field final synthetic val$anim1:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$6;JJLandroid/view/animation/Animation;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iput-object p6, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->val$anim1:Landroid/view/animation/Animation;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 493
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1500(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 495
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$400(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 496
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$000(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 497
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v1, v1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$700(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    long-to-int p2, p1

    iput p2, v0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 464
    iget p1, v0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-ltz p1, :cond_1

    .line 467
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :cond_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1500(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget p2, p2, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 472
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget p2, p1, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    const/16 v0, 0xbb8

    if-gt p2, v0, :cond_3

    .line 473
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1700(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->val$anim1:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 475
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1800(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f08068e

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 476
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f333333    # 0.7f

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->access$102(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;

    .line 477
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 478
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 479
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 480
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 481
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1800(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 482
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1702(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z

    .line 485
    :cond_2
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1500(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f08068f

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
