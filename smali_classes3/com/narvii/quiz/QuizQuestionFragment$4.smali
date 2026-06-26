.class Lcom/narvii/quiz/QuizQuestionFragment$4;
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

.field final synthetic val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

.field final synthetic val$mediaView:Lcom/narvii/widget/NVImageView;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SpinningView;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iput-object p2, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->val$mediaView:Lcom/narvii/widget/NVImageView;

    iput-object p3, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->val$mediaView:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1000(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->val$mediaLoadingView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010031

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1400(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x258

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 381
    new-instance v1, Lcom/narvii/quiz/QuizQuestionFragment$4$1;

    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizQuestionFragment$4$1;-><init>(Lcom/narvii/quiz/QuizQuestionFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$4;->val$mediaView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
