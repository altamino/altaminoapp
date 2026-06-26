.class Lcom/narvii/quiz/QuizQuestionFragment$10;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment;->showAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizQuestionFragment;

.field final synthetic val$answerItem:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;Landroid/view/View;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->val$answerItem:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$2200(Lcom/narvii/quiz/QuizQuestionFragment;)Lcom/narvii/widget/EqualGridLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 584
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1400(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->val$answerItem:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010029

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
