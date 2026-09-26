.class Lcom/narvii/quiz/QuizQuestionFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizQuestionFragment;
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
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->M(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/widget/PushButton;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0e9e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    const/4 v1, -0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->r(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->L(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/narvii/quiz/QuizQuestionFragment;->E(Lcom/narvii/quiz/QuizQuestionFragment;Z)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->q(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->K(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    const v1, 0x7f110020

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    instance-of v1, v0, Lcom/narvii/model/QuizOption;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    check-cast v0, Lcom/narvii/model/QuizOption;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    :cond_3
    instance-of v0, p1, Lcom/narvii/widget/PushButton;

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->q(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 127
    move-result v0

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    check-cast p1, Lcom/narvii/widget/PushButton;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    const v1, 0x7f0603fd

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 144
    move-result v0

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    .line 153
    const v2, 0x7f0603fe

    .line 154
    .line 155
    .line 156
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 157
    move-result v1

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 161
    goto :goto_1

    .line 162
    .line 163
    :cond_4
    check-cast p1, Lcom/narvii/widget/PushButton;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    const v1, 0x7f0603ff

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 176
    move-result v0

    .line 177
    .line 178
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 182
    move-result-object v1

    .line 183
    .line 184
    .line 185
    const v2, 0x7f060400

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 189
    move-result v1

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 193
    .line 194
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 195
    .line 196
    .line 197
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->R(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 198
    .line 199
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 200
    .line 201
    .line 202
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->q(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 203
    move-result p1

    .line 204
    .line 205
    const-wide/16 v0, 0x3e8

    .line 206
    .line 207
    if-eqz p1, :cond_6

    .line 208
    .line 209
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 210
    .line 211
    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 212
    .line 213
    .line 214
    invoke-static {v2}, Lcom/narvii/quiz/QuizQuestionFragment;->u(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    goto :goto_2

    .line 220
    .line 221
    :cond_6
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 222
    .line 223
    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Lcom/narvii/quiz/QuizQuestionFragment;->C(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    .line 227
    move-result-object v2

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :goto_2
    return-void
.end method
