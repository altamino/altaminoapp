.class Lcom/narvii/util/ws/WsService$2;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.SID_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    .line 34
    .line 35
    iget-object p2, p1, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 36
    .line 37
    if-nez p2, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/util/ws/WsService;->d(Lcom/narvii/util/ws/WsService;)Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    .line 46
    const-string/jumbo p1, "websocket"

    .line 47
    .line 48
    const-string p2, "network connected.."

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$2;->this$0:Lcom/narvii/util/ws/WsService;

    .line 54
    .line 55
    iput v0, p1, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 56
    .line 57
    const-wide/16 v1, 0xc8

    .line 58
    .line 59
    iput-wide v1, p1, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 63
    :cond_1
    :goto_0
    return-void
.end method
