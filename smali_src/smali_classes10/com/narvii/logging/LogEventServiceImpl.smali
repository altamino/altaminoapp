.class public Lcom/narvii/logging/LogEventServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x1000

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/logging/LogEventServiceImpl;->logBuf:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/16 v0, 0x9

    .line 12
    .line 13
    new-array v1, v0, [Ljava/lang/String;

    .line 14
    .line 15
    sput-object v1, Lcom/narvii/logging/LogEventServiceImpl;->logArgs:[Ljava/lang/String;

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/logging/LogEventServiceImpl;->logColWidth:[I

    .line 23
    .line 24
    const-string v1, "\u2605"

    .line 25
    .line 26
    const-string v2, "page"

    .line 27
    .line 28
    const-string v3, "area"

    .line 29
    .line 30
    const-string v4, "actType"

    .line 31
    .line 32
    const-string v5, "actSemantic"

    .line 33
    .line 34
    const-string v6, "objectType"

    .line 35
    .line 36
    const-string v7, "extraInfo"

    .line 37
    .line 38
    const-string v8, "strategyInfo"

    .line 39
    .line 40
    const-string v9, "pageRefererInfo"

    .line 41
    .line 42
    .line 43
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Lcom/narvii/logging/LogEventServiceImpl;->logColNames:[Ljava/lang/String;

    .line 47
    return-void

    .line 48
    nop

    .line 49
    .line 50
    .line 51
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/logging/LogEventServiceImpl$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/logging/LogEventServiceImpl$1;-><init>(Lcom/narvii/logging/LogEventServiceImpl;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->accountReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    const-string v0, "logWs"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/util/ws/LogWsService;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 28
    .line 29
    const-string v0, "prefs"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Landroid/content/SharedPreferences;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getNetworkOperatorName()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getActiveNetworkInfo()V

    .line 53
    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .line 59
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/logging/LogEventServiceImpl$2;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/narvii/logging/LogEventServiceImpl$2;-><init>(Lcom/narvii/logging/LogEventServiceImpl;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->accountReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    .line 86
    new-instance v1, Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string v2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 95
    return-void
.end method

.method public static synthetic a(Lcom/narvii/logging/LogEventServiceImpl;Lcom/narvii/logging/LogEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/logging/LogEventServiceImpl;->lambda$logEvent$0(Lcom/narvii/logging/LogEvent;)V

    return-void
.end method

.method private addRootObject(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    :cond_0
    return-void
.end method

.method private addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 12
    :cond_0
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/logging/LogEventServiceImpl;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/logging/LogEventServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getActiveNetworkInfo()V

    return-void
.end method

.method private static formatTable(Ljava/lang/StringBuilder;[Ljava/lang/String;[IC)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    aget-object v4, p1, v1

    .line 9
    .line 10
    aget v5, p2, v1

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 22
    move-result v4

    .line 23
    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    add-int/2addr v2, v4

    .line 26
    :cond_0
    add-int/2addr v3, v5

    .line 27
    .line 28
    :goto_1
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
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

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "connectivity"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->networkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    return-void
.end method

.method private getNetworkOperatorName()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->lastGetOperatorTime:J

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "phone"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/logging/LogEventServiceImpl;->operatorName:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->operatorName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$logEvent$0(Lcom/narvii/logging/LogEvent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/logging/LogEventServiceImpl;->logEvent(Lcom/narvii/logging/LogEvent;)V

    .line 4
    return-void
.end method

.method private newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 6
    :cond_0
    return-void
.end method

.method private uniqueKey(Lcom/narvii/logging/LogEvent;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    filled-new-array {v0, v1, v2, p1}, [Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "|"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method


# virtual methods
.method flushLoggingEvents()I
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 14
    monitor-enter v0

    .line 15
    move v2, v1

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 22
    move-result v4

    .line 23
    .line 24
    if-nez v4, :cond_4

    .line 25
    .line 26
    iget-object v4, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    check-cast v4, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    const-string v5, "EventBasicInfo"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    const-string v6, "eventTime"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 51
    move-result-object v6

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->isIntegralNumber()Z

    .line 57
    move-result v7

    .line 58
    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    .line 63
    move-result-wide v7

    .line 64
    .line 65
    const-wide/16 v9, 0x0

    .line 66
    .line 67
    cmp-long v7, v7, v9

    .line 68
    .line 69
    if-gez v7, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    .line 73
    move-result-wide v6

    .line 74
    neg-long v6, v6

    .line 75
    .line 76
    iget-object v8, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/narvii/util/ws/LogWsService;->getSyncTimeDiff()J

    .line 80
    move-result-wide v11

    .line 81
    add-long/2addr v6, v11

    .line 82
    .line 83
    cmp-long v8, v6, v9

    .line 84
    .line 85
    if-gez v8, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    move-result-wide v6

    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    :catch_0
    move-exception v1

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_1
    :goto_1
    instance-of v8, v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 98
    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    check-cast v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 102
    .line 103
    const-string v8, "eventTime"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v8, v6, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 107
    .line 108
    :cond_2
    iget-object v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 109
    .line 110
    const-string v6, "viInfoSent"

    .line 111
    .line 112
    .line 113
    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 114
    move-result v5

    .line 115
    .line 116
    if-nez v5, :cond_3

    .line 117
    const/4 v5, 0x2

    .line 118
    .line 119
    new-array v6, v5, [Ljava/lang/String;

    .line 120
    .line 121
    const-string v7, "EventInfo"

    .line 122
    .line 123
    aput-object v7, v6, v1

    .line 124
    .line 125
    const-string v7, "actType"

    .line 126
    const/4 v8, 0x1

    .line 127
    .line 128
    aput-object v7, v6, v8

    .line 129
    .line 130
    .line 131
    invoke-static {v4, v6}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v6

    .line 133
    .line 134
    new-array v5, v5, [Ljava/lang/String;

    .line 135
    .line 136
    const-string v7, "EventInfo"

    .line 137
    .line 138
    aput-object v7, v5, v1

    .line 139
    .line 140
    const-string v7, "actSemantic"

    .line 141
    .line 142
    aput-object v7, v5, v8

    .line 143
    .line 144
    .line 145
    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v5

    .line 147
    .line 148
    sget-object v7, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    move-result-object v7

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v6

    .line 157
    .line 158
    if-eqz v6, :cond_3

    .line 159
    .line 160
    sget-object v6, Lcom/narvii/logging/ActSemantic;->at:Lcom/narvii/logging/ActSemantic;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v5

    .line 169
    .line 170
    if-eqz v5, :cond_3

    .line 171
    .line 172
    iget-object v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 173
    .line 174
    .line 175
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 176
    move-result-object v5

    .line 177
    .line 178
    const-string v6, "viInfoSent"

    .line 179
    .line 180
    .line 181
    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    move-result-object v5

    .line 183
    .line 184
    .line 185
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    .line 187
    :cond_3
    new-instance v5, Lcom/narvii/util/ws/WsRequest;

    .line 188
    .line 189
    .line 190
    invoke-direct {v5}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 191
    .line 192
    const/16 v6, 0x14

    .line 193
    .line 194
    iput v6, v5, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 195
    .line 196
    iput-object v4, v5, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 197
    .line 198
    iget-object v4, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v5}, Lcom/narvii/util/ws/WsService;->sendRequestDirectly(Lcom/narvii/util/ws/WsRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :goto_2
    :try_start_1
    const-string v4, "logEvent"

    .line 208
    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    const-string v6, "logging fail "

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v6, "/"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    iget-object v6, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    .line 231
    move-result v6

    .line 232
    add-int/2addr v2, v6

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    .line 242
    invoke-static {v4, v2, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :cond_4
    monitor-exit v0

    .line 244
    move v1, v3

    .line 245
    goto :goto_4

    .line 246
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    throw v1

    .line 248
    :cond_5
    :goto_4
    return v1
.end method

.method protected getAbTestConfigJsonObject()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public logEvent(Lcom/narvii/logging/LogEvent;)V
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/logging/a;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/narvii/logging/a;-><init>(Lcom/narvii/logging/LogEventServiceImpl;Lcom/narvii/logging/LogEvent;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    sget-object v0, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v2, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/logging/PageRefererInfo;

    .line 39
    .line 40
    iget-object v2, p1, Lcom/narvii/logging/LogEvent;->eventId:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2, v3, v4}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    sput-object v1, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    iget-object v2, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    sput-object v1, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 68
    .line 69
    :cond_3
    iget-boolean v1, p1, Lcom/narvii/logging/LogEvent;->allowNoPage:Z

    .line 70
    const/4 v2, 0x0

    .line 71
    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v1

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    new-instance v0, Lcom/narvii/logging/PageRefererInfo;

    .line 95
    .line 96
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v2, v1, v3}, Lcom/narvii/logging/PageRefererInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 104
    .line 105
    :cond_4
    const-string v0, "logWarning"

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v2, "event page is missing: "

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 131
    .line 132
    :cond_5
    sget-object v0, Lcom/narvii/logging/ActType;->APIRequest:Lcom/narvii/logging/ActType;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v0

    .line 143
    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    sget-object v0, Lcom/narvii/logging/LoggingWhiteList;->INSTANCE:Lcom/narvii/logging/LoggingWhiteList;

    .line 147
    .line 148
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 149
    .line 150
    const-string v3, "url"

    .line 151
    .line 152
    .line 153
    filled-new-array {v3}, [Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 161
    .line 162
    const-string v4, "method"

    .line 163
    .line 164
    .line 165
    filled-new-array {v4}, [Ljava/lang/String;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-static {v3, v4}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v3}, Lcom/narvii/logging/LoggingWhiteList;->getApiRequestSemantic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    .line 177
    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    move-result v3

    .line 179
    .line 180
    if-nez v3, :cond_7

    .line 181
    .line 182
    iput-object v1, p1, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/narvii/logging/LoggingWhiteList;->isMonitorRequest(Ljava/lang/String;)Z

    .line 186
    move-result v0

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 191
    .line 192
    if-nez v0, :cond_6

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    iput-object v0, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 199
    .line 200
    :cond_6
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 201
    .line 202
    const-string v1, "tag"

    .line 203
    .line 204
    const-string v3, "SERVER_MONITOR"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 208
    goto :goto_0

    .line 209
    :cond_7
    return-void

    .line 210
    .line 211
    .line 212
    :cond_8
    :goto_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    iget v1, p1, Lcom/narvii/logging/LogEvent;->ndcId:I

    .line 216
    .line 217
    if-lez v1, :cond_9

    .line 218
    .line 219
    const-string v3, "ndcId"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 223
    .line 224
    .line 225
    :cond_9
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 226
    move-result-object v1

    .line 227
    .line 228
    const-string v3, "eventPage"

    .line 229
    .line 230
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    const-string v3, "eventArea"

    .line 236
    .line 237
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    const-string v3, "pvId"

    .line 243
    .line 244
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->pvId:Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    const-string v3, "reqId"

    .line 250
    .line 251
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->reqId:Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getAbTestConfigJsonObject()Lorg/json/JSONObject;

    .line 258
    move-result-object v3

    .line 259
    .line 260
    if-eqz v3, :cond_b

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 264
    move-result v4

    .line 265
    .line 266
    if-lez v4, :cond_b

    .line 267
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v5, ","

    .line 271
    .line 272
    .line 273
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 277
    move-result-object v5

    .line 278
    .line 279
    .line 280
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    move-result v6

    .line 282
    .line 283
    if-eqz v6, :cond_a

    .line 284
    .line 285
    .line 286
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    move-result-object v6

    .line 288
    .line 289
    check-cast v6, Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const/16 v7, 0x3d

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    move-result-object v6

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const/16 v6, 0x2c

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    goto :goto_1

    .line 311
    .line 312
    :cond_a
    const-string v3, "uiExpIds"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v4

    .line 317
    .line 318
    .line 319
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    :cond_b
    const-string v3, "ScenarioInfo"

    .line 322
    .line 323
    .line 324
    invoke-direct {p0, v0, v3, v1}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 325
    .line 326
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageViewLaunch:Lcom/narvii/logging/ActSemantic;

    .line 327
    .line 328
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result v1

    .line 333
    .line 334
    if-eqz v1, :cond_c

    .line 335
    .line 336
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 337
    .line 338
    if-nez v1, :cond_c

    .line 339
    .line 340
    const-string v1, "logWarning"

    .line 341
    .line 342
    const-string v3, "page view event has no referer info"

    .line 343
    .line 344
    .line 345
    invoke-static {v1, v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    :cond_c
    const-string v1, "PageRefererInfo"

    .line 348
    .line 349
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 350
    .line 351
    .line 352
    invoke-direct {p0, v0, v1, v3}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObject(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 356
    move-result-object v1

    .line 357
    .line 358
    const-string v3, "actType"

    .line 359
    .line 360
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    const-string v3, "actSemantic"

    .line 366
    .line 367
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    iget v3, p1, Lcom/narvii/logging/LogEvent;->ndcId:I

    .line 373
    .line 374
    if-nez v3, :cond_e

    .line 375
    .line 376
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->nvObject:Lcom/narvii/model/NVObject;

    .line 377
    .line 378
    instance-of v3, v3, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 379
    .line 380
    if-eqz v3, :cond_e

    .line 381
    .line 382
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 383
    .line 384
    if-nez v3, :cond_d

    .line 385
    .line 386
    .line 387
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 388
    move-result-object v3

    .line 389
    .line 390
    iput-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 391
    .line 392
    :cond_d
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 393
    .line 394
    const-string v4, "objectNdcId"

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->hasNonNull(Ljava/lang/String;)Z

    .line 398
    move-result v3

    .line 399
    .line 400
    if-nez v3, :cond_e

    .line 401
    .line 402
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->nvObject:Lcom/narvii/model/NVObject;

    .line 403
    .line 404
    check-cast v3, Lcom/narvii/model/CommunityObjectInGlobal;

    .line 405
    .line 406
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 407
    .line 408
    const-string v5, "objectNdcId"

    .line 409
    .line 410
    .line 411
    invoke-interface {v3}, Lcom/narvii/model/CommunityObjectInGlobal;->getNdcId()I

    .line 412
    move-result v3

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 416
    .line 417
    :cond_e
    iget-object v3, p0, Lcom/narvii/logging/LogEventServiceImpl;->pushTackId:Ljava/lang/String;

    .line 418
    .line 419
    if-eqz v3, :cond_10

    .line 420
    .line 421
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 422
    .line 423
    if-nez v3, :cond_f

    .line 424
    .line 425
    .line 426
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 427
    move-result-object v3

    .line 428
    .line 429
    iput-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 430
    .line 431
    :cond_f
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 432
    .line 433
    const-string v4, "pushTrackingId"

    .line 434
    .line 435
    iget-object v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->pushTackId:Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 439
    .line 440
    :cond_10
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 441
    .line 442
    if-eqz v3, :cond_11

    .line 443
    .line 444
    const-string v4, "extraInfo"

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 448
    .line 449
    :cond_11
    const-string v3, "EventInfo"

    .line 450
    .line 451
    .line 452
    invoke-direct {p0, v0, v3, v1}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 453
    .line 454
    .line 455
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 456
    move-result-object v1

    .line 457
    .line 458
    const-string v3, "objectId"

    .line 459
    .line 460
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->objectId:Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    const-string v3, "objectType"

    .line 466
    .line 467
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    const-string v3, "objectSubType"

    .line 473
    .line 474
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    const-string v3, "parentId"

    .line 480
    .line 481
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->parentId:Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    invoke-direct {p0, v1, v3, v4}, Lcom/narvii/logging/LogEventServiceImpl;->putStringIfNotNull(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    iget v3, p1, Lcom/narvii/logging/LogEvent;->screenPos:I

    .line 487
    .line 488
    if-ltz v3, :cond_12

    .line 489
    .line 490
    const-string v4, "screenPos"

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 494
    .line 495
    :cond_12
    const-string v3, "ObjectInfo"

    .line 496
    .line 497
    .line 498
    invoke-direct {p0, v0, v3, v1}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 499
    .line 500
    iget-object v1, p0, Lcom/narvii/logging/LogEventServiceImpl;->globalStrategyInfo:Ljava/lang/String;

    .line 501
    .line 502
    if-eqz v1, :cond_13

    .line 503
    .line 504
    const-string v3, "GlobalStrategyInfo"

    .line 505
    .line 506
    .line 507
    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 508
    .line 509
    :cond_13
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 510
    .line 511
    if-eqz v1, :cond_14

    .line 512
    .line 513
    sget-object v1, Lcom/narvii/logging/ActType;->APIRequest:Lcom/narvii/logging/ActType;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 517
    move-result-object v1

    .line 518
    .line 519
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    move-result v1

    .line 524
    .line 525
    if-nez v1, :cond_14

    .line 526
    .line 527
    const-string v1, "StrategyInfo"

    .line 528
    .line 529
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 533
    .line 534
    .line 535
    :cond_14
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 536
    move-result-object v1

    .line 537
    .line 538
    const-string v3, "eventId"

    .line 539
    .line 540
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->eventId:Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 544
    .line 545
    iget-object v3, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 546
    .line 547
    if-eqz v3, :cond_15

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    .line 551
    move-result v3

    .line 552
    .line 553
    if-eqz v3, :cond_15

    .line 554
    .line 555
    const-string v3, "eventTime"

    .line 556
    .line 557
    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 559
    move-result-wide v4

    .line 560
    .line 561
    iget-object v6, p0, Lcom/narvii/logging/LogEventServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v6}, Lcom/narvii/util/ws/LogWsService;->getSyncTimeDiff()J

    .line 565
    move-result-wide v6

    .line 566
    add-long/2addr v4, v6

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 570
    goto :goto_2

    .line 571
    .line 572
    :cond_15
    const-string v3, "eventTime"

    .line 573
    .line 574
    .line 575
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 576
    move-result-wide v4

    .line 577
    neg-long v4, v4

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 581
    .line 582
    :goto_2
    const-string v3, "eventType"

    .line 583
    .line 584
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->eventType:Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 588
    .line 589
    const-string v3, "eventVersion"

    .line 590
    .line 591
    const-string v4, "V3"

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 595
    .line 596
    const-string v3, "EventBasicInfo"

    .line 597
    .line 598
    .line 599
    invoke-direct {p0, v0, v3, v1}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 600
    .line 601
    .line 602
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 603
    move-result-object v1

    .line 604
    .line 605
    const-string v3, "deviceRegion"

    .line 606
    .line 607
    .line 608
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 609
    move-result-object v4

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 613
    move-result-object v4

    .line 614
    .line 615
    .line 616
    invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 617
    .line 618
    const-string v3, "DeviceBasicInfo"

    .line 619
    .line 620
    .line 621
    invoke-direct {p0, v0, v3, v1}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 622
    .line 623
    .line 624
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 625
    move-result-object v1

    .line 626
    .line 627
    iget-object v3, p0, Lcom/narvii/logging/LogEventServiceImpl;->networkInfo:Landroid/net/NetworkInfo;

    .line 628
    .line 629
    if-eqz v3, :cond_16

    .line 630
    .line 631
    .line 632
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 633
    move-result-object v3

    .line 634
    .line 635
    const-string v4, "type"

    .line 636
    .line 637
    iget-object v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->networkInfo:Landroid/net/NetworkInfo;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 641
    move-result-object v5

    .line 642
    .line 643
    .line 644
    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 645
    .line 646
    const-string v4, "subType"

    .line 647
    .line 648
    iget-object v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->networkInfo:Landroid/net/NetworkInfo;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    .line 652
    move-result-object v5

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 656
    .line 657
    const-string v4, "netType"

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 661
    .line 662
    .line 663
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 664
    move-result-wide v3

    .line 665
    .line 666
    iget-wide v5, p0, Lcom/narvii/logging/LogEventServiceImpl;->lastGetOperatorTime:J

    .line 667
    sub-long/2addr v3, v5

    .line 668
    .line 669
    .line 670
    const-wide/32 v5, 0xea60

    .line 671
    .line 672
    cmp-long v3, v3, v5

    .line 673
    .line 674
    if-lez v3, :cond_17

    .line 675
    .line 676
    .line 677
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->getNetworkOperatorName()V

    .line 678
    .line 679
    :cond_17
    iget-object v3, p0, Lcom/narvii/logging/LogEventServiceImpl;->operatorName:Ljava/lang/String;

    .line 680
    .line 681
    if-eqz v3, :cond_18

    .line 682
    .line 683
    const-string v4, "provider"

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 687
    .line 688
    :cond_18
    const-string v3, "NetworkInfo"

    .line 689
    .line 690
    .line 691
    invoke-direct {p0, v0, v3, v1}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 692
    .line 693
    .line 694
    invoke-direct {p0}, Lcom/narvii/logging/LogEventServiceImpl;->newObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 695
    move-result-object v1

    .line 696
    .line 697
    .line 698
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 699
    move-result-object v3

    .line 700
    .line 701
    const-string v4, "regionInfo"

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 705
    .line 706
    iget-object v4, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 707
    .line 708
    const-string v5, "content_language"

    .line 709
    .line 710
    .line 711
    invoke-interface {v4, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 712
    move-result-object v4

    .line 713
    .line 714
    check-cast v4, Lcom/narvii/language/ContentLanguageService;

    .line 715
    .line 716
    if-eqz v4, :cond_19

    .line 717
    .line 718
    .line 719
    invoke-virtual {v4}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 720
    move-result-object v4

    .line 721
    goto :goto_3

    .line 722
    :cond_19
    move-object v4, v2

    .line 723
    .line 724
    :goto_3
    const-string v5, "contentLanguage"

    .line 725
    .line 726
    .line 727
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 728
    .line 729
    const-string v3, "AppInfo"

    .line 730
    .line 731
    .line 732
    invoke-direct {p0, v0, v3, v1}, Lcom/narvii/logging/LogEventServiceImpl;->addRootObjectNodeIfNotEmpty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 733
    .line 734
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 735
    .line 736
    if-eqz v1, :cond_1c

    .line 737
    .line 738
    iget-boolean v1, p1, Lcom/narvii/logging/LogEvent;->onlyInternalLogging:Z

    .line 739
    .line 740
    if-nez v1, :cond_1c

    .line 741
    .line 742
    .line 743
    invoke-static {v0}, Lcom/narvii/logging/LogUtils;->getFlatJSONObject(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lorg/json/JSONObject;

    .line 744
    move-result-object v1

    .line 745
    .line 746
    if-eqz v1, :cond_1c

    .line 747
    .line 748
    :try_start_0
    const-string v3, "eventTime"

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 752
    move-result-wide v3

    .line 753
    .line 754
    .line 755
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 756
    move-result-object v3

    .line 757
    .line 758
    .line 759
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 760
    move-result-wide v3

    .line 761
    .line 762
    const-wide/16 v5, 0x0

    .line 763
    .line 764
    cmp-long v3, v3, v5

    .line 765
    .line 766
    if-gtz v3, :cond_1a

    .line 767
    .line 768
    const-string v3, "eventTime"

    .line 769
    .line 770
    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 772
    move-result-wide v4

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    goto :goto_4

    .line 777
    :catch_0
    move-exception v3

    .line 778
    .line 779
    .line 780
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 781
    .line 782
    :cond_1a
    :goto_4
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 783
    .line 784
    if-eqz v3, :cond_1b

    .line 785
    .line 786
    :try_start_1
    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 787
    .line 788
    .line 789
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 790
    move-result-object v3

    .line 791
    .line 792
    if-eqz v3, :cond_1b

    .line 793
    .line 794
    const-string v4, "scenarioType"

    .line 795
    .line 796
    .line 797
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 798
    move-result-object v3

    .line 799
    .line 800
    if-eqz v3, :cond_1b

    .line 801
    .line 802
    .line 803
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    .line 804
    move-result v4

    .line 805
    .line 806
    if-eqz v4, :cond_1b

    .line 807
    .line 808
    const-string v4, "scenarioType"

    .line 809
    .line 810
    .line 811
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 812
    move-result-object v3

    .line 813
    .line 814
    .line 815
    invoke-static {v3}, Lcom/narvii/logging/LogUtils;->teaValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    move-result-object v3

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 820
    goto :goto_5

    .line 821
    :catch_1
    move-exception v3

    .line 822
    .line 823
    .line 824
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 825
    .line 826
    :cond_1b
    :goto_5
    const-string v3, "logFlat"

    .line 827
    .line 828
    .line 829
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 830
    move-result-object v4

    .line 831
    .line 832
    .line 833
    invoke-static {v3, v4}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .line 835
    iget-object v3, p0, Lcom/narvii/logging/LogEventServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 836
    .line 837
    .line 838
    invoke-virtual {p0, v3, p1, v1}, Lcom/narvii/logging/LogEventServiceImpl;->sendThirdPartyLog(Lcom/narvii/app/NVContext;Lcom/narvii/logging/LogEvent;Lorg/json/JSONObject;)V

    .line 839
    .line 840
    :cond_1c
    iget-object v1, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 841
    monitor-enter v1

    .line 842
    .line 843
    :try_start_2
    iget-object v3, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 847
    .line 848
    :goto_6
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 852
    move-result v0

    .line 853
    .line 854
    const/16 v3, 0x32

    .line 855
    .line 856
    if-le v0, v3, :cond_1d

    .line 857
    .line 858
    iget-object v0, p0, Lcom/narvii/logging/LogEventServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 862
    goto :goto_6

    .line 863
    :catchall_0
    move-exception p1

    .line 864
    .line 865
    goto/16 :goto_b

    .line 866
    :cond_1d
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 867
    .line 868
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventArea:Ljava/lang/String;

    .line 869
    .line 870
    if-eqz v0, :cond_21

    .line 871
    .line 872
    iget v1, p1, Lcom/narvii/logging/LogEvent;->screenPos:I

    .line 873
    const/4 v3, -0x1

    .line 874
    .line 875
    if-ne v1, v3, :cond_1e

    .line 876
    .line 877
    iget-object v4, p1, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 878
    .line 879
    if-eqz v4, :cond_21

    .line 880
    .line 881
    :cond_1e
    if-ne v1, v3, :cond_1f

    .line 882
    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    const-string v0, " ("

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    const-string v0, ")"

    .line 902
    .line 903
    .line 904
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    move-result-object v0

    .line 909
    goto :goto_7

    .line 910
    .line 911
    :cond_1f
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 912
    .line 913
    if-nez v1, :cond_20

    .line 914
    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    .line 918
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    const-string v0, " (pos="

    .line 924
    .line 925
    .line 926
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    iget v0, p1, Lcom/narvii/logging/LogEvent;->screenPos:I

    .line 929
    .line 930
    .line 931
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    const-string v0, ")"

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    move-result-object v0

    .line 941
    goto :goto_7

    .line 942
    .line 943
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    const-string v0, " ("

    .line 952
    .line 953
    .line 954
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->eventSubArea:Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    const-string v0, ",pos="

    .line 962
    .line 963
    .line 964
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    iget v0, p1, Lcom/narvii/logging/LogEvent;->screenPos:I

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    const-string v0, ")"

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 978
    move-result-object v0

    .line 979
    .line 980
    :cond_21
    :goto_7
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->objectType:Ljava/lang/String;

    .line 981
    .line 982
    if-eqz v1, :cond_22

    .line 983
    .line 984
    iget-object v3, p1, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    .line 985
    .line 986
    if-eqz v3, :cond_22

    .line 987
    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    const-string v1, " ("

    .line 997
    .line 998
    .line 999
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    iget-object v1, p1, Lcom/narvii/logging/LogEvent;->objectSubType:Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    const-string v1, ")"

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1013
    move-result-object v1

    .line 1014
    .line 1015
    :cond_22
    sget-object v3, Lcom/narvii/logging/LogEventServiceImpl;->logBuf:Ljava/lang/StringBuilder;

    .line 1016
    monitor-enter v3

    .line 1017
    .line 1018
    :try_start_3
    sget v4, Lcom/narvii/logging/LogEventServiceImpl;->logCounter:I

    .line 1019
    .line 1020
    add-int/lit8 v5, v4, 0x1

    .line 1021
    .line 1022
    sput v5, Lcom/narvii/logging/LogEventServiceImpl;->logCounter:I

    .line 1023
    .line 1024
    rem-int/lit8 v4, v4, 0x14

    .line 1025
    const/4 v5, 0x0

    .line 1026
    .line 1027
    if-nez v4, :cond_23

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1031
    .line 1032
    sget-object v4, Lcom/narvii/logging/LogEventServiceImpl;->logColNames:[Ljava/lang/String;

    .line 1033
    .line 1034
    sget-object v6, Lcom/narvii/logging/LogEventServiceImpl;->logColWidth:[I

    .line 1035
    .line 1036
    const/16 v7, 0x2d

    .line 1037
    .line 1038
    .line 1039
    invoke-static {v3, v4, v6, v7}, Lcom/narvii/logging/LogEventServiceImpl;->formatTable(Ljava/lang/StringBuilder;[Ljava/lang/String;[IC)V

    .line 1040
    .line 1041
    const-string v4, "logEvent"

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1045
    move-result-object v6

    .line 1046
    .line 1047
    .line 1048
    invoke-static {v4, v6}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    goto :goto_8

    .line 1050
    :catchall_1
    move-exception p1

    .line 1051
    goto :goto_a

    .line 1052
    .line 1053
    :cond_23
    :goto_8
    sget-object v4, Lcom/narvii/logging/LogEventServiceImpl;->logArgs:[Ljava/lang/String;

    .line 1054
    .line 1055
    const-string v6, " "

    .line 1056
    .line 1057
    aput-object v6, v4, v5

    .line 1058
    .line 1059
    iget-object v6, p1, Lcom/narvii/logging/LogEvent;->eventPage:Ljava/lang/String;

    .line 1060
    const/4 v7, 0x1

    .line 1061
    .line 1062
    aput-object v6, v4, v7

    .line 1063
    const/4 v6, 0x2

    .line 1064
    .line 1065
    aput-object v0, v4, v6

    .line 1066
    .line 1067
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->actType:Ljava/lang/String;

    .line 1068
    const/4 v6, 0x3

    .line 1069
    .line 1070
    aput-object v0, v4, v6

    .line 1071
    .line 1072
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->actSemantic:Ljava/lang/String;

    .line 1073
    const/4 v6, 0x4

    .line 1074
    .line 1075
    aput-object v0, v4, v6

    .line 1076
    const/4 v0, 0x5

    .line 1077
    .line 1078
    aput-object v1, v4, v0

    .line 1079
    .line 1080
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->extraInfo:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 1081
    .line 1082
    if-nez v0, :cond_24

    .line 1083
    goto :goto_9

    .line 1084
    .line 1085
    .line 1086
    :cond_24
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 1087
    move-result-object v2

    .line 1088
    :goto_9
    const/4 v0, 0x6

    .line 1089
    .line 1090
    aput-object v2, v4, v0

    .line 1091
    .line 1092
    iget-object v0, p1, Lcom/narvii/logging/LogEvent;->strategyInfo:Ljava/lang/String;

    .line 1093
    const/4 v1, 0x7

    .line 1094
    .line 1095
    aput-object v0, v4, v1

    .line 1096
    .line 1097
    iget-object p1, p1, Lcom/narvii/logging/LogEvent;->pageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 1098
    .line 1099
    .line 1100
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1101
    move-result-object p1

    .line 1102
    .line 1103
    const/16 v0, 0x8

    .line 1104
    .line 1105
    aput-object p1, v4, v0

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1109
    .line 1110
    sget-object p1, Lcom/narvii/logging/LogEventServiceImpl;->logColWidth:[I

    .line 1111
    .line 1112
    const/16 v0, 0x20

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v3, v4, p1, v0}, Lcom/narvii/logging/LogEventServiceImpl;->formatTable(Ljava/lang/StringBuilder;[Ljava/lang/String;[IC)V

    .line 1116
    .line 1117
    const-string p1, "logEvent"

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1121
    move-result-object v0

    .line 1122
    .line 1123
    .line 1124
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {p0}, Lcom/narvii/logging/LogEventServiceImpl;->flushLoggingEvents()I

    .line 1129
    return-void

    .line 1130
    :goto_a
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1131
    throw p1

    .line 1132
    :goto_b
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1133
    throw p1
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/logging/LogEventServiceImpl;->flushLoggingEvents()I

    .line 4
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

    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl;->globalStrategyInfo:Ljava/lang/String;

    return-void
.end method

.method public setPushTackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl;->pushTackId:Ljava/lang/String;

    return-void
.end method
