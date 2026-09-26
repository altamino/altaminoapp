.class public Lcom/narvii/util/ws/WsService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/ws/WsService$WsListener;
    }
.end annotation


# static fields
.field private static final PING_INTERVAL:I = 0xea60

.field public static final PING_SERVER_INTERVAL:I = 0xea60

.field static final RECONNECT_AFTER:[I

.field public static final REQUEST_TIMEOUT:I = 0x3a98

.field public static final TAG:Ljava/lang/String; = "websocket"

.field private static final WEBSOCKET_URL:Ljava/lang/String; = "wss://ws.altamino.top/"

.field private static final handler:Landroid/os/Handler;


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field auidService:Lcom/narvii/account/AuidService;

.field connect:Z

.field connectivityManager:Landroid/net/ConnectivityManager;

.field final contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field context:Lcom/narvii/app/NVContext;

.field cuid:Ljava/lang/String;

.field failCount:I

.field keepAlive:Z

.field final lang:Ljava/lang/String;

.field lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field public final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/util/ws/WsService$WsListener;",
            ">;"
        }
    .end annotation
.end field

.field private networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field okhttp:Lokhttp3/OkHttpClient;

.field final pendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/ws/WsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final pingServerRunnable:Ljava/lang/Runnable;

.field private pingStarted:Z

.field prevToastTime:J

.field private receiver:Landroid/content/BroadcastReceiver;

.field private receiverAccount:Landroid/content/BroadcastReceiver;

.field receiverRegistered:Z

.field reconnectAfter:J

.field final requestTimeout:Ljava/lang/Runnable;

.field final runningRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/ws/WsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private stopDelayed:Ljava/lang/Runnable;

.field final updateWs:Ljava/lang/Runnable;

.field userAgent:Ljava/lang/String;

.field public ws:Lokhttp3/WebSocket;

.field wsListener:Lokhttp3/WebSocketListener;

