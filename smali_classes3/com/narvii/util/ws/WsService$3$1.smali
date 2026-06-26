.class Lcom/narvii/util/ws/WsService$3$1;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService$3;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/ws/WsService$3;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService$3;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$3$1;->this$1:Lcom/narvii/util/ws/WsService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$3$1;->this$1:Lcom/narvii/util/ws/WsService$3;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$3;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-nez v0, :cond_0

    const-string v0, "websocket"

    const-string v1, "network connected.."

    .line 212
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$3$1;->this$1:Lcom/narvii/util/ws/WsService$3;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$3;->this$0:Lcom/narvii/util/ws/WsService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/util/ws/WsService;->failCount:I

    const-wide/16 v2, 0xc8

    .line 214
    iput-wide v2, v0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 215
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    :cond_0
    return-void
.end method
