.class Lcom/narvii/scene/quiz/SceneQuizView$1$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTVAnim:Landroid/widget/TextView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$200(Lcom/narvii/scene/quiz/SceneQuizView;I)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$300(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 49
    const/4 v1, 0x1

    .line 50
    .line 51
    iput-boolean v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->timeout:Z

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$400(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$500(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 66
    .line 67
    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswerRunnable:Ljava/lang/Runnable;

    .line 70
    .line 71
    const-wide/16 v2, 0x3e8

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 35
    long-to-int p1, p1

    .line 36
    .line 37
    iput p1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 38
    int-to-float p1, p1

    .line 39
    .line 40
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 41
    div-float/2addr p1, p2

    .line 42
    float-to-double p1, p1

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 46
    move-result-wide p1

    .line 47
    double-to-int p1, p1

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 52
    .line 53
    iget-object v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->progressBar:Lcom/narvii/widget/CircleProgressBar;

    .line 54
    .line 55
    iget p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Lcom/narvii/widget/CircleProgressBar;->setProgress(I)V

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 61
    .line 62
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 63
    .line 64
    iget v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 65
    .line 66
    const/16 v2, 0xbb8

    .line 67
    .line 68
    if-gt v0, v2, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Lcom/narvii/scene/quiz/SceneQuizView;->access$100(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    .line 72
    move-result p2

    .line 73
    .line 74
    if-nez p2, :cond_1

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 79
    .line 80
    sget v0, Lcom/narvii/mediaeditor/R$id;->red_alert:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    check-cast v0, Lcom/narvii/widget/GradientView;

    .line 87
    .line 88
    iput-object v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    .line 89
    .line 90
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 91
    .line 92
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 93
    .line 94
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    .line 95
    .line 96
    .line 97
    const v0, -0x8474

    .line 98
    .line 99
    .line 100
    const v2, -0xd59d

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0, v2}, Lcom/narvii/widget/GradientView;->setColor(II)V

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 106
    .line 107
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 108
    .line 109
    iget-object v0, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    const/high16 v2, 0x41a00000    # 20.0f

    .line 116
    .line 117
    .line 118
    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 119
    move-result p2

    .line 120
    int-to-float p2, p2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p2}, Lcom/narvii/widget/GradientView;->setRadius(F)V

    .line 124
    .line 125
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 126
    .line 127
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 128
    .line 129
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->redAlert:Lcom/narvii/widget/GradientView;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 135
    .line 136
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 137
    const/4 v0, 0x1

    .line 138
    .line 139
    .line 140
    invoke-static {p2, v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$102(Lcom/narvii/scene/quiz/SceneQuizView;Z)Z

    .line 141
    .line 142
    :cond_1
    iget-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$1$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$1;

    .line 143
    .line 144
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 145
    .line 146
    .line 147
    invoke-static {p2, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$200(Lcom/narvii/scene/quiz/SceneQuizView;I)V

    .line 148
    goto :goto_0

    .line 149
    .line 150
    :cond_2
    iget-object p2, p2, Lcom/narvii/scene/quiz/SceneQuizView;->alarmTV:Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    return-void
.end method