.field public wsOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x1388

    .line 3
    .line 4
    const/16 v1, 0x2710

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const/16 v3, 0x3e8

    .line 8
    .line 9
    const/16 v4, 0x7d0

    .line 10
    .line 11
    .line 12
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/util/ws/WsService;->RECONNECT_AFTER:[I

    .line 16
    .line 17
    new-instance v0, Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    sput-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/LinkedList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/util/ws/WsService$1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$1;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->receiverAccount:Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/util/ws/WsService$2;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$2;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->receiver:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    new-instance v0, Lcom/narvii/util/ws/WsService$4;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$4;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/util/ws/WsService$5;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$5;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/util/ws/WsService$7;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$7;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->requestTimeout:Ljava/lang/Runnable;

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/util/ws/WsService$8;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$8;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 65
    .line 66
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->wsListener:Lokhttp3/WebSocketListener;

    .line 67
    const/4 v0, 0x0

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    .line 70
    .line 71
    new-instance v1, Lcom/narvii/util/ws/WsService$12;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/narvii/util/ws/WsService$12;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 75
    .line 76
    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    .line 79
    .line 80
    const-string v1, "account"

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    .line 89
    .line 90
    const-string v1, "auid"

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    check-cast v1, Lcom/narvii/account/AuidService;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->auidService:Lcom/narvii/account/AuidService;

    .line 99
    .line 100
    const-string v1, "content_language"

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    const-string v1, "connectivity"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 131
    .line 132
    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    move-result v2

    .line 145
    .line 146
    if-nez v2, :cond_1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    move-result v2

    .line 155
    .line 156
    if-eqz v2, :cond_0

    .line 157
    goto :goto_0

    .line 158
    .line 159
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v1, "-"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    :goto_0
    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->lang:Ljava/lang/String;

    .line 180
    goto :goto_1

    .line 181
    :cond_1
    const/4 p1, 0x0

    .line 182
    .line 183
    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->lang:Ljava/lang/String;

    .line 184
    .line 185
    :goto_1
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    .line 186
    .line 187
    .line 188
    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 189
    .line 190
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 191
    .line 192
    const-wide/16 v2, 0xf

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    const-wide/16 v2, 0x8

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 202
    move-result-object p1

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    .line 209
    const-wide/32 v1, 0xea60

    .line 210
    .line 211
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 219
    move-result-object p1

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    .line 223
    move-result-object p1

    .line 224
    .line 225
    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->okhttp:Lokhttp3/OkHttpClient;

    .line 226
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->dispatchOnConnect()V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;->dispatchOnDisconnect(Ljava/lang/Throwable;)V

    return-void
.end method

.method private beginPingServer()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/util/ws/WsService;->pingServer()V

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    const-wide/32 v1, 0xea60

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 27
    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;->dispatchWsError(Lcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/util/ws/WsService;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->hasConnectivity()Z

    move-result p0

    return p0
.end method

.method private dispatchOnConnect()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->beginPingServer()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/util/ws/WsService$9;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/util/ws/WsService$9;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method private dispatchOnDisconnect(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->stopPingServer()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/util/ws/WsService$10;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lcom/narvii/util/ws/WsService$10;-><init>(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method private dispatchWsError(Lcom/narvii/util/ws/WsError;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->stopPingServer()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/util/ws/WsService$11;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/narvii/util/ws/WsService$11;-><init>(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 18
    return-void
.end method

.method static bridge synthetic e()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private hasConnectivity()Z
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method private setBroadcastRegister(Z)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->receiverRegistered:Z

    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    new-instance v2, Landroid/content/IntentFilter;

    .line 13
    .line 14
    const-string v3, "com.narvii.action.SID_CHANGED"

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/util/ws/WsService$3;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$3;-><init>(Lcom/narvii/util/ws/WsService;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 32
    .line 33
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->receiver:Landroid/content/BroadcastReceiver;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 75
    .line 76
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/util/ws/WsService;->receiverRegistered:Z

    .line 77
    :cond_3
    return-void
.end method

.method private stopPingServer()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method


# virtual methods
.method fail(Lcom/narvii/util/ws/WsError;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    .line 5
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 6
    .line 7
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 11
    move-result v3

    .line 12
    .line 13
    if-nez v3, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 22
    .line 23
    iget-object v4, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0, v3}, Lcom/narvii/util/ws/WsService;->isCriticalRequest(Lcom/narvii/util/ws/WsRequest;)Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move p2, v0

    .line 46
    .line 47
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-nez v3, :cond_7

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 62
    .line 63
    iget-object v4, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 64
    .line 65
    if-eqz v4, :cond_6

    .line 66
    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_6
    invoke-virtual {p0, v3}, Lcom/narvii/util/ws/WsService;->isCriticalRequest(Lcom/narvii/util/ws/WsRequest;)Z

    .line 79
    move-result v3

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    add-int/lit8 p2, p2, 0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_7
    if-eqz v1, :cond_8

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v3

    .line 95
    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 105
    .line 106
    .line 107
    invoke-interface {v3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 108
    goto :goto_2

    .line 109
    .line 110
    .line 111
    :cond_8
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;->dispatchWsError(Lcom/narvii/util/ws/WsError;)V

    .line 112
    .line 113
    if-gtz v2, :cond_9

    .line 114
    .line 115
    if-lez p2, :cond_b

    .line 116
    .line 117
    .line 118
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 119
    move-result-wide v1

    .line 120
    .line 121
    iget-wide v3, p0, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    .line 122
    .line 123
    if-lez p2, :cond_a

    .line 124
    .line 125
    const/16 p2, 0x1f40

    .line 126
    goto :goto_3

    .line 127
    .line 128
    :cond_a
    const/16 p2, 0x3a98

    .line 129
    :goto_3
    int-to-long v5, p2

    .line 130
    add-long/2addr v3, v5

    .line 131
    .line 132
    cmp-long p2, v1, v3

    .line 133
    .line 134
    if-lez p2, :cond_b

    .line 135
    .line 136
    iget-object p2, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    .line 137
    .line 138
    .line 139
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 152
    .line 153
    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    .line 154
    :cond_b
    return-void
.end method

.method public getConnectStatus()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 11
    sub-long/2addr v0, v2

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 17
    move-result-wide v0

    .line 18
    long-to-int v0, v0

    .line 19
    return v0

    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/4 v0, 0x2

    .line 25
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    return v0
.end method

.method protected getWsUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wss://ws.altamino.top/"

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCriticalRequest(Lcom/narvii/util/ws/WsRequest;)Z
    .locals 1

    .line 1
    .line 2
    iget p1, p1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x67

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x69

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x6c

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x70

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x7e

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    const/16 v0, 0xc8

    .line 29
    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->keepAlive:Z

    return v0
.end method

.method protected onWsOpen(Lokhttp3/Response;)V
    .locals 0

    return-void
.end method

.method protected pingServer()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x74

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "threadChannelUserInfoList"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 29
    return-void
.end method

.method reconnect(ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget p1, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    sget-object p1, Lcom/narvii/util/ws/WsService;->RECONNECT_AFTER:[I

    .line 23
    array-length p2, p1

    .line 24
    .line 25
    add-int/lit8 p2, p2, -0x1

    .line 26
    .line 27
    aget p1, p1, p2

    .line 28
    int-to-long p1, p1

    .line 29
    add-long/2addr v1, p1

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    sget-object p1, Lcom/narvii/util/ws/WsService;->RECONNECT_AFTER:[I

    .line 35
    array-length p2, p1

    .line 36
    .line 37
    add-int/lit8 p2, p2, -0x1

    .line 38
    .line 39
    iget v3, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 43
    move-result p2

    .line 44
    .line 45
    aget p1, p1, p2

    .line 46
    int-to-long p1, p1

    .line 47
    add-long/2addr v1, p1

    .line 48
    .line 49
    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 53
    return-void
.end method

.method public sendRequest(Lcom/narvii/util/ws/WsRequest;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    const-string v0, "WsService.sendRequest() should call on main thread"

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/ws/WsService$6;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/narvii/util/ws/WsService$6;-><init>(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsRequest;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    iget-wide v2, p1, Lcom/narvii/util/ws/WsRequest;->startTime:J

    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    iput-wide v2, p1, Lcom/narvii/util/ws/WsRequest;->startTime:J

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->requestTimeout:Ljava/lang/Runnable;

    .line 43
    .line 44
    const-wide/16 v2, 0x3a98

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/util/ws/WsMessage;->genId()V

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v1, "send: "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "websocket"

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    iget-object v0, p1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    sget-object v1, Lcom/narvii/util/ws/WsError;->NO_CONNECTION:Lcom/narvii/util/ws/WsError;

    .line 115
    .line 116
    .line 117
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_4
    :goto_0
    return-void
.end method

.method public sendRequestDirectly(Lcom/narvii/util/ws/WsRequest;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/util/ws/WsService;->keepAlive:Z

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 7
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->connect:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->receiverAccount:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    new-instance v2, Landroid/content/IntentFilter;

    .line 27
    .line 28
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 35
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->connect:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/util/ws/WsService;->receiverAccount:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/narvii/util/ws/WsService;->setBroadcastRegister(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 17
    return-void
.end method

.method public stopAfter(I)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    .line 10
    int-to-long v2, p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    return-void
.end method

.method updateWs(Z)Z
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/narvii/util/ws/WsService;->connect:Z

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/narvii/util/ws/WsService;->keepAlive:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v3, v1

    .line 23
    .line 24
    :goto_1
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v5, "websocket"

    .line 28
    const/4 v6, 0x0

    .line 29
    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    iget-boolean v7, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 33
    .line 34
    const/16 v8, 0x3e8

    .line 35
    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v4, v8, v6}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 40
    .line 41
    iput-object v6, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v8, "disconnect "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    iget-object v8, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    .line 65
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_2
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result v4

    .line 73
    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v8, v6}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 80
    .line 81
    iput-object v6, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 82
    .line 83
    iput-boolean v2, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 84
    .line 85
    iput v2, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 86
    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .line 89
    iput-wide v8, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string v8, "reconnect "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    iget-object v8, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v8, "->"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v4

    .line 117
    .line 118
    .line 119
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 122
    .line 123
    if-nez v4, :cond_4

    .line 124
    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v6}, Lcom/narvii/util/ws/WsService;->dispatchOnDisconnect(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    :cond_4
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 133
    .line 134
    if-nez v4, :cond_f

    .line 135
    .line 136
    if-eqz v3, :cond_f

    .line 137
    .line 138
    sget-object v4, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    .line 139
    .line 140
    iget-object v7, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 147
    move-result-wide v7

    .line 148
    .line 149
    if-nez p1, :cond_5

    .line 150
    .line 151
    iget-wide v9, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 152
    .line 153
    cmp-long p1, v7, v9

    .line 154
    .line 155
    if-gez p1, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    .line 158
    sub-long/2addr v9, v7

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, p1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    const-string v0, "reconnect in "

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    iget-wide v9, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 174
    sub-long/2addr v9, v7

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v0, "ms"

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-static {v5, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    goto/16 :goto_5

    .line 192
    .line 193
    .line 194
    :cond_5
    invoke-static {}, La0/b;->q()Z

    .line 195
    move-result p1

    .line 196
    .line 197
    if-eqz p1, :cond_e

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/narvii/util/ws/WsService;->getWsUrl()Ljava/lang/String;

    .line 201
    move-result-object p1

    .line 202
    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    const-string v7, "connecting "

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v0, " ["

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v0, "]"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    .line 234
    invoke-static {v5, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, La0/b;->k()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    sget-object v4, Lcom/narvii/app/NVApplication;->FPR:Ljava/lang/String;

    .line 241
    .line 242
    if-nez v4, :cond_7

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string/jumbo v5, "|"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 260
    move-result-wide v7

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v4

    .line 268
    .line 269
    const/16 v5, 0x3f

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 273
    move-result v5

    .line 274
    const/4 v7, -0x1

    .line 275
    .line 276
    if-ne v5, v7, :cond_6

    .line 277
    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string p1, "?signbody="

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    .line 296
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object p1

    .line 301
    goto :goto_3

    .line 302
    .line 303
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string p1, "&signbody="

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object p1

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    :goto_3
    sget-object v5, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 331
    move-result-object v4

    .line 332
    .line 333
    iget-object v5, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    .line 334
    .line 335
    .line 336
    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 337
    move-result-object v5

    .line 338
    .line 339
    sget v7, Lcom/narvii/lib/R$string;->rsc:I

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    move-result-object v5

    .line 344
    .line 345
    iget-object v7, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    .line 346
    .line 347
    .line 348
    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 349
    move-result-object v7

    .line 350
    .line 351
    sget v8, Lcom/narvii/lib/R$string;->rsv:I

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 355
    move-result-object v7

    .line 356
    .line 357
    .line 358
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 359
    move-result v7

    .line 360
    .line 361
    .line 362
    invoke-static {v4, v5, v7}, Lc/f/b/e/q5;->f([BLjava/lang/String;I)Ljava/lang/String;

    .line 363
    move-result-object v4

    .line 364
    goto :goto_4

    .line 365
    :cond_7
    move-object v4, v6

    .line 366
    .line 367
    :goto_4
    iget-object v5, p0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 371
    move-result-object v5

    .line 372
    .line 373
    const-string v7, "sid"

    .line 374
    .line 375
    .line 376
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    move-result-object v5

    .line 378
    .line 379
    iget-object v6, p0, Lcom/narvii/util/ws/WsService;->userAgent:Ljava/lang/String;

    .line 380
    .line 381
    if-nez v6, :cond_8

    .line 382
    .line 383
    iget-object v6, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    .line 384
    .line 385
    .line 386
    invoke-static {v6}, Lcom/narvii/util/http/ApiService;->userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 387
    move-result-object v6

    .line 388
    .line 389
    iput-object v6, p0, Lcom/narvii/util/ws/WsService;->userAgent:Ljava/lang/String;

    .line 390
    .line 391
    :cond_8
    new-instance v6, Lokhttp3/Request$Builder;

    .line 392
    .line 393
    .line 394
    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v6, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 398
    move-result-object p1

    .line 399
    .line 400
    const-string v6, "User-Agent"

    .line 401
    .line 402
    iget-object v7, p0, Lcom/narvii/util/ws/WsService;->userAgent:Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v6, v7}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 406
    move-result-object p1

    .line 407
    .line 408
    sget-object v6, La0/a;->l:Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v6, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 412
    move-result-object p1

    .line 413
    .line 414
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->auidService:Lcom/narvii/account/AuidService;

    .line 415
    .line 416
    if-eqz v0, :cond_9

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/narvii/account/AuidService;->getAuid()Ljava/lang/String;

    .line 420
    move-result-object v0

    .line 421
    .line 422
    .line 423
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 424
    move-result v6

    .line 425
    .line 426
    if-nez v6, :cond_9

    .line 427
    .line 428
    const-string v6, "AUID"

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v6, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 432
    .line 433
    :cond_9
    if-eqz v4, :cond_a

    .line 434
    .line 435
    sget-object v0, La0/a;->j:Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v0, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 439
    .line 440
    :cond_a
    if-eqz v5, :cond_b

    .line 441
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    const-string v4, "sid="

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    move-result-object v0

    .line 458
    .line 459
    const-string v4, "NDCAUTH"

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 463
    .line 464
    :cond_b
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 465
    .line 466
    if-eqz v0, :cond_c

    .line 467
    .line 468
    const-string v4, "NDCLANG"

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 472
    move-result-object v0

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 476
    .line 477
    :cond_c
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->lang:Ljava/lang/String;

    .line 478
    .line 479
    if-eqz v0, :cond_d

    .line 480
    .line 481
    const-string v4, "Accept-Language"

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 485
    .line 486
    :cond_d
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->okhttp:Lokhttp3/OkHttpClient;

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 490
    move-result-object p1

    .line 491
    .line 492
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->wsListener:Lokhttp3/WebSocketListener;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, p1, v4}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    .line 496
    move-result-object p1

    .line 497
    .line 498
    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 499
    goto :goto_5

    .line 500
    .line 501
    :cond_e
    const-string p1, "dci not ready, reconnect later"

    .line 502
    .line 503
    .line 504
    invoke-static {v5, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    iget-object p1, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    .line 507
    .line 508
    const-wide/16 v5, 0xc8

    .line 509
    .line 510
    .line 511
    invoke-virtual {v4, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    .line 513
    .line 514
    :cond_f
    :goto_5
    invoke-direct {p0, v3}, Lcom/narvii/util/ws/WsService;->setBroadcastRegister(Z)V

    .line 515
    .line 516
    iget-object p1, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 517
    .line 518
    if-eqz p1, :cond_10

    .line 519
    goto :goto_6

    .line 520
    :cond_10
    move v1, v2

    .line 521
    :goto_6
    return v1
.end method
