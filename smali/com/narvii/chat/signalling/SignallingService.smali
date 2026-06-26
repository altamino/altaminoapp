.class public Lcom/narvii/chat/signalling/SignallingService;
.super Ljava/lang/Object;
.source "SignallingService.java"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;


# static fields
.field public static final CHANNEL_TYPE_AUDIO:I = 0x1

.field public static final CHANNEL_TYPE_AVATAR:I = 0x3

.field public static final CHANNEL_TYPE_NONE:I = 0x0

.field public static final CHANNEL_TYPE_SCREEN_ROOM:I = 0x5

.field public static final CHANNEL_TYPE_VIDEO:I = 0x4

.field public static final CONNECTION_LOST_TIMEOUT:I = 0x493e0

.field private static final DONE:Lcom/narvii/util/Tag;

.field public static final JOIN_ROLE_AUDIENCE:I = 0x2

.field public static final JOIN_ROLE_GUEST:I = 0x0

.field public static final JOIN_ROLE_GUEST_AUDIENCE:I = 0x3

.field public static final JOIN_ROLE_PRESENTER:I = 0x1

.field public static final PING_SERVER_INTERVAL:I = 0xea60


# instance fields
.field final channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            ">;"
        }
    .end annotation
.end field

.field final checkKeepAlive:Ljava/lang/Runnable;

.field context:Lcom/narvii/app/NVContext;

.field keepAliveThreadId:Ljava/lang/String;

.field public final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/signalling/SignallingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lostConnectionTimeout:Ljava/lang/Runnable;

