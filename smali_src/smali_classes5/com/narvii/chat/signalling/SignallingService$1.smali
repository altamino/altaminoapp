.class Lcom/narvii/chat/signalling/SignallingService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService$1;->this$0:Lcom/narvii/chat/signalling/SignallingService;

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
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService$1;->this$0:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1, v0}, Lcom/narvii/util/ws/WsService;->setKeepAlive(Z)V

    .line 19
    return-void
.end method
