.class Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;
.super Ljava/lang/Object;
.source "ChatTipBroadcastHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatTipBroadcastHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatTipBroadcastHelper$2;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 97
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "tip view is null"

    .line 98
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$300(Lcom/narvii/chat/ChatTipBroadcastHelper;)Lcom/narvii/tipping/model/TipLog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$400(Lcom/narvii/chat/ChatTipBroadcastHelper;Lcom/narvii/tipping/model/TipLog;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->applyTipCoins(I)V

    .line 102
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$300(Lcom/narvii/chat/ChatTipBroadcastHelper;)Lcom/narvii/tipping/model/TipLog;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 103
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    .line 104
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    iget-object v0, p1, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0xbb8

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
