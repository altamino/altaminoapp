.class Lcom/narvii/util/ws/WsService$8$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/ws/WsService$8$3;->val$webSocket:Lokhttp3/WebSocket;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/util/ws/WsService$8$3;->val$t:Ljava/lang/Throwable;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBody:Lcom/narvii/model/api/ApiResponse;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBodyStr:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$3;->val$webSocket:Lokhttp3/WebSocket;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v1, "fail: "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$3;->val$t:Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    const-string v0, "closed"

    .line 37
    .line 38
    .line 39
    :goto_0
    const-string/jumbo v1, "websocket"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBody:Lcom/narvii/model/api/ApiResponse;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "response: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBodyStr:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$responseBody:Lcom/narvii/model/api/ApiResponse;

    .line 76
    .line 77
    iget v0, v0, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    .line 78
    .line 79
    const/16 v3, 0x69

    .line 80
    .line 81
    if-ne v0, v3, :cond_1

    .line 82
    const/4 v2, 0x1

    .line 83
    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 91
    .line 92
    iget-boolean v3, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 93
    .line 94
    if-eqz v3, :cond_2

    .line 95
    .line 96
    sget-object v3, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_2
    sget-object v3, Lcom/narvii/util/ws/WsError;->CONNECT_FAIL:Lcom/narvii/util/ws/WsError;

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/ws/WsService;->fail(Lcom/narvii/util/ws/WsError;Z)V

    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 107
    .line 108
    iget-boolean v3, v0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 109
    .line 110
    if-eqz v3, :cond_4

    .line 111
    .line 112
    iget-object v3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$t:Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v3}, Lcom/narvii/util/ws/WsService;->b(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    :cond_4
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 120
    .line 121
    iget-boolean v3, p0, Lcom/narvii/util/ws/WsService$8$3;->val$fail:Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/ws/WsService;->reconnect(ZZ)V

    .line 125
    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    const-string v0, "105 re-login.."

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$3;->this$1:Lcom/narvii/util/ws/WsService$8;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    .line 138
    .line 139
    new-instance v1, Lcom/narvii/util/ws/WsService$8$3$1;

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, p0}, Lcom/narvii/util/ws/WsService$8$3$1;-><init>(Lcom/narvii/util/ws/WsService$8$3;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/narvii/account/AccountService;->relogin(Lcom/narvii/util/Callback;)V

    .line 146
    :cond_5
    return-void
.end method
