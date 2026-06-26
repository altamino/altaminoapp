.class Lcom/narvii/chat/ChatTipBroadcastHelper$1;
.super Ljava/lang/Object;
.source "ChatTipBroadcastHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatTipBroadcastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatTipBroadcastHelper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    .line 47
    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    iget-object v0, v0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    const v1, 0x7f01002a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    new-instance v1, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
