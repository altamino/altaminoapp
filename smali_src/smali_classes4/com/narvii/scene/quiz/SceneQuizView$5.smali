.class Lcom/narvii/scene/quiz/SceneQuizView$5;
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
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$5;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

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
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$5;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$900(Lcom/narvii/scene/quiz/SceneQuizView;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$5;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->dismissWrongAnswerRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
.end method