.field ws:Lcom/narvii/util/ws/WsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "done"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/signalling/SignallingService;->DONE:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/signalling/SignallingService$1;-><init>(Lcom/narvii/chat/signalling/SignallingService;)V

    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    .line 731
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$19;

    invoke-direct {v0, p0}, Lcom/narvii/chat/signalling/SignallingService$19;-><init>(Lcom/narvii/chat/signalling/SignallingService;)V

    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "ws"

    .line 62
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ws/WsService;

    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 63
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Lcom/narvii/util/Tag;
    .locals 1

    .line 33
    sget-object v0, Lcom/narvii/chat/signalling/SignallingService;->DONE:Lcom/narvii/util/Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getWsError(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    move-result-object p0

    return-object p0
.end method

.method private getWsError(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 371
    :cond_0
    iget-object p1, p1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "exception"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/util/ws/WsError;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/narvii/util/ws/WsError;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public channelList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 386
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0xc8

    .line 387
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 388
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 389
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "threadId"

    .line 390
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 391
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 393
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$8;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 410
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public getChannelByName(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 100
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 119
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 110
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKeepAliveThreadId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadUserList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 488
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x69

    .line 489
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 490
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 491
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "threadId"

    .line 492
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 493
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 495
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$10;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 522
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public joinThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 137
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x64

    .line 138
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 139
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 140
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "threadId"

    .line 141
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 142
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 144
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$2;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 174
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public synthetic lambda$respUpdateChannelType$0$SignallingService(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 0

    .line 362
    invoke-interface {p2, p0, p1}, Lcom/narvii/chat/signalling/SignallingListener;->onChannelTypeUpdateSuccess(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method public leaveAllThreads(Z)V
    .locals 5

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    if-nez p1, :cond_1

    .line 85
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v2}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 435
    :cond_0
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x67

    .line 436
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 437
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 438
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "threadId"

    .line 439
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 440
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 442
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$9;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 465
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 3

    .line 710
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/signalling/SignallingChannel;

    const-wide/16 v1, 0x0

    .line 711
    iput-wide v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->lostConnectionTime:J

    goto :goto_0

    .line 713
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 2

    .line 718
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 719
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->lostConnectionTime:J

    goto :goto_0

    .line 722
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 726
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-class v1, Lcom/narvii/chat/signalling/ProcessKillMonitorService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 1

    .line 757
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$20;

    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/signalling/SignallingService$20;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsError;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 7

    .line 542
    const-class p1, Lcom/narvii/chat/signalling/ChannelUser;

    if-nez p2, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    sget-object v1, Lcom/narvii/chat/signalling/SignallingService;->DONE:Lcom/narvii/util/Tag;

    if-ne v0, v1, :cond_1

    return-void

    .line 547
    :cond_1
    iget v0, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v1, 0x66

    const-string/jumbo v2, "threadId"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 549
    iget-object v0, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v4, [Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-virtual {p0, v0}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 553
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "userList"

    aput-object v4, v2, v3

    invoke-static {p2, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    .line 554
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 555
    iget-object p2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 556
    iget-object p2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 557
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/chat/signalling/SignallingService$11;

    invoke-direct {p2, p0, v0, v1}, Lcom/narvii/chat/signalling/SignallingService$11;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto/16 :goto_3

    :cond_2
    const/16 v1, 0x6f

    if-ne v0, v1, :cond_4

    .line 566
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 569
    iget-object v0, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "channelType"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v0

    .line 570
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "status"

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p2

    .line 571
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    if-ne v1, v0, :cond_3

    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    if-eq p2, v1, :cond_16

    .line 572
    :cond_3
    iput v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 573
    iput p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    .line 574
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$12;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/signalling/SignallingService$12;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0x73

    if-ne v0, v1, :cond_5

    .line 584
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 587
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "reason"

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p2

    .line 588
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService$13;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;I)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto/16 :goto_3

    :cond_5
    const/16 v1, 0x71

    const-string/jumbo v5, "user"

    if-ne v0, v1, :cond_8

    .line 599
    iget-object v0, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v4, [Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v4, [Ljava/lang/String;

    aput-object v5, v1, v3

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 602
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 603
    invoke-virtual {p0, v0}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 605
    iget v0, p1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iput v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 606
    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 607
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 608
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 609
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 610
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 613
    :cond_7
    iget-object v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/chat/signalling/SignallingService$14;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto/16 :goto_3

    :cond_8
    const/16 v1, 0x6a

    if-eq v0, v1, :cond_10

    const/16 v6, 0x6b

    if-ne v0, v6, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 p1, 0x75

    if-ne v0, p1, :cond_b

    .line 657
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array p2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "threadChannelUserInfoList"

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 661
    :cond_a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 662
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$16;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/signalling/SignallingService$16;-><init>(Lcom/narvii/chat/signalling/SignallingService;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto/16 :goto_3

    :cond_b
    const/16 p1, 0x80

    if-ne v0, p1, :cond_f

    .line 669
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "joinRole"

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    .line 670
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 671
    invoke-virtual {p0, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p2

    if-eqz p2, :cond_16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 673
    iput v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    const/4 p1, 0x0

    .line 675
    iget-object v1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 676
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 677
    iget v3, v2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    iget v4, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-ne v3, v4, :cond_c

    .line 679
    iput v0, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    move-object p1, v2

    :cond_d
    if-eqz p1, :cond_e

    .line 687
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$17;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/chat/signalling/SignallingService$17;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 695
    :cond_e
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$18;

    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/signalling/SignallingService$18;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto/16 :goto_3

    :cond_f
    const/16 p1, 0x76

    if-ne v0, p1, :cond_16

    .line 703
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0bdd

    invoke-static {p1, p2, v4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_3

    .line 624
    :cond_10
    :goto_1
    iget-object v0, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v6, v4, [Ljava/lang/String;

    aput-object v2, v6, v3

    invoke-static {v0, v6}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p0, v0}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 627
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 628
    iget-object v6, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v6, v4}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    if-nez v3, :cond_11

    return-void

    .line 632
    :cond_11
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 633
    iget-object v3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 634
    :cond_12
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 635
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 636
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 637
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 641
    :cond_13
    iget v3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    iget v4, p1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    if-ne v3, v4, :cond_14

    iget v3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    iget v4, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v3, v4, :cond_14

    .line 642
    iput v4, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 644
    :cond_14
    iget p2, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    if-ne p2, v1, :cond_15

    .line 645
    iget-object p2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_15
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/chat/signalling/SignallingService$15;

    invoke-direct {p2, p0, v0, v2}, Lcom/narvii/chat/signalling/SignallingService$15;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_16
    :goto_3
    return-void
.end method

.method respAgora(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 5

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 420
    :cond_0
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "channelName"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 421
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, p2, [Ljava/lang/String;

    const-string v3, "channelKey"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 422
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, p2, [Ljava/lang/String;

    const-string v3, "channelUid"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "expiredTime"

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    add-long/2addr v3, p1

    iput-wide v3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->expiredAfter:J

    return-object v0
.end method

.method respJoin(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p3

    if-nez p3, :cond_0

    .line 182
    new-instance p3, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p3, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p3
.end method

.method respLeave(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p3

    if-nez p3, :cond_0

    .line 473
    new-instance p3, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {p3, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-object p3
.end method

.method respThreadUserList(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 532
    :cond_0
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string/jumbo v1, "userList"

    aput-object v1, p2, p3

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/chat/signalling/ChannelUser;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 534
    iget-object p2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 535
    iget-object p2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method respUpdateChannelType(ILjava/lang/String;ILcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 337
    :cond_0
    iput p3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 338
    invoke-direct {p0, p4}, Lcom/narvii/chat/signalling/SignallingService;->getWsError(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 341
    iget p2, p1, Lcom/narvii/util/ws/WsError;->code:I

    const/16 p3, 0x6f

    if-ne p2, p3, :cond_1

    .line 342
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/chat/signalling/SignallingService$6;

    invoke-direct {p2, p0, v0}, Lcom/narvii/chat/signalling/SignallingService$6;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-object v0

    :cond_1
    const/16 p3, 0x70

    if-ne p2, p3, :cond_2

    .line 350
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/chat/signalling/SignallingService$7;

    invoke-direct {p2, p0, v0}, Lcom/narvii/chat/signalling/SignallingService$7;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p1, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 362
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/chat/signalling/-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc;

    invoke-direct {p2, p0, v0}, Lcom/narvii/chat/signalling/-$$Lambda$SignallingService$jVpB6d0aJ9wiXGL6PhKaMgBANUc;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :goto_0
    return-object v0
.end method

.method respUpdateJoinRole(ILjava/lang/String;ILcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 4

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 270
    :cond_0
    iget-object p1, p4, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "exception"

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 273
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/narvii/util/ws/WsError;

    invoke-static {p1, v3}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ws/WsError;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 276
    iget-object p3, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p1, Lcom/narvii/util/ws/WsError;->code:I

    const/16 p4, 0x66

    if-eq p3, p4, :cond_2

    .line 277
    iget-object p3, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p1, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_2
    return-object v0

    .line 281
    :cond_3
    iget-object p1, p4, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array p2, p2, [Ljava/lang/String;

    const-string/jumbo p4, "user"

    aput-object p4, p2, v2

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 284
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/chat/signalling/ChannelUser;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    :cond_4
    if-eqz v1, :cond_5

    .line 286
    iget p3, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    :cond_5
    iput p3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    return-object v0
.end method

.method public sendRemoveFromPresenter(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4

    .line 190
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x7e

    .line 191
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 192
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 193
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "threadId"

    .line 194
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "joinRole"

    const/4 v3, 0x2

    .line 195
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "targetUid"

    .line 196
    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 197
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 199
    new-instance p3, Lcom/narvii/chat/signalling/SignallingService$3;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/narvii/chat/signalling/SignallingService$3;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    iput-object p3, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 219
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public setKeepAliveThreadId(Ljava/lang/String;)V
    .locals 3

    .line 71
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    .line 72
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateThreadChannelType(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 9

    .line 298
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x6c

    .line 299
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 300
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 301
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "threadId"

    .line 302
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "channelType"

    .line 303
    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 304
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 305
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$5;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/signalling/SignallingService$5;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;ILcom/narvii/util/Callback;)V

    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 327
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 9

    .line 230
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x70

    .line 231
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 232
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    const-string v2, "ndcId"

    .line 233
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string/jumbo v2, "threadId"

    .line 234
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v2, "joinRole"

    .line 235
    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 236
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 238
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$4;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/signalling/SignallingService$4;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;ILcom/narvii/util/Callback;)V

    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 259
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method
