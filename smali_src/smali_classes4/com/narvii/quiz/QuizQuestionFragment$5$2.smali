.class Lcom/narvii/quiz/QuizQuestionFragment$5$2;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


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

.field final synthetic val$anim1:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$5;JJLandroid/view/animation/Animation;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 3
    .line 4
    iput-object p6, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->val$anim1:Landroid/view/animation/Animation;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput v1, v0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->A(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->K(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->M(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 42
    .line 43
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->C(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-wide/16 v2, 0x3e8

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 16
    long-to-int p1, p1

    .line 17
    .line 18
    iput p1, v0, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 19
    int-to-float p1, p1

    .line 20
    .line 21
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 22
    div-float/2addr p1, p2

    .line 23
    float-to-double p1, p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 27
    move-result-wide p1

    .line 28
    double-to-int p1, p1

    .line 29
    .line 30
    if-ltz p1, :cond_1

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 35
    .line 36
    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->A(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 56
    .line 57
    iget p2, p2, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 65
    .line 66
    iget p2, p1, Lcom/narvii/quiz/QuizQuestionFragment;->remainingTime:I

    .line 67
    .line 68
    const/16 v0, 0xbb8

    .line 69
    .line 70
    if-gt p2, v0, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->D(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->val$anim1:Landroid/view/animation/Animation;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    .line 89
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->p(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/View;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    const p2, 0x7f080889

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 106
    .line 107
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    .line 108
    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    .line 111
    .line 112
    const v1, 0x3f333333    # 0.7f

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->F(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/animation/AlphaAnimation;)V

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    const-wide/16 v0, 0x320

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    .line 139
    move-result-object p1

    .line 140
    const/4 p2, 0x1

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 146
    .line 147
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    .line 151
    move-result-object p1

    .line 152
    const/4 v0, 0x3

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 156
    .line 157
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    .line 163
    move-result-object p1

    .line 164
    const/4 v0, 0x2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 168
    .line 169
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 172
    .line 173
    .line 174
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->p(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/View;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    .line 188
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 189
    .line 190
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p2}, Lcom/narvii/quiz/QuizQuestionFragment;->J(Lcom/narvii/quiz/QuizQuestionFragment;Z)V

    .line 194
    .line 195
    :cond_2
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 196
    .line 197
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 198
    .line 199
    .line 200
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->A(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/widget/ProgressBar;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    iget-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$2;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 204
    .line 205
    iget-object p2, p2, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 209
    move-result-object p2

    .line 210
    .line 211
    .line 212
    const v0, 0x7f08088a

    .line 213
    .line 214
    .line 215
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 216
    move-result-object p2

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_3
    return-void
.end method
