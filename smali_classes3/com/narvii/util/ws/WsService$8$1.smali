.class Lcom/narvii/util/ws/WsService$8$1;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService$8;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/ws/WsService$8;

.field final synthetic val$response:Lokhttp3/Response;

.field final synthetic val$webSocket:Lokhttp3/WebSocket;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iput-object p2, p0, Lcom/narvii/util/ws/WsService$8$1;->val$webSocket:Lokhttp3/WebSocket;

    iput-object p3, p0, Lcom/narvii/util/ws/WsService$8$1;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->val$webSocket:Lokhttp3/WebSocket;

    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "websocket"

    const-string v1, "opened"

    .line 477
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/util/ws/WsService;->failCount:I

    const-wide/16 v1, 0x0

    .line 479
    iput-wide v1, v0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    const/4 v1, 0x1

    .line 480
    iput-boolean v1, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->val$webSocket:Lokhttp3/WebSocket;

    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-boolean v1, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz v1, :cond_0

    .line 483
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsRequest;

    .line 484
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v1, v1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->val$response:Lokhttp3/Response;

    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService;->onWsOpen(Lokhttp3/Response;)V

    .line 488
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-static {v0}, Lcom/narvii/util/ws/WsService;->access$100(Lcom/narvii/util/ws/WsService;)V

    :cond_1
    return-void
.end method
