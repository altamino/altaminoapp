.class Lcom/narvii/scene/quiz/SceneQuizView$10$1;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/scene/quiz/SceneQuizView$10;


# direct methods
.method constructor <init>(Lcom/narvii/scene/quiz/SceneQuizView$10;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 537
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$10;

    iget v0, p1, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$finalI:I

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$10;

    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-boolean v0, p1, Lcom/narvii/scene/quiz/SceneQuizView;->answerSelected:Z

    if-nez v0, :cond_0

    .line 538
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->alarmRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
