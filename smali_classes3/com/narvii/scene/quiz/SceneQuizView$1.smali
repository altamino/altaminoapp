.class Lcom/narvii/scene/quiz/SceneQuizView$1;
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

    .line 93
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    invoke-static {v0}, Lcom/narvii/scene/quiz/SceneQuizView;->access$000(Lcom/narvii/scene/quiz/SceneQuizView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    new-instance v7, Lcom/narvii/scene/quiz/SceneQuizView$1$1;

    iget v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    int-to-long v3, v1

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v1

    const-wide/16 v5, 0xa

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/quiz/SceneQuizView$1$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizView$1;JJ)V

    iput-object v7, v0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 141
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$600(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
