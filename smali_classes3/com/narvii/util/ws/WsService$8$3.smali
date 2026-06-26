.class Lcom/narvii/util/ws/WsService$8$3;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService$8;->postReconnect(Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/ws/WsService$8;

.field final synthetic val$fail:Z

.field final synthetic val$responseBody:Lcom/narvii/model/api/ApiResponse;

.field final synthetic val$responseBodyStr:Ljava/lang/String;

.field final synthetic val$t:Ljava/lang/Throwable;

.field final synthetic val$webSocket:Lokhttp3/WebSocket;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;ZLjava/lang/Throwable;Lcom/narvii/model/api/ApiResponse;Ljava/lang/String;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iput-object p2, p0, Lcom/narvii/util/ws/WsService$8$3;->val$webSocket:Lokhttp3/WebSocket;

    iput-boolean p3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    iput-object p4, p0, Lcom/narvii/util/ws/WsService$8$3;->val$t:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBody:Lcom/narvii/model/api/ApiResponse;

    iput-object p6, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBodyStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 604
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$3;->val$webSocket:Lokhttp3/WebSocket;

    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 605
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$3;->val$t:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "closed"

    :goto_0
    const-string v1, "websocket"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBody:Lcom/narvii/model/api/ApiResponse;

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBodyStr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBody:Lcom/narvii/model/api/ApiResponse;

    iget v0, v0, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    const/16 v3, 0x69

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 613
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    if-eqz v0, :cond_3

    .line 614
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-boolean v3, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/narvii/util/ws/WsError;->CONNECT_FAIL:Lcom/narvii/util/ws/WsError;

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/ws/WsService;->fail(Lcom/narvii/util/ws/WsError;Z)V

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-boolean v3, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz v3, :cond_4

    .line 618
    iget-object v3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$t:Ljava/lang/Throwable;

    invoke-static {v0, v3}, Lcom/narvii/util/ws/WsService;->access$400(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    .line 621
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-boolean v3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/ws/WsService;->reconnect(ZZ)V

    if-eqz v2, :cond_5

    const-string v0, "105 re-login.."

    .line 624
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    new-instance v1, Lcom/narvii/util/ws/WsService$8$3$1;

    invoke-direct {v1, p0}, Lcom/narvii/util/ws/WsService$8$3$1;-><init>(Lcom/narvii/util/ws/WsService$8$3;)V

    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    :cond_5
    return-void
.end method
