.class Lcom/narvii/scene/quiz/SceneQuizView$9;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

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
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1300(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1400(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$900(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$9;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$1500(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 24
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
