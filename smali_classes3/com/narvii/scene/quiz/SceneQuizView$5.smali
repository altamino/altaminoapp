.class Lcom/narvii/scene/quiz/SceneQuizView$5;
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

    .line 205
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$5;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$5;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$900(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 209
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$5;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
