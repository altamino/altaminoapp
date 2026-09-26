.class Lcom/narvii/util/ws/WsService$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$3$1;->this$1:Lcom/narvii/util/ws/WsService$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$3$1;->this$1:Lcom/narvii/util/ws/WsService$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$3;->this$0:Lcom/narvii/util/ws/WsService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "websocket"

    .line 12
    .line 13
    const-string v1, "network connected.."

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$3$1;->this$1:Lcom/narvii/util/ws/WsService$3;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$3;->this$0:Lcom/narvii/util/ws/WsService;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    iput v1, v0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 24
    .line 25
    const-wide/16 v2, 0xc8

    .line 26
    .line 27
    iput-wide v2, v0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 31
    :cond_0
    return-void
.end method
