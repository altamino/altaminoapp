.class Lcom/narvii/quiz/QuizQuestionFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->A(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    const v1, 0x7f010018

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 39
    move-result-object v8

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/quiz/QuizQuestionFragment$5$1;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizQuestionFragment$5$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$5;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 50
    .line 51
    new-instance v1, Lcom/narvii/quiz/QuizQuestionFragment$5$2;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 54
    .line 55
    iget v2, v2, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 56
    int-to-long v4, v2

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    .line 60
    move-result-wide v2

    .line 61
    .line 62
    const-wide/16 v6, 0xa

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 66
    move-result-wide v6

    .line 67
    move-object v2, v1

    .line 68
    move-object v3, p0

    .line 69
    .line 70
    .line 71
    invoke-direct/range {v2 .. v8}, Lcom/narvii/quiz/QuizQuestionFragment$5$2;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$5;JJLandroid/view/animation/Animation;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/narvii/quiz/QuizQuestionFragment;->G(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/os/CountDownTimer;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->s(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/os/CountDownTimer;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 84
    return-void
.end method
