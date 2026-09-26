.class Lcom/narvii/util/ws/WsService$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/ws/WsService$8$1;->val$webSocket:Lokhttp3/WebSocket;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/ws/WsService$8$1;->val$response:Lokhttp3/Response;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->val$webSocket:Lokhttp3/WebSocket;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "websocket"

    .line 14
    .line 15
    const-string v1, "opened"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    iput v1, v0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 26
    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    iput-wide v1, v0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->val$webSocket:Lokhttp3/WebSocket;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/util/ws/WsRequest;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$1;->val$response:Lokhttp3/Response;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService;->onWsOpen(Lokhttp3/Response;)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$1;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/narvii/util/ws/WsService;->a(Lcom/narvii/util/ws/WsService;)V

    .line 95
    :cond_1
    return-void
.end method
