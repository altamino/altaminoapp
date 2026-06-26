.class public Lcom/narvii/util/ws/WsService;
.super Ljava/lang/Object;
.source "WsService.java"


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

.field private static SERVER_INDEX:I = 0x0

.field private static final SERVER_SHUFFLE_LIST:[I

.field public static final TAG:Ljava/lang/String; = "websocket"

.field private static final handler:Landroid/os/Handler;


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field auidService:Lcom/narvii/account/AuidService;

.field connect:Z

.field connectivityManager:Landroid/net/ConnectivityManager;

.field final contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field context:Lcom/narvii/app/NVContext;

.field cuid:Ljava/lang/String;

.field deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

.field failCount:I

.field keepAlive:Z

.field final lang:Ljava/lang/String;

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

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

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-array v3, v1, [I

    .line 70
    sput-object v3, Lcom/narvii/util/ws/WsService;->SERVER_SHUFFLE_LIST:[I

    :goto_1
    if-ge v2, v1, :cond_1

    .line 72
    sget-object v3, Lcom/narvii/util/ws/WsService;->SERVER_SHUFFLE_LIST:[I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 79
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/util/ws/WsService;->RECONNECT_AFTER:[I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e8
        0x7d0
        0x1388
        0x2710
    .end array-data
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    .line 170
    new-instance v0, Lcom/narvii/util/ws/WsService$1;

    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$1;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->receiverAccount:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Lcom/narvii/util/ws/WsService$2;

    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$2;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->receiver:Landroid/content/BroadcastReceiver;

    .line 236
    new-instance v0, Lcom/narvii/util/ws/WsService$4;

    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$4;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    .line 380
    new-instance v0, Lcom/narvii/util/ws/WsService$5;

    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$5;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    .line 426
    new-instance v0, Lcom/narvii/util/ws/WsService$7;

    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$7;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->requestTimeout:Ljava/lang/Runnable;

    .line 466
    new-instance v0, Lcom/narvii/util/ws/WsService$8;

    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$8;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->wsListener:Lokhttp3/WebSocketListener;

    const/4 v0, 0x0

    .line 757
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    .line 774
    new-instance v1, Lcom/narvii/util/ws/WsService$12;

    invoke-direct {v1, p0}, Lcom/narvii/util/ws/WsService$12;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    .line 122
    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    .line 123
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    const-string v1, "auid"

    .line 124
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AuidService;

    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->auidService:Lcom/narvii/account/AuidService;

    const-string v1, "deviceid"

    .line 125
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/deviceid/DeviceIDService;

    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    const-string v1, "content_language"

    .line 126
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/language/ContentLanguageService;

    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 127
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    .line 128
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/narvii/util/ws/WsService;->lang:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->lang:Ljava/lang/String;

    .line 139
    :goto_1
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 140
    invoke-virtual {p1, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    .line 141
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 142
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 143
    invoke-virtual {p1, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->okhttp:Lokhttp3/OkHttpClient;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/ws/WsService;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->hasConnectivity()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->dispatchOnConnect()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 58
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;->dispatchWsError(Lcom/narvii/util/ws/WsError;)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;->dispatchOnDisconnect(Ljava/lang/Throwable;)V

    return-void
.end method

.method private beginPingServer()V
    .locals 3

    .line 760
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 763
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    .line 764
    invoke-virtual {p0}, Lcom/narvii/util/ws/WsService;->pingServer()V

    .line 765
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 766
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private dispatchOnConnect()V
    .locals 2

    .line 724
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->beginPingServer()V

    .line 725
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/util/ws/WsService$9;

    invoke-direct {v1, p0}, Lcom/narvii/util/ws/WsService$9;-><init>(Lcom/narvii/util/ws/WsService;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private dispatchOnDisconnect(Ljava/lang/Throwable;)V
    .locals 2

    .line 734
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->stopPingServer()V

    .line 735
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/util/ws/WsService$10;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/ws/WsService$10;-><init>(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private dispatchWsError(Lcom/narvii/util/ws/WsError;)V
    .locals 2

    .line 744
    sget-object v0, Lcom/narvii/util/ws/WsError;->CONNECTION_LOST:Lcom/narvii/util/ws/WsError;

    if-ne p1, v0, :cond_0

    .line 745
    invoke-direct {p0}, Lcom/narvii/util/ws/WsService;->stopPingServer()V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/util/ws/WsService$11;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/ws/WsService$11;-><init>(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private hasConnectivity()Z
    .locals 1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method private setBroadcastRegister(Z)V
    .locals 5

    .line 198
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->receiverRegistered:Z

    if-eq p1, v0, :cond_4

    const/16 v0, 0x15

    if-eqz p1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/narvii/util/ws/WsService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.narvii.action.SID_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 201
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Lcom/narvii/util/ws/WsService$3;

    invoke-direct {v0, p0}, Lcom/narvii/util/ws/WsService$3;-><init>(Lcom/narvii/util/ws/WsService;)V

    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 223
    :cond_1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/narvii/util/ws/WsService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_3

    .line 229
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 232
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/util/ws/WsService;->receiverRegistered:Z

    :cond_4
    return-void
.end method

.method private stopPingServer()V
    .locals 2

    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->pingStarted:Z

    .line 771
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->pingServerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method fail(Lcom/narvii/util/ws/WsError;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 667
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 668
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 669
    iget-object v4, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    .line 671
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_2
    invoke-virtual {p0, v3}, Lcom/narvii/util/ws/WsService;->isCriticalRequest(Lcom/narvii/util/ws/WsRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 679
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 680
    iget-object v3, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 681
    iget-object v4, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    .line 683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 685
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_6
    invoke-virtual {p0, v3}, Lcom/narvii/util/ws/WsService;->isCriticalRequest(Lcom/narvii/util/ws/WsRequest;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 692
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 693
    iget-object v3, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    invoke-interface {v3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_2

    .line 696
    :cond_8
    invoke-direct {p0, p1}, Lcom/narvii/util/ws/WsService;->dispatchWsError(Lcom/narvii/util/ws/WsError;)V

    if-gtz v2, :cond_9

    if-lez p2, :cond_b

    .line 699
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 700
    iget-wide v3, p0, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    if-lez p2, :cond_a

    const/16 p2, 0x1f40

    goto :goto_3

    :cond_a
    const/16 p2, 0x3a98

    :goto_3
    int-to-long v5, p2

    add-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-lez p2, :cond_b

    .line 701
    iget-object p2, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 702
    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    :cond_b
    return-void
.end method

.method public getConnectStatus()I
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 283
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected getWsHostPrefix()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ws"

    return-object v0
.end method

.method protected getWsUrl()Ljava/lang/String;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 150
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/narvii/util/ws/WsService;->SERVER_SHUFFLE_LIST:[I

    sget v2, Lcom/narvii/util/ws/WsService;->SERVER_INDEX:I

    aget v1, v1, v2

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wss://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/util/ws/WsService;->getWsHostPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    sget v1, Lcom/narvii/util/ws/WsService;->SERVER_INDEX:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/narvii/util/ws/WsService;->SERVER_SHUFFLE_LIST:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lcom/narvii/util/ws/WsService;->SERVER_INDEX:I

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 274
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

    .line 650
    iget p1, p1, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isKeepAlive()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->keepAlive:Z

    return v0
.end method

.method protected onWsOpen(Lokhttp3/Response;)V
    .locals 0

    return-void
.end method

.method protected pingServer()V
    .locals 4

    .line 784
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x74

    .line 785
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 787
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 788
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    const-string/jumbo v3, "threadChannelUserInfoList"

    .line 789
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 790
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 791
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method reconnect(ZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    const/4 v0, 0x0

    .line 709
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz p1, :cond_1

    .line 711
    iget p1, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    if-eqz p2, :cond_0

    .line 714
    sget-object p1, Lcom/narvii/util/ws/WsService;->RECONNECT_AFTER:[I

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    int-to-long p1, p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    goto :goto_0

    .line 716
    :cond_0
    sget-object p1, Lcom/narvii/util/ws/WsService;->RECONNECT_AFTER:[I

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    iget v3, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    aget p1, p1, p2

    int-to-long p1, p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 719
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    return-void
.end method

.method public sendRequest(Lcom/narvii/util/ws/WsRequest;)V
    .locals 5

    .line 388
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "WsService.sendRequest() should call on main thread"

    .line 389
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/narvii/util/ws/WsService$6;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/ws/WsService$6;-><init>(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 399
    :cond_0
    iget-wide v0, p1, Lcom/narvii/util/ws/WsRequest;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/narvii/util/ws/WsRequest;->startTime:J

    .line 401
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->requestTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {p1}, Lcom/narvii/util/ws/WsMessage;->genId()V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "websocket"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 407
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 411
    iget-object v0, p1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 412
    sget-object v1, Lcom/narvii/util/ws/WsError;->NO_CONNECTION:Lcom/narvii/util/ws/WsError;

    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->pendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public sendRequestDirectly(Lcom/narvii/util/ws/WsRequest;)V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    if-eqz v1, :cond_0

    .line 422
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    .line 269
    iput-boolean p1, p0, Lcom/narvii/util/ws/WsService;->keepAlive:Z

    const/4 p1, 0x0

    .line 270
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    return-void
.end method

.method public start()V
    .locals 4

    .line 244
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->connect:Z

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    const-wide/16 v1, 0x0

    .line 247
    iput-wide v1, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 248
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    .line 249
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->receiverAccount:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/narvii/util/ws/WsService;->connect:Z

    .line 254
    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/narvii/util/ws/WsService;->receiverAccount:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    invoke-direct {p0, v0}, Lcom/narvii/util/ws/WsService;->setBroadcastRegister(Z)V

    .line 256
    invoke-virtual {p0, v0}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    return-void
.end method

.method public stopAfter(I)V
    .locals 4

    .line 260
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    sget-object v0, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService;->stopDelayed:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method updateWs(Z)Z
    .locals 11

    .line 295
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 296
    iget-boolean v3, p0, Lcom/narvii/util/ws/WsService;->connect:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/narvii/util/ws/WsService;->keepAlive:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 298
    :goto_1
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    const-string/jumbo v5, "websocket"

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 299
    iget-boolean v7, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    const/16 v8, 0x3e8

    if-nez v3, :cond_2

    .line 302
    invoke-interface {v4, v8, v6}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 303
    iput-object v6, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 304
    iput-boolean v2, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disconnect "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 306
    :cond_2
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 308
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    invoke-interface {v4, v8, v6}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 309
    iput-object v6, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    .line 310
    iput-boolean v2, p0, Lcom/narvii/util/ws/WsService;->wsOpened:Z

    .line 311
    iput v2, p0, Lcom/narvii/util/ws/WsService;->failCount:I

    const-wide/16 v8, 0x0

    .line 312
    iput-wide v8, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reconnect "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "->"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 316
    invoke-direct {p0, v6}, Lcom/narvii/util/ws/WsService;->dispatchOnDisconnect(Ljava/lang/Throwable;)V

    .line 319
    :cond_4
    iput-object v0, p0, Lcom/narvii/util/ws/WsService;->cuid:Ljava/lang/String;

    .line 320
    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-nez v4, :cond_f

    if-eqz v3, :cond_f

    .line 321
    sget-object v4, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    if-nez p1, :cond_5

    .line 323
    iget-wide v9, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    cmp-long p1, v7, v9

    if-gez p1, :cond_5

    .line 324
    sget-object p1, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    sub-long/2addr v9, v7

    invoke-virtual {p1, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reconnect in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/narvii/util/ws/WsService;->reconnectAfter:J

    sub-long/2addr v9, v7

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 327
    :cond_5
    iget-object p1, p0, Lcom/narvii/util/ws/WsService;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    invoke-virtual {p1}, Lcom/narvii/util/deviceid/DeviceIDService;->isReady()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 328
    invoke-virtual {p0}, Lcom/narvii/util/ws/WsService;->getWsUrl()Ljava/lang/String;

    move-result-object p1

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connecting "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    invoke-virtual {v0}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 332
    sget-object v4, Lcom/narvii/app/NVApplication;->FAKE_PRODUCTION:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    .line 334
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_6

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?signbody="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 337
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&signbody="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    :goto_3
    sget-object v5, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/narvii/lib/R$string;->reqssec:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/narvii/lib/R$string;->reqsver:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v5, v7}, Lcom/narvii/util/NativeHelper;->S([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v6

    .line 341
    :goto_4
    iget-object v5, p0, Lcom/narvii/util/ws/WsService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v5}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v7, "sid"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    iget-object v6, p0, Lcom/narvii/util/ws/WsService;->userAgent:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 343
    iget-object v6, p0, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    invoke-static {v6}, Lcom/narvii/util/http/ApiService;->userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/narvii/util/ws/WsService;->userAgent:Ljava/lang/String;

    .line 345
    :cond_8
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    .line 346
    invoke-virtual {v6, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v6, p0, Lcom/narvii/util/ws/WsService;->userAgent:Ljava/lang/String;

    const-string v7, "User-Agent"

    .line 347
    invoke-virtual {p1, v7, v6}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v6, "NDCDEVICEID"

    .line 348
    invoke-virtual {p1, v6, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 349
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->auidService:Lcom/narvii/account/AuidService;

    if-eqz v0, :cond_9

    .line 350
    invoke-virtual {v0}, Lcom/narvii/account/AuidService;->getAuid()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "AUID"

    .line 352
    invoke-virtual {p1, v6, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_9
    if-eqz v4, :cond_a

    const-string v0, "NDC-MSG-SIG"

    .line 356
    invoke-virtual {p1, v0, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_a
    if-eqz v5, :cond_b

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NDCAUTH"

    invoke-virtual {p1, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 361
    :cond_b
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_c

    .line 362
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NDCLANG"

    invoke-virtual {p1, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 364
    :cond_c
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->lang:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v4, "Accept-Language"

    .line 365
    invoke-virtual {p1, v4, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 367
    :cond_d
    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->okhttp:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    iget-object v4, p0, Lcom/narvii/util/ws/WsService;->wsListener:Lokhttp3/WebSocketListener;

    invoke-virtual {v0, p1, v4}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    goto :goto_5

    :cond_e
    const-string p1, "deviceId not ready, reconnect later"

    .line 369
    invoke-static {v5, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object p1, Lcom/narvii/util/ws/WsService;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/util/ws/WsService;->updateWs:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :cond_f
    :goto_5
    invoke-direct {p0, v3}, Lcom/narvii/util/ws/WsService;->setBroadcastRegister(Z)V

    .line 377
    iget-object p1, p0, Lcom/narvii/util/ws/WsService;->ws:Lokhttp3/WebSocket;

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    :goto_6
    return v1
.end method
