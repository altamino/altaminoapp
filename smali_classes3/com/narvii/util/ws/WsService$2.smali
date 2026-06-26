.class Lcom/narvii/util/ws/WsService$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 179
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.SID_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object p2, p1, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/narvii/util/ws/WsService;->access$000(Lcom/narvii/util/ws/WsService;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "websocket"

    const-string p2, "network connected.."

    .line 186
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    iput v0, p1, Lcom/narvii/util/ws/WsService;->failCount:I

    const-wide/16 v1, 0xc8

    .line 188
    iput-wide v1, p1, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 189
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    :cond_1
    :goto_0
    return-void
.end method
