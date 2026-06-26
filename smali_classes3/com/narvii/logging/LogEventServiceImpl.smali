.class public Lcom/narvii/logging/LogEventServiceImpl;
.super Ljava/lang/Object;
.source "LogEventServiceImpl.java"

# interfaces
.implements Lcom/narvii/logging/service/LogEventService;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# static fields
.field private static final LOGGING_BUFFER:I = 0x32

.field private static final TAG_LOG_WARNING:Ljava/lang/String; = "logWarning"

.field private static final logArgs:[Ljava/lang/String;

.field private static final logBuf:Ljava/lang/StringBuilder;

.field private static final logColNames:[Ljava/lang/String;

.field private static final logColWidth:[I

.field private static logCounter:I


# instance fields
.field accountReceiver:Landroid/content/BroadcastReceiver;

.field amplitudePerSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field globalStrategyInfo:Ljava/lang/String;

.field lastGetOperatorTime:J

.field private final loggingList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
            ">;"
        }
    .end annotation
.end field

.field networkInfo:Landroid/net/NetworkInfo;

.field nvContext:Lcom/narvii/app/NVContext;

.field operatorName:Ljava/lang/String;

.field prefs:Landroid/content/SharedPreferences;

.field pushTackId:Ljava/lang/String;

.field ws:Lcom/narvii/util/ws/LogWsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/narvii/logging/LogEventServiceImpl;->logBuf:Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    .line 403
    sput-object v1, Lcom/narvii/logging/LogEventServiceImpl;->logArgs:[Ljava/lang/String;

    new-array v1, v0, [I

    .line 405
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/logging/LogEventServiceImpl;->logColWidth:[I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u2605"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "area"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "actType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "actSemantic"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "objectType"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "extraInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "strategyInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pageRefererInfo"

    aput-object v2, v0, v1

    .line 416
    sput-object v0, Lcom/narvii/logging/LogEventServiceImpl;->logColNames:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x20
        0x20
        0x14
        0x1c
        0xc
        0x2e
        0x2e
        0x2e
    .end array-data
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->amplitudePerSessions:Ljava/util/HashMap;

    .line 64
    new-instance v0, Lcom/narvii/logging/LogEventServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/narvii/logging/LogEventServiceImpl$1;-><init>(Lcom/narvii/logging/LogEventServiceImpl;)V

    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->accountReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "logWs"

    .line 82
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/LogWsService;

    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    const-string v0, "prefs"

    .line 83
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 84
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 85
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getNetworkOperatorName()V

    .line 87
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getActiveNetworkInfo()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/narvii/logging/LogEventServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/narvii/logging/LogEventServiceImpl$2;-><init>(Lcom/narvii/logging/LogEventServiceImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->accountReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/logging/LogEventServiceImpl;)Ljava/util/LinkedList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/logging/LogEventServiceImpl;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getActiveNetworkInfo()V

    return-void
.end method

.method private addRootObject(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 115
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_0
    return-void
.end method

.method private addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_0
    return-void
.end method

.method private static formatTable(Ljava/lang/StringBuilder;[Ljava/lang/String;[IC)V
    .locals 6

    .line 429
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 430
    aget-object v4, p1, v1

    .line 431
    aget v5, p2, v1

    if-eqz v4, :cond_0

    .line 433
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    :cond_0
    add-int/2addr v3, v5

    :goto_1
    if-ge v2, v3, :cond_1

    .line 439
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getActiveNetworkInfo()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 462
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private getNetworkOperatorName()V
    .locals 2

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->lastGetOperatorTime:J

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 449
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/logging/LogEventServiceImpl;->operatorName:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/narvii/logging/LogEventServiceImpl;->operatorName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->operatorName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 120
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method private putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    return-void
.end method

.method private uniqueKey(Lcom/narvii/logging/LogEvent;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 127
    iget-object v2, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object p1, p1, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    aput-object p1, v0, v1

    const-string p1, "|"

    .line 128
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method flushLoggingEvents()I
    .locals 13

    .line 470
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 471
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 474
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 475
    iget-object v4, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    const-string v5, "EventBasicInfo"

    .line 480
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v6, "eventTime"

    .line 482
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 483
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->isIntegralNumber()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-gez v11, :cond_2

    .line 484
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    iget-object v8, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {v8}, Lcom/narvii/util/ws/LogWsService;->getSyncTimeDiff()J

    move-result-wide v11

    add-long/2addr v6, v11

    cmp-long v8, v6, v9

    if-gez v8, :cond_1

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 488
    :cond_1
    instance-of v8, v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v8, :cond_2

    .line 489
    check-cast v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v8, "eventTime"

    invoke-virtual {v5, v8, v6, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 493
    :cond_2
    iget-object v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "viInfoSent"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "EventInfo"

    aput-object v7, v6, v1

    const-string v7, "actType"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 494
    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "EventInfo"

    aput-object v7, v5, v1

    const-string v7, "actSemantic"

    aput-object v7, v5, v8

    .line 495
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 496
    sget-object v7, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/narvii/logging/ActSemantic;->at:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 497
    iget-object v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "viInfoSent"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    :cond_3
    new-instance v5, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v5}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v6, 0x14

    .line 501
    iput v6, v5, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 502
    iput-object v4, v5, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 503
    iget-object v4, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {v4, v5}, Lcom/narvii/util/ws/WsService;->sendRequestDirectly(Lcom/narvii/util/ws/WsRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "logEvent"

    .line 507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logging fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    :cond_4
    monitor-exit v0

    move v1, v3

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    :goto_2
    return v1
.end method

.method protected getAbTestConfigJsonObject()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic lambda$logEvent$0$LogEventServiceImpl(Lcom/narvii/logging/LogEvent;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEventServiceImpl;->logEvent(Lcom/narvii/logging/LogEvent;)V

    return-void
.end method

.method public logEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 0

    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 521
    invoke-virtual {p0}, Lcom/narvii/logging/LogEventServiceImpl;->flushLoggingEvents()I

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    return-void
.end method

.method protected sendThirdPartyLog(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public setGlobalStrategyInfo(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl;->globalStrategyInfo:Ljava/lang/String;

    return-void
.end method

.method public setPushTackId(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl;->pushTackId:Ljava/lang/String;

    return-void
.end method
