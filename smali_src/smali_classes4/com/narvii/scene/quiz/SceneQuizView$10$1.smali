.class Lcom/narvii/scene/quiz/SceneQuizView$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$10;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$10;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/scene/quiz/SceneQuizView$10;->val$finalI:I

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    move-result p1

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    if-ne v0, p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$10$1;->this$1:Lcom/narvii/scene/quiz/SceneQuizView$10;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView$10;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/narvii/scene/quiz/SceneQuizView;->answerSelected:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object p1, p1, Lcom/narvii/scene/quiz/SceneQuizView;->alarmRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 30
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
