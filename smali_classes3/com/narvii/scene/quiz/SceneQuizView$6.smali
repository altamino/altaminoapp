.class Lcom/narvii/scene/quiz/SceneQuizView$6;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

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

    .line 230
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->answerSelected:Z

    .line 235
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$500(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 237
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0, p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$800(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v2}, Lcom/narvii/scene/quiz/SceneQuizView;->access$300(Lcom/narvii/scene/quiz/SceneQuizView;)V

    goto :goto_0

    .line 243
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$raw;->quiz_question_right_answer:I

    invoke-static {v2, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x3

    .line 244
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 245
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 247
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 254
    instance-of v4, v3, Lcom/narvii/model/QuizOption;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 255
    check-cast v3, Lcom/narvii/model/QuizOption;

    .line 256
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v2, v2, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v2, v2, Lcom/narvii/scene/quiz/SceneQuizView;->answerList:Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v2, v3, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    .line 259
    invoke-virtual {v3}, Lcom/narvii/model/QuizOption;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 262
    :goto_1
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v3, v2}, Lcom/narvii/scene/quiz/SceneQuizView;->access$400(Lcom/narvii/scene/quiz/SceneQuizView;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 265
    sget v2, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-virtual {v3, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerRightDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 267
    :cond_2
    sget v2, Lcom/narvii/mediaeditor/R$id;->item_bg:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-virtual {v3, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->getAnswerWrongDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :goto_2
    sget v1, Lcom/narvii/mediaeditor/R$id;->shader:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_3

    .line 270
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_right:I

    goto :goto_3

    :cond_3
    sget v2, Lcom/narvii/mediaeditor/R$drawable;->ic_quiz_answer_shader_wrong:I

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1000(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 274
    sget v1, Lcom/narvii/mediaeditor/R$id;->answer_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_4

    .line 276
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, p1, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 278
    :cond_4
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$6;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, p1, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->showRightAnswerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void
.end method
