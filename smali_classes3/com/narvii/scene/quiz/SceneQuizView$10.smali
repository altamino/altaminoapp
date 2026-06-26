.class Lcom/narvii/scene/quiz/SceneQuizView$10;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;->showAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/quiz/SceneQuizView;

.field final synthetic val$answerItem:Landroid/view/View;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;I)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iput-object p2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    iput p3, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1400(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 510
    new-instance v0, Lcom/narvii/util/ScaleBounceAnimator;

    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    sget-object v3, Lcom/narvii/scene/quiz/SceneQuizView;->scaleArray:[F

    sget-object v4, Lcom/narvii/scene/quiz/SceneQuizView;->timeArray:[I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/narvii/util/ScaleBounceAnimator;-><init>(Landroid/content/Context;Landroid/view/View;[F[I)V

    .line 511
    iget v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$finalI:I

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto/16 :goto_3

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 526
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    .line 521
    :cond_3
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 522
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    .line 517
    :cond_5
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 518
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    .line 513
    :cond_7
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 514
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 529
    :goto_3
    new-instance v1, Lcom/narvii/scene/quiz/SceneQuizView$10$1;

    invoke-direct {v1, p0}, Lcom/narvii/scene/quiz/SceneQuizView$10$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizView$10;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/ScaleBounceAnimator;->playSeq(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    const/16 v1, 0xd0

    invoke-static {v0, v1}, Lcom/narvii/util/ViewUtils;->fadeIn(Landroid/view/View;I)V

    .line 554
    :cond_9
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$answerItem:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
