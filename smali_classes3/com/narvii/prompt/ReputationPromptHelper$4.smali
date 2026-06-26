.class Lcom/narvii/prompt/ReputationPromptHelper$4;
.super Ljava/lang/Object;
.source "ReputationPromptHelper.java"

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

    .line 123
    iput-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    iput-object p2, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->val$removeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    .line 134
    iget-boolean p1, p1, Lcom/narvii/prompt/ReputationPromptHelper;->isRankingTitleAnimEnd:Z

    if-eqz p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->val$removeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x514

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->this$0:Lcom/narvii/prompt/ReputationPromptHelper;

    iput-boolean p2, p1, Lcom/narvii/prompt/ReputationPromptHelper;->isPopUpHold:Z

    .line 129
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/prompt/ReputationPromptHelper$4;->val$removeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return p2
.end method
