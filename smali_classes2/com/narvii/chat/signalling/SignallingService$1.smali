.class Lcom/narvii/chat/signalling/SignallingService$1;
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

    .line 76
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$1;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$1;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/util/ws/WsService;->setKeepAlive(Z)V

    return-void
.end method
