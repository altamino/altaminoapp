.class public Lcom/narvii/logging/LoggingServiceImpl;
.super Ljava/lang/Object;
.source "LoggingServiceImpl.java"

# interfaces
.implements Lcom/narvii/util/logging/LoggingService;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# static fields
.field private static final LOGGING_BUFFER:I = 0x32


# instance fields
.field deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

.field private headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field private final loggingList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
            ">;"
        }
    .end annotation
.end field

.field nvContext:Lcom/narvii/app/NVContext;

.field private prefs:Landroid/content/SharedPreferences;

.field ws:Lcom/narvii/util/ws/LogWsService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    const-string v0, "logWs"

    .line 38
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/LogWsService;

    iput-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    const-string v0, "deviceid"

    .line 39
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    iput-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    .line 40
    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 41
    iget-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method flushLoggingEvents()I
    .locals 11

    .line 54
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    monitor-enter v0

    const/4 v2, 0x0

    .line 58
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 59
    iget-object v3, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v4, "time"

    .line 61
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 62
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->isIntegralNumber()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 63
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    iget-object v6, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {v6}, Lcom/narvii/util/ws/LogWsService;->getSyncTimeDiff()J

    move-result-wide v9

    add-long/2addr v4, v9

    cmp-long v6, v4, v7

    if-gez v6, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    const-string/jumbo v6, "time"

    .line 67
    invoke-virtual {v3, v6, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 69
    :cond_1
    new-instance v4, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v4}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v5, 0x14

    .line 70
    iput v5, v4, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 71
    iput-object v3, v4, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 72
    iget-object v3, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {v3, v4}, Lcom/narvii/util/ws/WsService;->sendRequestDirectly(Lcom/narvii/util/ws/WsRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "logging"

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logging fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/2addr v1, v6

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :cond_2
    monitor-exit v0

    move v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_2
    return v1
.end method

.method public synthetic lambda$logEvent$0$LoggingServiceImpl(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/LoggingServiceImpl;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 86
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 90
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/logging/-$$Lambda$LoggingServiceImpl$JF3oxd-CoYOetpMO77K9jhyjbcQ;-><init>(Lcom/narvii/logging/LoggingServiceImpl;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v1, "eventName"

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 97
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_8

    .line 98
    aget-object v2, p2, v1

    add-int/lit8 v4, v1, 0x1

    .line 99
    aget-object v4, p2, v4

    .line 100
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 103
    check-cast v2, Ljava/lang/String;

    .line 104
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_3

    .line 105
    instance-of v3, v4, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 106
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 107
    :cond_1
    instance-of v3, v4, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 108
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 110
    :cond_2
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 112
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 113
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 114
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 115
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    .line 117
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 119
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unsupported value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unsupported key "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "time"

    .line 123
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    neg-long v1, v1

    const-string/jumbo v4, "time"

    invoke-virtual {v0, v4, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 127
    :cond_9
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    invoke-virtual {v1}, Lcom/narvii/util/deviceid/DeviceIDService;->isReady()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 128
    sget-object v1, Lcom/narvii/util/ABTest;->LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_c

    aget-object v5, v1, v4

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ab_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 131
    invoke-static {v5}, Lcom/narvii/util/ABTest;->ab(Lcom/narvii/util/ABTest;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "A"

    goto :goto_3

    :cond_a
    const-string v5, "B"

    :goto_3
    invoke-virtual {v0, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v1, v0}, Lcom/narvii/util/ABTest2;->logLogging(Lcom/narvii/app/NVContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 137
    :cond_d
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v1, :cond_f

    .line 138
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_e

    .line 139
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "logging"

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 141
    :cond_e
    iget-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "headlineExtraEventParams"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 144
    :cond_f
    iget-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p1, :cond_10

    .line 146
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->setAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 149
    :cond_10
    iget-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    monitor-enter p1

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 151
    :goto_4
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_11

    .line 152
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    .line 154
    :cond_11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {p0}, Lcom/narvii/logging/LoggingServiceImpl;->flushLoggingEvents()I

    move-result p1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_12

    const-string p1, ""

    goto :goto_5

    :cond_12
    const-string p1, " ..."

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "logging"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 154
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 87
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/narvii/logging/LoggingServiceImpl;->flushLoggingEvents()I

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

.method public setHeadlineExtraEventParams(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 3

    .line 45
    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 46
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "logging"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "headlineExtraEventParams"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
