.class Lcom/narvii/scene/quiz/SceneQuizView$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->answers:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Landroid/view/View;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$800(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    const/4 v2, 0x4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    sget v3, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$4;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissRunnable:Ljava/lang/Runnable;

    .line 64
    .line 65
    const-wide/16 v2, 0x3e8

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method
