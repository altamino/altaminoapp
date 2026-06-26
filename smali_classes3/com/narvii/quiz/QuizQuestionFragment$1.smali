.class Lcom/narvii/quiz/QuizQuestionFragment$1;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

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

    .line 87
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$000(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 92
    instance-of v0, p1, Lcom/narvii/widget/PushButton;

    if-eqz v0, :cond_0

    const v1, 0x7f090b9a

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$100(Lcom/narvii/quiz/QuizQuestionFragment;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$300(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/narvii/quiz/QuizQuestionFragment;->access$202(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z

    .line 101
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$200(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$400(Lcom/narvii/quiz/QuizQuestionFragment;)V

    goto :goto_0

    .line 105
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0014

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    .line 106
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 107
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 114
    instance-of v2, v1, Lcom/narvii/model/QuizOption;

    if-eqz v2, :cond_3

    .line 115
    check-cast v1, Lcom/narvii/model/QuizOption;

    .line 116
    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object v2, v2, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object v2, v2, Lcom/narvii/quiz/QuizQuestionFragment;->answerList:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/narvii/model/QuizOption;->optId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$200(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    check-cast p1, Lcom/narvii/widget/PushButton;

    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060190

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060191

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/PushButton;->setColor(II)V

    goto :goto_1

    .line 124
    :cond_4
    check-cast p1, Lcom/narvii/widget/PushButton;

    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060192

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060193

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 128
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$500(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 130
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$200(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_6

    .line 131
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v2}, Lcom/narvii/quiz/QuizQuestionFragment;->access$600(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 133
    :cond_6
    sget-object p1, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/quiz/QuizQuestionFragment$1;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v2}, Lcom/narvii/quiz/QuizQuestionFragment;->access$700(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
