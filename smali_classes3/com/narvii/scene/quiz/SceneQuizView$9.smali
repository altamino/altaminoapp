.class Lcom/narvii/scene/quiz/SceneQuizView$9;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/quiz/SceneQuizView;->showQuestion()V
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

    .line 400
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 408
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1300(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 409
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1400(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$900(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 411
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1500(Lcom/narvii/scene/quiz/SceneQuizView;)V

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
