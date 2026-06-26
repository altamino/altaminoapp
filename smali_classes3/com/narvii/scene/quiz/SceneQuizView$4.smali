.class Lcom/narvii/scene/quiz/SceneQuizView$4;
.super Ljava/lang/Object;
.source "SceneQuizView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/quiz/SceneQuizView;
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

    .line 189
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 196
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v2, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$800(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
