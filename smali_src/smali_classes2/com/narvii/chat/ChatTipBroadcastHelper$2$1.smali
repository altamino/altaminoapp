.class Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "tip view is null"

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->a(Lcom/narvii/chat/ChatTipBroadcastHelper;)Lcom/narvii/tipping/model/TipLog;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->c(Lcom/narvii/chat/ChatTipBroadcastHelper;Lcom/narvii/tipping/model/TipLog;)I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->applyTipCoins(I)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->a(Lcom/narvii/chat/ChatTipBroadcastHelper;)Lcom/narvii/tipping/model/TipLog;

    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    iput v0, p1, Lcom/narvii/tipping/model/TipLog;->totalTippedCoins:I

    .line 43
    .line 44
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    iput-wide v0, p1, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$2;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 57
    .line 58
    iget-object v0, p1, Lcom/narvii/chat/ChatTipBroadcastHelper;->hideRunnable:Ljava/lang/Runnable;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper;->tipLogList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    const-wide/16 v1, 0xbb8

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_1
    const-wide/16 v1, 0x3e8

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 75
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
