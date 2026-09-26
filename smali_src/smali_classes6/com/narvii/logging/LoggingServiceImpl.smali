.class public Lcom/narvii/logging/LoggingServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/logging/LoggingService;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# static fields
.field private static final LOGGING_BUFFER:I = 0x32


# instance fields
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
    iput-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 11
    .line 12
    const-string v0, "logWs"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/util/ws/LogWsService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    iget-object p1, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static synthetic a(Lcom/narvii/logging/LoggingServiceImpl;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/logging/LoggingServiceImpl;->lambda$logEvent$0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$logEvent$0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/logging/LoggingServiceImpl;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    return-void
.end method


# virtual methods
.method flushLoggingEvents()I
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 14
    monitor-enter v0

    .line 15
    move v2, v1

    .line 16
    .line 17
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    const-string v4, "time"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->isIntegralNumber()Z

    .line 45
    move-result v5

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    cmp-long v5, v5, v7

    .line 56
    .line 57
    if-gez v5, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->longValue()J

    .line 61
    move-result-wide v4

    .line 62
    neg-long v4, v4

    .line 63
    .line 64
    iget-object v6, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/narvii/util/ws/LogWsService;->getSyncTimeDiff()J

    .line 68
    move-result-wide v9

    .line 69
    add-long/2addr v4, v9

    .line 70
    .line 71
    cmp-long v6, v4, v7

    .line 72
    .line 73
    if-gez v6, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    move-result-wide v4

    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    goto :goto_3

    .line 81
    :catch_0
    move-exception v3

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_0
    :goto_1
    const-string v6, "time"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v6, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 88
    .line 89
    :cond_1
    new-instance v4, Lcom/narvii/util/ws/WsRequest;

    .line 90
    .line 91
    .line 92
    invoke-direct {v4}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 93
    .line 94
    const/16 v5, 0x14

    .line 95
    .line 96
    iput v5, v4, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 97
    .line 98
    iput-object v3, v4, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/narvii/logging/LoggingServiceImpl;->ws:Lcom/narvii/util/ws/LogWsService;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v4}, Lcom/narvii/util/ws/WsService;->sendRequestDirectly(Lcom/narvii/util/ws/WsRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :goto_2
    :try_start_1
    const-string v4, "logging"

    .line 109
    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v6, "logging fail "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v6, "/"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    iget-object v6, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    .line 132
    move-result v6

    .line 133
    add-int/2addr v1, v6

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    .line 143
    invoke-static {v4, v1, v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    :cond_2
    monitor-exit v0

    .line 145
    move v1, v2

    .line 146
    goto :goto_4

    .line 147
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    throw v1

    .line 149
    :cond_3
    :goto_4
    return v1
.end method

.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_13

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/logging/b;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/logging/b;-><init>(Lcom/narvii/logging/LoggingServiceImpl;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "eventName"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 35
    const/4 p1, 0x0

    .line 36
    move v1, p1

    .line 37
    :goto_0
    array-length v2, p2

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    if-ge v1, v2, :cond_8

    .line 41
    .line 42
    aget-object v2, p2, v1

    .line 43
    .line 44
    add-int/lit8 v4, v1, 0x1

    .line 45
    .line 46
    aget-object v4, p2, v4

    .line 47
    .line 48
    instance-of v5, v2, Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v5, :cond_7

    .line 51
    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    .line 54
    instance-of v5, v4, Ljava/lang/Number;

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    instance-of v3, v4, Ljava/lang/Integer;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    check-cast v4, Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_1
    instance-of v3, v4, Ljava/lang/Long;

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    check-cast v4, Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 80
    move-result-wide v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v3, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    check-cast v4, Ljava/lang/Number;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 90
    move-result v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    check-cast v4, Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 107
    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    check-cast v4, Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    move-result v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 118
    goto :goto_1

    .line 119
    .line 120
    :cond_5
    if-nez v4, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 124
    .line 125
    :goto_1
    add-int/lit8 v1, v1, 0x2

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    const-string v0, "unsupported value "

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p2

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p1

    .line 150
    .line 151
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    const-string v0, "unsupported key "

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p2

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p1

    .line 173
    .line 174
    .line 175
    :cond_8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 176
    move-result-object p2

    .line 177
    .line 178
    const-string v1, "time"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    .line 182
    move-result v1

    .line 183
    .line 184
    if-nez v1, :cond_9

    .line 185
    .line 186
    const-string v1, "time"

    .line 187
    .line 188
    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 190
    move-result-wide v4

    .line 191
    neg-long v4, v4

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1, v4, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 195
    .line 196
    .line 197
    :cond_9
    invoke-static {}, La0/b;->q()Z

    .line 198
    move-result v1

    .line 199
    .line 200
    if-eqz v1, :cond_d

    .line 201
    .line 202
    sget-object v1, Lcom/narvii/util/ABTest;->LOGGING_USER_PROPS:[Lcom/narvii/util/ABTest;

    .line 203
    array-length v2, v1

    .line 204
    move v4, p1

    .line 205
    .line 206
    :goto_2
    if-ge v4, v2, :cond_c

    .line 207
    .line 208
    aget-object v5, v1, v4

    .line 209
    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    const-string v7, "ab_"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v6

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    .line 229
    move-result v7

    .line 230
    .line 231
    if-nez v7, :cond_b

    .line 232
    .line 233
    iget-object v7, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 234
    .line 235
    .line 236
    invoke-interface {v7}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 237
    move-result-object v7

    .line 238
    .line 239
    .line 240
    invoke-static {v7, v5}, Lcom/narvii/util/ABTest;->ab(Landroid/content/Context;Lcom/narvii/util/ABTest;)Z

    .line 241
    move-result v5

    .line 242
    .line 243
    if-eqz v5, :cond_a

    .line 244
    .line 245
    const-string v5, "A"

    .line 246
    goto :goto_3

    .line 247
    .line 248
    :cond_a
    const-string v5, "B"

    .line 249
    .line 250
    .line 251
    :goto_3
    invoke-virtual {v0, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 252
    .line 253
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 254
    goto :goto_2

    .line 255
    .line 256
    :cond_c
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 257
    .line 258
    .line 259
    invoke-static {v1, v0}, Lcom/narvii/util/ABTest2;->logLogging(Lcom/narvii/app/NVContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 260
    .line 261
    :cond_d
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 262
    .line 263
    if-nez v1, :cond_f

    .line 264
    .line 265
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 266
    .line 267
    if-nez v1, :cond_e

    .line 268
    .line 269
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 270
    .line 271
    .line 272
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    const-string v2, "logging"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 279
    move-result-object p1

    .line 280
    .line 281
    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 282
    .line 283
    :cond_e
    iget-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 284
    .line 285
    const-string v1, "headlineExtraEventParams"

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object p1

    .line 290
    .line 291
    .line 292
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 293
    move-result-object p1

    .line 294
    .line 295
    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 296
    .line 297
    :cond_f
    iget-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 298
    .line 299
    if-eqz p1, :cond_10

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->setAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 303
    .line 304
    :cond_10
    iget-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 305
    monitor-enter p1

    .line 306
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 311
    .line 312
    :goto_4
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 316
    move-result v0

    .line 317
    .line 318
    const/16 v1, 0x32

    .line 319
    .line 320
    if-le v0, v1, :cond_11

    .line 321
    .line 322
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->loggingList:Ljava/util/LinkedList;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 326
    goto :goto_4

    .line 327
    :catchall_0
    move-exception p2

    .line 328
    goto :goto_6

    .line 329
    :cond_11
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/narvii/logging/LoggingServiceImpl;->flushLoggingEvents()I

    .line 333
    move-result p1

    .line 334
    .line 335
    const-string v0, "logging"

    .line 336
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    if-lez p1, :cond_12

    .line 346
    .line 347
    const-string p1, ""

    .line 348
    goto :goto_5

    .line 349
    .line 350
    :cond_12
    const-string p1, " ..."

    .line 351
    .line 352
    .line 353
    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    move-result-object p1

    .line 358
    .line 359
    .line 360
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 362
    :goto_6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    throw p2

    .line 364
    .line 365
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 366
    .line 367
    const-string p2, "name must not be empty"

    .line 368
    .line 369
    .line 370
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 371
    throw p1
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/logging/LoggingServiceImpl;->flushLoggingEvents()I

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

.method public setHeadlineExtraEventParams(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/logging/LoggingServiceImpl;->headlineExtraEventParams:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "logging"

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/logging/LoggingServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string v1, "headlineExtraEventParams"

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    return-void
.end method
