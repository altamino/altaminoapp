.class public Lcom/narvii/livelayer/ws/LiveLayerWsService;
.super Ljava/lang/Object;
.source "LiveLayerWsService.java"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;


# static fields
.field private static final PATH_X:Ljava/util/regex/Pattern;


# instance fields
.field filterHelper:Lcom/narvii/util/FilterHelper;

.field public final liveLayerEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/livelayer/ws/LiveLayerEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field nvContext:Lcom/narvii/app/NVContext;

.field public reportActiveTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/util/ws/WsService$WsListener;",
            ">;"
        }
    .end annotation
.end field

.field wsService:Lcom/narvii/util/ws/WsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "x(\\d+)"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->PATH_X:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 52
    iput-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "ws"

    .line 53
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    .line 54
    new-instance v0, Lcom/narvii/util/FilterHelper;

    invoke-direct {v0, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 55
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method private handleLiveLayerEventMessage(Lcom/narvii/util/ws/WsMessage;)V
    .locals 5

    .line 224
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-class v2, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->ndcId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 235
    iget-object v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    .line 236
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ":"

    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 239
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    const/4 v3, 0x1

    .line 240
    aget-object v1, v1, v3

    .line 242
    sget-object v4, Lcom/narvii/livelayer/ws/LiveLayerWsService;->PATH_X:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->ndcId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 252
    :cond_1
    :goto_1
    iget v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->ndcId:I

    if-ne v1, v2, :cond_2

    const-string p1, "ndcId"

    const-string v0, "ndcId of live layer message is not set"

    .line 253
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/EventDispatcher;

    if-nez v1, :cond_3

    return-void

    .line 262
    :cond_3
    iget-object v2, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->filterHelper:Lcom/narvii/util/FilterHelper;

    iget-object v3, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 263
    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 267
    :cond_4
    iget p1, p1, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v2, 0x190

    if-eq p1, v2, :cond_6

    const/16 v2, 0x191

    if-eq p1, v2, :cond_5

    goto :goto_2

    .line 274
    :cond_5
    new-instance p1, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$pmss3DF12nhVcOeaZxK2c1bCbcY;

    invoke-direct {p1, v0}, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$pmss3DF12nhVcOeaZxK2c1bCbcY;-><init>(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;)V

    invoke-virtual {v1, p1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto :goto_2

    .line 270
    :cond_6
    new-instance p1, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$3jOEGGzbbl1iZ4unK0vJu7U9FQo;

    invoke-direct {p1, v0}, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$3jOEGGzbbl1iZ4unK0vJu7U9FQo;-><init>(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;)V

    invoke-virtual {v1, p1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :goto_2
    return-void
.end method

.method private isUserLoggedIn(I)Z
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 74
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$handleLiveLayerEventMessage$0(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileList:Ljava/util/List;

    iget p0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileCount:I

    invoke-interface {p1, v0, v1, p0}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserJoined(Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic lambda$handleLiveLayerEventMessage$1(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileList:Ljava/util/List;

    iget p0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileCount:I

    invoke-interface {p1, v0, v1, p0}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserLeft(Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic lambda$onDisconnect$2(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 0

    .line 288
    invoke-interface {p2, p0, p1}, Lcom/narvii/util/ws/WsService$WsListener;->onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    return-void
.end method

.method private reportActiveStatus(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;ILcom/narvii/util/Callback;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/narvii/util/Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 86
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_1
    const-string v6, "eventOrigin"

    const-string v7, "eventSource"

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    .line 91
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 92
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 93
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v9, v8

    .line 96
    :goto_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v10

    .line 97
    invoke-static/range {p2 .. p2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v11

    const-string v12, "actions"

    if-nez v11, :cond_3

    .line 98
    sget-object v11, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v11, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_3
    const-string v11, "target"

    .line 100
    invoke-virtual {v10, v11, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v13, "params"

    if-eqz v4, :cond_4

    .line 101
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 102
    sget-object v14, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v14, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 105
    :cond_4
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x130

    const-string v15, "duration"

    move-object/from16 v16, v13

    const-string v13, "live layer"

    if-ne v5, v14, :cond_6

    .line 108
    iget-object v14, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    move-object/from16 v17, v6

    const/16 v6, 0x3e8

    if-le v14, v6, :cond_5

    const-string v6, "the size of report active extraEventParams is too big"

    .line 109
    invoke-static {v13, v6}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 112
    :cond_5
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object/from16 v17, v6

    const/16 v6, 0x132

    if-ne v5, v6, :cond_9

    .line 114
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 115
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v18, v18, v13

    .line 118
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_7

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 122
    :cond_7
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot find active time when report inactive "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_9
    :goto_1
    new-instance v6, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v6}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 129
    iput v5, v6, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 130
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v5

    .line 131
    invoke-static/range {p2 .. p2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 132
    sget-object v10, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v5, v12, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 134
    :cond_a
    invoke-virtual {v5, v11, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "ndcId"

    .line 136
    invoke-virtual {v5, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v8, :cond_b

    .line 139
    invoke-virtual {v5, v7, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_b
    if-eqz v9, :cond_c

    move-object/from16 v2, v17

    .line 143
    invoke-virtual {v5, v2, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_c
    if-nez v4, :cond_d

    .line 147
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 150
    :cond_d
    iget-object v2, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "community"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 151
    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 152
    iget-object v2, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v1, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/story/StoryTopic;

    .line 155
    iget v3, v3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    const-string v1, "topicIds"

    .line 157
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-eqz v4, :cond_10

    .line 160
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 161
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v5, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 162
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_10
    iput-object v5, v6, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-object/from16 v1, p6

    .line 165
    iput-object v1, v6, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 166
    iget-object v1, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v1, v6}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method private subscribeTopic(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 63
    iput p3, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 64
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p3

    const-string v1, "ndcId"

    .line 65
    invoke-virtual {p3, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string p1, "topic"

    .line 66
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 67
    iput-object p3, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 68
    iput-object p4, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 69
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 288
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A;

    invoke-direct {v1, p1, p2}, Lcom/narvii/livelayer/ws/-$$Lambda$LiveLayerWsService$lkY-lDbZSxoBVH7T_M4ybvC8A9A;-><init>(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 213
    :cond_0
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v0, 0x190

    if-eq p1, v0, :cond_1

    const/16 v0, 0x191

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->handleLiveLayerEventMessage(Lcom/narvii/util/ws/WsMessage;)V

    :goto_0
    return-void
.end method

.method public registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public reportActive(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x130

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 178
    invoke-direct/range {v0 .. v6}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveStatus(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public reportInactive(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x132

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 182
    invoke-direct/range {v0 .. v6}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveStatus(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public subscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/narvii/util/EventDispatcher;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x12c

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribeTopic(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :cond_1
    if-nez v0, :cond_2

    .line 191
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 192
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_2
    invoke-virtual {v0, p3}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public unsubscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p3}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/narvii/util/EventDispatcher;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    const/16 p3, 0x12e

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribeTopic(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method
