.class Lcom/narvii/chat/ChatTipBroadcastHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, v0, Lcom/narvii/chat/ChatTipBroadcastHelper;->startHideRunnableTime:J

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    const v1, 0x7f010038

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-wide/16 v1, 0x12c

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper$1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    :cond_0
    return-void
.end method
