.class public Lcom/narvii/livelayer/ws/LiveLayerWsService;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    const-string v0, "x(\\d+)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->PATH_X:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v0, "ws"

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/util/ws/WsService;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->lambda$handleLiveLayerEventMessage$1(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->lambda$handleLiveLayerEventMessage$0(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->lambda$onDisconnect$2(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method

.method private handleLiveLayerEventMessage(Lcom/narvii/util/ws/WsMessage;)V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 5
    .line 6
    const-class v2, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iget v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->ndcId:I

    .line 24
    const/4 v2, -0x1

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    const-string v3, ":"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    array-length v3, v1

    .line 42
    const/4 v4, 0x2

    .line 43
    .line 44
    if-lt v3, v4, :cond_1

    .line 45
    const/4 v3, 0x1

    .line 46
    .line 47
    aget-object v1, v1, v3

    .line 48
    .line 49
    sget-object v4, Lcom/narvii/livelayer/ws/LiveLayerWsService;->PATH_X:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    move-result v1

    .line 68
    .line 69
    iput v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->ndcId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    :catch_1
    :cond_1
    iget v1, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->ndcId:I

    .line 72
    .line 73
    if-ne v1, v2, :cond_2

    .line 74
    .line 75
    const-string p1, "ndcId"

    .line 76
    .line 77
    const-string v0, "ndcId of live layer message is not set"

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 82
    .line 83
    :cond_2
    iget-object v1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    .line 84
    .line 85
    iget-object v2, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    check-cast v1, Lcom/narvii/util/EventDispatcher;

    .line 92
    .line 93
    if-nez v1, :cond_3

    .line 94
    return-void

    .line 95
    .line 96
    :cond_3
    iget-object v2, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->filterHelper:Lcom/narvii/util/FilterHelper;

    .line 97
    .line 98
    iget-object v3, v0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileList:Ljava/util/List;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 106
    move-result v2

    .line 107
    .line 108
    if-eqz v2, :cond_4

    .line 109
    return-void

    .line 110
    .line 111
    :cond_4
    iget p1, p1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 112
    .line 113
    const/16 v2, 0x190

    .line 114
    .line 115
    if-eq p1, v2, :cond_6

    .line 116
    .line 117
    const/16 v2, 0x191

    .line 118
    .line 119
    if-eq p1, v2, :cond_5

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :cond_5
    new-instance p1, Lcom/narvii/livelayer/ws/c;

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, v0}, Lcom/narvii/livelayer/ws/c;-><init>(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :cond_6
    new-instance p1, Lcom/narvii/livelayer/ws/b;

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, v0}, Lcom/narvii/livelayer/ws/b;-><init>(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 138
    :goto_1
    return-void
.end method

.method private isUserLoggedIn(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v0, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method private static synthetic lambda$handleLiveLayerEventMessage$0(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileList:Ljava/util/List;

    .line 5
    .line 6
    iget p0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileCount:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0, v1, p0}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserJoined(Ljava/lang/String;Ljava/util/List;I)V

    .line 10
    return-void
.end method

.method private static synthetic lambda$handleLiveLayerEventMessage$1(Lcom/narvii/livelayer/ws/LiveLayerEventMessage;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->topic:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileList:Ljava/util/List;

    .line 5
    .line 6
    iget p0, p0, Lcom/narvii/livelayer/ws/LiveLayerEventMessage;->userProfileCount:I

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0, v1, p0}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserLeft(Ljava/lang/String;Ljava/util/List;I)V

    .line 10
    return-void
.end method

.method private static synthetic lambda$onDisconnect$2(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/narvii/util/ws/WsService$WsListener;->onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    .line 4
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

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-object/from16 v4, p4

    .line 11
    .line 12
    move/from16 v5, p5

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static/range {p2 .. p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 21
    .line 22
    :cond_1
    const-string v6, "eventOrigin"

    .line 23
    .line 24
    const-string v7, "eventSource"

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->isEmpty()Z

    .line 30
    move-result v8

    .line 31
    .line 32
    if-nez v8, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v8

    .line 37
    .line 38
    check-cast v8, Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v9

    .line 43
    .line 44
    check-cast v9, Ljava/lang/String;

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v8, 0x0

    .line 47
    move-object v9, v8

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 51
    move-result-object v10

    .line 52
    .line 53
    .line 54
    invoke-static/range {p2 .. p2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 55
    move-result v11

    .line 56
    .line 57
    const-string v12, "actions"

    .line 58
    .line 59
    if-nez v11, :cond_3

    .line 60
    .line 61
    sget-object v11, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v11, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 65
    move-result-object v11

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v12, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 69
    .line 70
    :cond_3
    const-string v11, "target"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v11, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    .line 75
    const-string v13, "params"

    .line 76
    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->isEmpty()Z

    .line 81
    move-result v14

    .line 82
    .line 83
    if-nez v14, :cond_4

    .line 84
    .line 85
    sget-object v14, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v14, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 89
    move-result-object v14

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10, v13, v14}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 96
    move-result-object v10

    .line 97
    .line 98
    const/16 v14, 0x130

    .line 99
    .line 100
    const-string v15, "duration"

    .line 101
    .line 102
    move-object/from16 v16, v13

    .line 103
    .line 104
    const-string v13, "live layer"

    .line 105
    .line 106
    if-ne v5, v14, :cond_6

    .line 107
    .line 108
    iget-object v14, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    .line 112
    move-result v14

    .line 113
    .line 114
    move-object/from16 v17, v6

    .line 115
    .line 116
    const/16 v6, 0x3e8

    .line 117
    .line 118
    if-le v14, v6, :cond_5

    .line 119
    .line 120
    const-string v6, "the size of report active extraEventParams is too big"

    .line 121
    .line 122
    .line 123
    invoke-static {v13, v6}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 129
    .line 130
    :cond_5
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 134
    move-result-wide v13

    .line 135
    .line 136
    .line 137
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    move-result-object v13

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    goto :goto_1

    .line 143
    .line 144
    :cond_6
    move-object/from16 v17, v6

    .line 145
    .line 146
    const/16 v6, 0x132

    .line 147
    .line 148
    if-ne v5, v6, :cond_9

    .line 149
    .line 150
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 154
    move-result v6

    .line 155
    .line 156
    if-eqz v6, :cond_8

    .line 157
    .line 158
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v6

    .line 163
    .line 164
    check-cast v6, Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 168
    move-result-wide v13

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 172
    move-result-wide v18

    .line 173
    .line 174
    sub-long v18, v18, v13

    .line 175
    .line 176
    iget-object v6, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    if-nez v4, :cond_7

    .line 182
    .line 183
    new-instance v4, Ljava/util/HashMap;

    .line 184
    .line 185
    .line 186
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    move-result-object v6

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    const-string v14, "cannot find active time when report inactive "

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v6

    .line 212
    .line 213
    .line 214
    invoke-static {v13, v6}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    :cond_9
    :goto_1
    new-instance v6, Lcom/narvii/util/ws/WsRequest;

    .line 217
    .line 218
    .line 219
    invoke-direct {v6}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 220
    .line 221
    iput v5, v6, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 225
    move-result-object v5

    .line 226
    .line 227
    .line 228
    invoke-static/range {p2 .. p2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 229
    move-result v10

    .line 230
    .line 231
    if-nez v10, :cond_a

    .line 232
    .line 233
    sget-object v10, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 237
    move-result-object v2

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v12, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 241
    .line 242
    .line 243
    :cond_a
    invoke-virtual {v5, v11, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 244
    .line 245
    const-string v2, "ndcId"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 249
    .line 250
    if-eqz v8, :cond_b

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, v7, v8}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 254
    .line 255
    :cond_b
    if-eqz v9, :cond_c

    .line 256
    .line 257
    move-object/from16 v2, v17

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v2, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 261
    .line 262
    :cond_c
    if-nez v4, :cond_d

    .line 263
    .line 264
    new-instance v4, Ljava/util/HashMap;

    .line 265
    .line 266
    .line 267
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 268
    .line 269
    :cond_d
    iget-object v2, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->nvContext:Lcom/narvii/app/NVContext;

    .line 270
    .line 271
    const-string v3, "community"

    .line 272
    .line 273
    .line 274
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    move-result-object v2

    .line 276
    .line 277
    check-cast v2, Lcom/narvii/community/CommunityService;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 281
    move-result-object v1

    .line 282
    .line 283
    if-eqz v1, :cond_f

    .line 284
    .line 285
    iget-object v2, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 286
    .line 287
    if-eqz v2, :cond_f

    .line 288
    .line 289
    new-instance v2, Ljava/util/ArrayList;

    .line 290
    .line 291
    .line 292
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .line 294
    iget-object v1, v1, Lcom/narvii/model/Community;->userAddedTopicList:Ljava/util/List;

    .line 295
    .line 296
    .line 297
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 298
    move-result-object v1

    .line 299
    .line 300
    .line 301
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    move-result v3

    .line 303
    .line 304
    if-eqz v3, :cond_e

    .line 305
    .line 306
    .line 307
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    move-result-object v3

    .line 309
    .line 310
    check-cast v3, Lcom/narvii/model/story/StoryTopic;

    .line 311
    .line 312
    iget v3, v3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 313
    .line 314
    .line 315
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    move-result-object v3

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    goto :goto_2

    .line 321
    .line 322
    :cond_e
    const-string v1, "topicIds"

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    :cond_f
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 329
    move-result v1

    .line 330
    .line 331
    if-nez v1, :cond_10

    .line 332
    .line 333
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 337
    move-result-object v1

    .line 338
    .line 339
    move-object/from16 v2, v16

    .line 340
    .line 341
    .line 342
    invoke-virtual {v5, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v4, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    :cond_10
    iput-object v5, v6, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 348
    .line 349
    move-object/from16 v1, p6

    .line 350
    .line 351
    iput-object v1, v6, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 352
    .line 353
    iget-object v1, v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v6}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 357
    return-void
.end method

.method private subscribeTopic(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 9
    .line 10
    iput p3, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    move-result-object p3

    .line 15
    .line 16
    const-string v1, "ndcId"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 20
    .line 21
    const-string p1, "topic"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 25
    .line 26
    iput-object p3, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 27
    .line 28
    iput-object p4, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsService:Lcom/narvii/util/ws/WsService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/livelayer/ws/a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1, p2}, Lcom/narvii/livelayer/ws/a;-><init>(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 16
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 6
    .line 7
    const/16 v0, 0x190

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x191

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0, p2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->handleLiveLayerEventMessage(Lcom/narvii/util/ws/WsMessage;)V

    .line 18
    :goto_0
    return-void
.end method

.method public registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
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

    .line 1
    .line 2
    const/16 v5, 0x130

    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveStatus(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;ILcom/narvii/util/Callback;)V

    .line 12
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

    .line 1
    .line 2
    const/16 v5, 0x132

    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveStatus(ILjava/util/List;Ljava/lang/String;Ljava/util/HashMap;ILcom/narvii/util/Callback;)V

    .line 12
    return-void
.end method

.method public subscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/util/EventDispatcher;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :cond_0
    const/16 v1, 0x12c

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribeTopic(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 23
    .line 24
    :cond_1
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {v0, p3}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public unregisterWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->wsListenerEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public unsubscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/ws/LiveLayerWsService;->liveLayerEventMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/EventDispatcher;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 14
    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/EventDispatcher;->isEmpty()Z

    .line 19
    move-result p3

    .line 20
    .line 21
    if-eqz p3, :cond_2

    .line 22
    .line 23
    :cond_1
    const/16 p3, 0x12e

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribeTopic(ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 28
    :cond_2
    return-void
.end method
