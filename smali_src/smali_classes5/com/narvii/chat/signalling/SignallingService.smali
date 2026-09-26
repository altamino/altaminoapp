.class public Lcom/narvii/chat/signalling/SignallingService;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/Tag;

    .line 3
    .line 4
    const-string v1, "done"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/chat/signalling/SignallingService;->DONE:Lcom/narvii/util/Tag;

    .line 10
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
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/chat/signalling/SignallingService$1;-><init>(Lcom/narvii/chat/signalling/SignallingService;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    .line 25
    .line 26
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$19;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/narvii/chat/signalling/SignallingService$19;-><init>(Lcom/narvii/chat/signalling/SignallingService;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    const-string v0, "ws"

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/util/ws/WsService;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->lambda$respUpdateChannelType$0(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/SignallingListener;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getWsError(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic c()Lcom/narvii/util/Tag;
    .locals 1

    .line 1
    sget-object v0, Lcom/narvii/chat/signalling/SignallingService;->DONE:Lcom/narvii/util/Tag;

    return-object v0
.end method

.method private getWsError(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget-object p1, p1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 7
    .line 8
    const-string v1, "exception"

    .line 9
    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-class v0, Lcom/narvii/util/ws/WsError;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    move-object v0, p1

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/util/ws/WsError;

    .line 32
    :cond_1
    return-object v0
.end method

.method private synthetic lambda$respUpdateChannelType$0(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/SignallingListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/narvii/chat/signalling/SignallingListener;->onChannelTypeUpdateSuccess(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 4
    return-void
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

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAgoraChannel(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0xc8

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
    const-string v2, "ndcId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    const-string v2, "threadId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$8;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$8;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 31
    .line 32
    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 38
    return-void
.end method

.method public getChannelByName(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    return-object v1

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
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

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 2
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

    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadUserList(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x69

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
    const-string v2, "ndcId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    const-string v2, "threadId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$10;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$10;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 31
    .line 32
    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 38
    return-void
.end method

.method public joinThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x64

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
    const-string v2, "ndcId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    const-string v2, "threadId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$2;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 31
    .line 32
    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 38
    return-void
.end method

.method public leaveAllThreads(Z)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget v2, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 46
    .line 47
    iget-object v3, v1, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 48
    const/4 v4, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2, v3, v4}, Lcom/narvii/chat/signalling/SignallingService;->leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 52
    .line 53
    :cond_2
    iget-object v2, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-void
.end method

.method public leaveThread(ILjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 22
    .line 23
    const/16 v1, 0x67

    .line 24
    .line 25
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-string v2, "ndcId"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 35
    .line 36
    const-string v2, "threadId"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    .line 43
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$9;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/narvii/chat/signalling/SignallingService$9;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 47
    .line 48
    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 54
    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    iput-wide v1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->lostConnectionTime:J

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    check-cast p2, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    iput-wide v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->lostConnectionTime:J

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->lostConnectionTimeout:Ljava/lang/Runnable;

    .line 43
    .line 44
    .line 45
    const-wide/32 v0, 0x493e0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 49
    .line 50
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    new-instance p2, Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-class v1, Lcom/narvii/chat/signalling/ProcessKillMonitorService;

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$20;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/signalling/SignallingService$20;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/util/ws/WsError;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 11
    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 6

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/chat/signalling/SignallingService;->DONE:Lcom/narvii/util/Tag;

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 13
    .line 14
    const/16 v0, 0x66

    .line 15
    .line 16
    const-class v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 17
    .line 18
    const-string v2, "threadId"

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 23
    .line 24
    .line 25
    filled-new-array {v2}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_16

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    iget-object v2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 46
    .line 47
    const-string v2, "userList"

    .line 48
    .line 49
    .line 50
    filled-new-array {v2}, [Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    .line 62
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    .line 70
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 76
    .line 77
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$11;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/chat/signalling/SignallingService$11;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :cond_2
    const/16 v0, 0x6f

    .line 88
    .line 89
    if-ne p1, v0, :cond_4

    .line 90
    .line 91
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 92
    .line 93
    .line 94
    filled-new-array {v2}, [Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    if-eqz p1, :cond_16

    .line 106
    .line 107
    iget-object v0, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 108
    .line 109
    const-string v1, "channelType"

    .line 110
    .line 111
    .line 112
    filled-new-array {v1}, [Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 117
    move-result v0

    .line 118
    .line 119
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 120
    .line 121
    const-string v1, "status"

    .line 122
    .line 123
    .line 124
    filled-new-array {v1}, [Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 129
    move-result p2

    .line 130
    .line 131
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 132
    .line 133
    if-ne v1, v0, :cond_3

    .line 134
    .line 135
    iget v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    .line 136
    .line 137
    if-eq p2, v1, :cond_16

    .line 138
    .line 139
    :cond_3
    iput v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 140
    .line 141
    iput p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->threadStatus:I

    .line 142
    .line 143
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 144
    .line 145
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$12;

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/signalling/SignallingService$12;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 152
    .line 153
    goto/16 :goto_4

    .line 154
    .line 155
    :cond_4
    const/16 v0, 0x73

    .line 156
    .line 157
    if-ne p1, v0, :cond_5

    .line 158
    .line 159
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 160
    .line 161
    .line 162
    filled-new-array {v2}, [Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    if-eqz p1, :cond_16

    .line 174
    .line 175
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 176
    .line 177
    const-string v0, "reason"

    .line 178
    .line 179
    .line 180
    filled-new-array {v0}, [Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 185
    move-result p2

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 188
    .line 189
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$13;

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService$13;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 196
    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :cond_5
    const/16 v0, 0x71

    .line 200
    .line 201
    const-string v3, "user"

    .line 202
    .line 203
    if-ne p1, v0, :cond_8

    .line 204
    .line 205
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 206
    .line 207
    .line 208
    filled-new-array {v2}, [Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 216
    .line 217
    .line 218
    filled-new-array {v3}, [Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    .line 222
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 223
    move-result-object p2

    .line 224
    .line 225
    if-eqz p2, :cond_16

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 229
    move-result-object p2

    .line 230
    .line 231
    .line 232
    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 233
    move-result-object p2

    .line 234
    .line 235
    check-cast p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    if-eqz p1, :cond_16

    .line 242
    .line 243
    iget v0, p2, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 244
    .line 245
    iput v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 246
    .line 247
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 248
    .line 249
    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    .line 254
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    move-result v1

    .line 256
    .line 257
    if-eqz v1, :cond_7

    .line 258
    .line 259
    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    move-result-object v1

    .line 262
    .line 263
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 267
    move-result-object v1

    .line 268
    .line 269
    .line 270
    invoke-virtual {p2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 271
    move-result-object v2

    .line 272
    .line 273
    .line 274
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    move-result v1

    .line 276
    .line 277
    if-eqz v1, :cond_6

    .line 278
    .line 279
    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 281
    goto :goto_0

    .line 282
    .line 283
    :cond_7
    iget-object v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 284
    .line 285
    .line 286
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 289
    .line 290
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$14;

    .line 291
    .line 292
    .line 293
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService$14;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 297
    .line 298
    goto/16 :goto_4

    .line 299
    .line 300
    :cond_8
    const/16 v0, 0x6a

    .line 301
    .line 302
    if-eq p1, v0, :cond_10

    .line 303
    .line 304
    const/16 v4, 0x6b

    .line 305
    .line 306
    if-ne p1, v4, :cond_9

    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :cond_9
    const/16 v0, 0x75

    .line 311
    .line 312
    if-ne p1, v0, :cond_b

    .line 313
    .line 314
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 315
    .line 316
    const-string p2, "threadChannelUserInfoList"

    .line 317
    .line 318
    .line 319
    filled-new-array {p2}, [Ljava/lang/String;

    .line 320
    move-result-object p2

    .line 321
    .line 322
    .line 323
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 324
    move-result-object p1

    .line 325
    .line 326
    if-nez p1, :cond_a

    .line 327
    return-void

    .line 328
    .line 329
    .line 330
    :cond_a
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 331
    move-result-object p1

    .line 332
    .line 333
    const-class p2, Lcom/narvii/chat/signalling/ThreadChannelUserInfo;

    .line 334
    .line 335
    .line 336
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 337
    move-result-object p1

    .line 338
    .line 339
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 340
    .line 341
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$16;

    .line 342
    .line 343
    .line 344
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/signalling/SignallingService$16;-><init>(Lcom/narvii/chat/signalling/SignallingService;Ljava/util/ArrayList;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 348
    .line 349
    goto/16 :goto_4

    .line 350
    .line 351
    :cond_b
    const/16 v0, 0x80

    .line 352
    .line 353
    if-ne p1, v0, :cond_f

    .line 354
    .line 355
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 356
    .line 357
    const-string v0, "joinRole"

    .line 358
    .line 359
    .line 360
    filled-new-array {v0}, [Ljava/lang/String;

    .line 361
    move-result-object v0

    .line 362
    .line 363
    .line 364
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 365
    move-result p1

    .line 366
    .line 367
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 368
    .line 369
    .line 370
    filled-new-array {v2}, [Ljava/lang/String;

    .line 371
    move-result-object v0

    .line 372
    .line 373
    .line 374
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 375
    move-result-object p2

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 379
    move-result-object p2

    .line 380
    .line 381
    if-eqz p2, :cond_16

    .line 382
    const/4 v0, 0x2

    .line 383
    .line 384
    if-ne p1, v0, :cond_16

    .line 385
    .line 386
    iput v0, p2, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 387
    .line 388
    iget-object p1, p2, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 389
    .line 390
    if-eqz p1, :cond_d

    .line 391
    .line 392
    .line 393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 394
    move-result-object p1

    .line 395
    .line 396
    .line 397
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    move-result v1

    .line 399
    .line 400
    if-eqz v1, :cond_d

    .line 401
    .line 402
    .line 403
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    move-result-object v1

    .line 405
    .line 406
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 407
    .line 408
    iget v2, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 409
    .line 410
    iget v3, p2, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 411
    .line 412
    if-ne v2, v3, :cond_c

    .line 413
    .line 414
    iput v0, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 415
    goto :goto_1

    .line 416
    :cond_d
    const/4 v1, 0x0

    .line 417
    .line 418
    :goto_1
    if-eqz v1, :cond_e

    .line 419
    .line 420
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 421
    .line 422
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$17;

    .line 423
    .line 424
    .line 425
    invoke-direct {v0, p0, p2, v1}, Lcom/narvii/chat/signalling/SignallingService$17;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/signalling/ChannelUser;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 429
    .line 430
    :cond_e
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 431
    .line 432
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$18;

    .line 433
    .line 434
    .line 435
    invoke-direct {v0, p0, p2}, Lcom/narvii/chat/signalling/SignallingService$18;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 439
    .line 440
    goto/16 :goto_4

    .line 441
    .line 442
    :cond_f
    const/16 p2, 0x76

    .line 443
    .line 444
    if-ne p1, p2, :cond_16

    .line 445
    .line 446
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    .line 447
    .line 448
    .line 449
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 450
    move-result-object p1

    .line 451
    .line 452
    .line 453
    const p2, 0x7f120d07

    .line 454
    const/4 v0, 0x1

    .line 455
    .line 456
    .line 457
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 458
    move-result-object p1

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 462
    goto :goto_4

    .line 463
    .line 464
    :cond_10
    :goto_2
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 465
    .line 466
    .line 467
    filled-new-array {v2}, [Ljava/lang/String;

    .line 468
    move-result-object v2

    .line 469
    .line 470
    .line 471
    invoke-static {p1, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 472
    move-result-object p1

    .line 473
    .line 474
    .line 475
    invoke-virtual {p0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 476
    move-result-object p1

    .line 477
    .line 478
    if-eqz p1, :cond_16

    .line 479
    .line 480
    new-instance v2, Ljava/util/ArrayList;

    .line 481
    .line 482
    iget-object v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 483
    .line 484
    .line 485
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 486
    .line 487
    iget-object v4, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 488
    .line 489
    .line 490
    filled-new-array {v3}, [Ljava/lang/String;

    .line 491
    move-result-object v3

    .line 492
    .line 493
    .line 494
    invoke-static {v4, v3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 495
    move-result-object v3

    .line 496
    .line 497
    if-nez v3, :cond_11

    .line 498
    return-void

    .line 499
    .line 500
    .line 501
    :cond_11
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 502
    move-result-object v3

    .line 503
    .line 504
    .line 505
    invoke-static {v3, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 506
    move-result-object v1

    .line 507
    .line 508
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 509
    .line 510
    iget-object v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 511
    .line 512
    .line 513
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 514
    move-result-object v3

    .line 515
    .line 516
    .line 517
    :cond_12
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    move-result v4

    .line 519
    .line 520
    if-eqz v4, :cond_13

    .line 521
    .line 522
    .line 523
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    move-result-object v4

    .line 525
    .line 526
    check-cast v4, Lcom/narvii/chat/signalling/ChannelUser;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 530
    move-result-object v4

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 534
    move-result-object v5

    .line 535
    .line 536
    .line 537
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 538
    move-result v4

    .line 539
    .line 540
    if-eqz v4, :cond_12

    .line 541
    .line 542
    .line 543
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 544
    goto :goto_3

    .line 545
    .line 546
    :cond_13
    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 547
    .line 548
    iget v4, v1, Lcom/narvii/chat/signalling/ChannelUser;->channelUid:I

    .line 549
    .line 550
    if-ne v3, v4, :cond_14

    .line 551
    .line 552
    iget v3, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 553
    .line 554
    iget v4, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 555
    .line 556
    if-eq v3, v4, :cond_14

    .line 557
    .line 558
    iput v4, p1, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 559
    .line 560
    :cond_14
    iget p2, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 561
    .line 562
    if-ne p2, v0, :cond_15

    .line 563
    .line 564
    iget-object p2, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 565
    .line 566
    .line 567
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    .line 569
    :cond_15
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 570
    .line 571
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService$15;

    .line 572
    .line 573
    .line 574
    invoke-direct {v0, p0, p1, v2}, Lcom/narvii/chat/signalling/SignallingService$15;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 578
    :cond_16
    :goto_4
    return-void
.end method

.method respAgora(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    const-string p2, "channelName"

    .line 16
    .line 17
    .line 18
    filled-new-array {p2}, [Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 28
    .line 29
    const-string p2, "channelKey"

    .line 30
    .line 31
    .line 32
    filled-new-array {p2}, [Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelKey:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    .line 43
    const-string p2, "channelUid"

    .line 44
    .line 45
    .line 46
    filled-new-array {p2}, [Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 51
    move-result p1

    .line 52
    .line 53
    iput p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    move-result-wide p1

    .line 58
    .line 59
    iget-object p3, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 60
    .line 61
    const-string v1, "expiredTime"

    .line 62
    .line 63
    .line 64
    filled-new-array {v1}, [Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-static {p3, v1}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    .line 69
    move-result p3

    .line 70
    .line 71
    mul-int/lit16 p3, p3, 0x3e8

    .line 72
    int-to-long v1, p3

    .line 73
    add-long/2addr p1, v1

    .line 74
    .line 75
    iput-wide p1, v0, Lcom/narvii/chat/signalling/SignallingChannel;->expiredAfter:J

    .line 76
    return-object v0
.end method

.method respJoin(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    new-instance p3, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    .line 11
    invoke-direct {p3, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-object p3
.end method

.method respLeave(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    new-instance p3, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    .line 11
    invoke-direct {p3, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->channels:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    :goto_0
    return-object p3
.end method

.method respThreadUserList(ILjava/lang/String;Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p3, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    const-string p2, "userList"

    .line 16
    .line 17
    .line 18
    filled-new-array {p2}, [Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const-class p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object p2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 39
    .line 40
    iget-object p2, v0, Lcom/narvii/chat/signalling/SignallingChannel;->userList:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    return-object v0
.end method

.method respUpdateChannelType(ILjava/lang/String;ILcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    :cond_0
    iput p3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p4}, Lcom/narvii/chat/signalling/SignallingService;->getWsError(Lcom/narvii/util/ws/WsMessage;)Lcom/narvii/util/ws/WsError;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget p2, p1, Lcom/narvii/util/ws/WsError;->code:I

    .line 22
    .line 23
    const/16 p3, 0x6f

    .line 24
    .line 25
    if-ne p2, p3, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 28
    .line 29
    new-instance p2, Lcom/narvii/chat/signalling/SignallingService$6;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p0, v0}, Lcom/narvii/chat/signalling/SignallingService$6;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 36
    return-object v0

    .line 37
    .line 38
    :cond_1
    const/16 p3, 0x70

    .line 39
    .line 40
    if-ne p2, p3, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 43
    .line 44
    new-instance p2, Lcom/narvii/chat/signalling/SignallingService$7;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p0, v0}, Lcom/narvii/chat/signalling/SignallingService$7;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 60
    const/4 p3, 0x1

    .line 61
    .line 62
    .line 63
    invoke-static {p2, p1, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 71
    .line 72
    new-instance p2, Lcom/narvii/chat/signalling/a;

    .line 73
    .line 74
    .line 75
    invoke-direct {p2, p0, v0}, Lcom/narvii/chat/signalling/a;-><init>(Lcom/narvii/chat/signalling/SignallingService;Lcom/narvii/chat/signalling/SignallingChannel;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 79
    :goto_0
    return-object v0
.end method

.method respUpdateJoinRole(ILjava/lang/String;ILcom/narvii/util/ws/WsMessage;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p4, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 14
    .line 15
    const-string p2, "exception"

    .line 16
    .line 17
    .line 18
    filled-new-array {p2}, [Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-class v1, Lcom/narvii/util/ws/WsError;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/util/ws/WsError;

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object p1, p2

    .line 41
    .line 42
    :goto_0
    if-eqz p1, :cond_3

    .line 43
    .line 44
    iget-object p2, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-nez p2, :cond_2

    .line 51
    .line 52
    iget p2, p1, Lcom/narvii/util/ws/WsError;->code:I

    .line 53
    .line 54
    const/16 p3, 0x66

    .line 55
    .line 56
    if-eq p2, p3, :cond_2

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/chat/signalling/SignallingService;->context:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    .line 61
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/util/ws/WsError;->message:Ljava/lang/String;

    .line 65
    const/4 p3, 0x1

    .line 66
    .line 67
    .line 68
    invoke-static {p2, p1, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 73
    :cond_2
    return-object v0

    .line 74
    .line 75
    :cond_3
    iget-object p1, p4, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 76
    .line 77
    const-string p4, "user"

    .line 78
    .line 79
    .line 80
    filled-new-array {p4}, [Ljava/lang/String;

    .line 81
    move-result-object p4

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p4}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    const-class p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    move-object p2, p1

    .line 99
    .line 100
    check-cast p2, Lcom/narvii/chat/signalling/ChannelUser;

    .line 101
    .line 102
    :cond_4
    if-eqz p2, :cond_5

    .line 103
    .line 104
    iget p3, p2, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 105
    .line 106
    :cond_5
    iput p3, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 107
    return-object v0
.end method

.method public sendRemoveFromPresenter(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
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
    const/16 v1, 0x7e

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
    const-string v2, "ndcId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    const-string v2, "threadId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    const-string v2, "joinRole"

    .line 26
    const/4 v3, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 30
    .line 31
    const-string v2, "targetUid"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 37
    .line 38
    new-instance p3, Lcom/narvii/chat/signalling/SignallingService$3;

    .line 39
    .line 40
    .line 41
    invoke-direct {p3, p0, p1, p2, p4}, Lcom/narvii/chat/signalling/SignallingService$3;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 42
    .line 43
    iput-object p3, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 49
    return-void
.end method

.method public setKeepAliveThreadId(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->keepAliveThreadId:Ljava/lang/String;

    .line 3
    .line 4
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/signalling/SignallingService;->checkKeepAlive:Ljava/lang/Runnable;

    .line 12
    .line 13
    const-wide/16 v1, 0x190

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
.end method

.method public updateThreadChannelType(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x6c

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
    const-string v2, "ndcId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    const-string v2, "threadId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    const-string v2, "channelType"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$5;

    .line 33
    move-object v3, v1

    .line 34
    move-object v4, p0

    .line 35
    move v5, p1

    .line 36
    move-object v6, p2

    .line 37
    move v7, p3

    .line 38
    move-object v8, p4

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/signalling/SignallingService$5;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 49
    return-void
.end method

.method public updateThreadJoinRole(ILjava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x70

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
    const-string v2, "ndcId"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    const-string v2, "threadId"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 24
    .line 25
    const-string v2, "joinRole"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/chat/signalling/SignallingService$4;

    .line 33
    move-object v3, v1

    .line 34
    move-object v4, p0

    .line 35
    move v5, p1

    .line 36
    move-object v6, p2

    .line 37
    move v7, p3

    .line 38
    move-object v8, p4

    .line 39
    .line 40
    .line 41
    invoke-direct/range {v3 .. v8}, Lcom/narvii/chat/signalling/SignallingService$4;-><init>(Lcom/narvii/chat/signalling/SignallingService;ILjava/lang/String;ILcom/narvii/util/Callback;)V

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/signalling/SignallingService;->ws:Lcom/narvii/util/ws/WsService;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 49
    return-void
.end method
