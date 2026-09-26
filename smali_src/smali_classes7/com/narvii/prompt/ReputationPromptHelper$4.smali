.class Lcom/narvii/prompt/ReputationPromptHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/ReputationPromptHelper;->showReputationGainedView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prompt/ReputationPromptHelper;

.field final synthetic val$removeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/narvii/prompt/ReputationPromptHelper;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->val$removeRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    const/4 v0, 0x3

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p1, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    .line 19
    .line 20
    iget-boolean p1, p1, Lcom/narvii/prompt/ReputationPromptHelper;->isRankingTitleAnimEnd:Z

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->val$removeRunnable:Ljava/lang/Runnable;

    .line 25
    .line 26
    const-wide/16 v0, 0x514

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 33
    .line 34
    iput-boolean p2, p1, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    .line 35
    .line 36
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->val$removeRunnable:Ljava/lang/Runnable;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    :cond_2
    :goto_0
    return p2
.end method
