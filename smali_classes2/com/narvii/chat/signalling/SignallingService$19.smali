.class Lcom/narvii/chat/signalling/SignallingService$19;
.super Ljava/lang/Object;
.source "SignallingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/signalling/SignallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/signalling/SignallingService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 735
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 736
    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 737
    iget-wide v5, v4, Lcom/narvii/chat/signalling/SignallingChannel;->lostConnectionTime:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x493e0

    add-long/2addr v5, v7

    cmp-long v7, v5, v0

    if-gez v7, :cond_0

    .line 739
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unjoin thread channel due to connection lost timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 745
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService$19;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v2, v2, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v3, Lcom/narvii/chat/signalling/SignallingService$19$1;

    invoke-direct {v3, p0, v1}, Lcom/narvii/chat/signalling/SignallingService$19$1;-><init>(Lcom/narvii/chat/signalling/SignallingService$19;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {v2, v3}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto :goto_1

    :cond_3
    return-void
.end method
