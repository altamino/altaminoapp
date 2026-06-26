.class Lcom/narvii/quiz/QuizQuestionFragment$8;
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

    .line 513
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 516
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->answerViews:[Lcom/narvii/widget/PushButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 520
    iget-object v4, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v4, v3}, Lcom/narvii/quiz/QuizQuestionFragment;->access$300(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x4

    .line 521
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v4, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f01002a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1400(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1900(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 526
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$2000(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
