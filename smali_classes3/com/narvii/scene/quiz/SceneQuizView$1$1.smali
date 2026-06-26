.class Lcom/narvii/scene/quiz/SceneQuizView$1$1;
.super Landroid/os/CountDownTimer;
.source "SceneQuizView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView$1;JJ)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 130
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 131
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 132
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$200(Lcom/narvii/scene/quiz/SceneQuizView;I)V

    .line 133
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 134
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$300(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 135
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->timeout:Z

    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$400(Lcom/narvii/scene/quiz/SceneQuizView;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$500(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 138
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    long-to-int p2, p1

    iput p2, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 109
    iget p1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 111
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    iget p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    invoke-virtual {v0, p2}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 113
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    const/16 v2, 0xbb8

    if-gt v0, v2, :cond_2

    .line 114
    invoke-static {p2}, Lcom/narvii/scene/quiz/SceneQuizView;->access$100(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 115
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    sget v0, Lcom/narvii/mediaeditor/R$id;->red_alert:I

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/GradientView;

    iput-object v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    .line 116
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    const v0, -0x8474

    const v2, -0xd59d

    invoke-virtual {p2, v0, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 117
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 118
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$102(Lcom/narvii/scene/quiz/SceneQuizView;Z)Z

    .line 121
    :cond_1
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {p2, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$200(Lcom/narvii/scene/quiz/SceneQuizView;I)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
