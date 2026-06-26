.class Lcom/narvii/util/ws/WsService$8;
.super Lokhttp3/WebSocketListener;
.source "WsService.java"


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

    .line 466
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method

.method private postReconnect(Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lokhttp3/Response;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 595
    :try_start_0
    invoke-virtual {p4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p4

    invoke-virtual {p4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, p4

    goto :goto_0

    :catch_0
    :cond_0
    move-object v7, v0

    :goto_0
    if-eqz v7, :cond_1

    const-string p4, "{"

    .line 600
    invoke-virtual {v7, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-class p4, Lcom/narvii/model/api/ApiResponse;

    invoke-static {v7, p4}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/narvii/model/api/ApiResponse;

    :cond_1
    move-object v6, v0

    .line 601
    invoke-static {}, Lcom/narvii/util/ws/WsService;->access$200()Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/narvii/util/ws/WsService$8$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/ws/WsService$8$3;-><init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lcom/narvii/model/api/ApiResponse;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 583
    invoke-direct {p0, p1, p3, p2, p2}, Lcom/narvii/util/ws/WsService$8;->postReconnect(Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lokhttp3/Response;)V

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    .line 576
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "websocket"

    const-string p2, "closing"

    .line 577
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    const/4 v0, 0x1

    .line 588
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/narvii/util/ws/WsService$8;->postReconnect(Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lokhttp3/Response;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 2

    .line 496
    invoke-static {}, Lcom/narvii/util/ws/WsService;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ws/WsService$8$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/util/ws/WsService$8$2;-><init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 1

    .line 569
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
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

    const-string p2, "websocket"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/narvii/util/ws/WsService;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/ws/WsService$8$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/util/ws/WsService$8$1;-><init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;Lokhttp3/Response;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method valid(Lokhttp3/WebSocket;)Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
