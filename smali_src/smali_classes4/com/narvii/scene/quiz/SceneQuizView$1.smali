.class Lcom/narvii/scene/quiz/SceneQuizView$1;
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
    iput-object p1, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

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
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 12
    .line 13
    new-instance v7, Lcom/narvii/scene/quiz/SceneQuizView$1$1;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 16
    .line 17
    iget v1, v1, Lcom/narvii/scene/quiz/SceneQuizView;->remainingTime:I

    .line 18
    int-to-long v3, v1

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    .line 22
    move-result-wide v1

    .line 23
    .line 24
    const-wide/16 v5, 0xa

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 28
    move-result-wide v5

    .line 29
    move-object v1, v7

    .line 30
    move-object v2, p0

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/narvii/scene/quiz/SceneQuizView$1$1;-><init>(Lcom/narvii/scene/quiz/SceneQuizView$1;JJ)V

    .line 34
    .line 35
    iput-object v7, v0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownLayout:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/narvii/scene/quiz/SceneQuizView;->access$600(Lcom/narvii/scene/quiz/SceneQuizView;Landroid/view/View;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizView$1;->this$0:Lcom/narvii/scene/quiz/SceneQuizView;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/narvii/scene/quiz/SceneQuizView;->countDownTimer:Landroid/os/CountDownTimer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 50
    return-void
.end method
