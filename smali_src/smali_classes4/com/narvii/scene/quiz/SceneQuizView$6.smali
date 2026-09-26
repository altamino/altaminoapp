.class Lcom/narvii/scene/quiz/SceneQuizView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->answerSelected:Z

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$500(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$800(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/narvii/scene/quiz/SceneQuizView;->access$300(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    sget v3, Lcom/narvii/mediaeditor/R$raw;->quiz_question_right_answer:I

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    instance-of v3, v2, Lcom/narvii/model/QuizOption;

    .line 57
    const/4 v4, 0x0

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    check-cast v2, Lcom/narvii/model/QuizOption;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 69
    .line 70
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v5, v2, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move v1, v4

    .line 86
    .line 87
    :goto_1
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Lcom/narvii/scene/quiz/SceneQuizView;->access$400(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    sget v2, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerRightDrawable(Z)Landroid/graphics/drawable/Drawable;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    goto :goto_2

    .line 109
    .line 110
    :cond_2
    sget v2, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerWrongDrawable(Z)Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .line 125
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->shader:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 132
    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_right:I

    .line 136
    goto :goto_3

    .line 137
    .line 138
    :cond_3
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_wrong:I

    .line 139
    .line 140
    .line 141
    :goto_3
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 147
    .line 148
    .line 149
    invoke-static {v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1000(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 150
    .line 151
    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    check-cast p1, Landroid/widget/TextView;

    .line 158
    const/4 v1, -0x1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    const-wide/16 v1, 0x3e8

    .line 164
    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 168
    .line 169
    iget-object v0, p1, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    goto :goto_4

    .line 176
    .line 177
    :cond_4
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 178
    .line 179
    iget-object v0, p1, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 180
    .line 181
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswerRunnable:Ljava/lang/Runnable;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :goto_4
    return-void
.end method
