.class Lcom/narvii/util/ws/WsService$8;
.super Lokhttp3/WebSocketListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ws/WsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 6
    return-void
.end method

.method private postReconnect(Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lokhttp3/Response;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 7
    move-result-object p4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 11
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    move-object v7, p4

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    :cond_0
    move-object v7, v0

    .line 15
    .line 16
    :goto_0
    if-eqz v7, :cond_1

    .line 17
    .line 18
    .line 19
    const-string/jumbo p4, "{"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result p4

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const-class p4, Lcom/narvii/model/api/ApiResponse;

    .line 28
    .line 29
    .line 30
    invoke-static {v7, p4}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p4

    .line 32
    move-object v0, p4

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/api/ApiResponse;

    .line 35
    :cond_1
    move-object v6, v0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/ws/WsService;->e()Landroid/os/Handler;

    .line 39
    move-result-object p4

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/util/ws/WsService$8$3;

    .line 42
    move-object v1, v0

    .line 43
    move-object v2, p0

    .line 44
    move-object v3, p1

    .line 45
    move v4, p2

    .line 46
    move-object v5, p3

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ws/WsService$8$3;-><init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lcom/narvii/model/api/ApiResponse;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 p3, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/narvii/util/ws/WsService$8;->postReconnect(Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lokhttp3/Response;)V

    .line 6
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    const-string/jumbo p1, "websocket"

    .line 10
    .line 11
    const-string p2, "closing"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/narvii/util/ws/WsService$8;->postReconnect(Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lokhttp3/Response;)V

    .line 5
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/narvii/util/ws/WsService;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ws/WsService$8$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/util/ws/WsService$8$2;-><init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recv: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "websocket"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/ws/WsService;->e()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/util/ws/WsService$8$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/util/ws/WsService$8$1;-><init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;Lokhttp3/Response;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method valid(Lokhttp3/WebSocket;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method
