.class public final Lcom/narvii/chat/waitinglist/WaitingListService;
.super Ljava/lang/Object;
.source "WaitingListService.kt"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/waitinglist/WaitingListService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/chat/waitinglist/WaitingListService$Companion;

.field private static final DONE:Lcom/narvii/util/Tag;


# instance fields
.field private final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/waitinglist/WaitingListListener;",
            ">;"
        }
    .end annotation
.end field

.field private final signallingService:Lcom/narvii/chat/signalling/SignallingService;

.field private final ws:Lcom/narvii/util/ws/WsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/chat/waitinglist/WaitingListService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->Companion:Lcom/narvii/chat/waitinglist/WaitingListService$Companion;

    .line 26
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "done"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->DONE:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ws"

    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ctx.getService(\"ws\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/util/ws/WsService;

    iput-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    const-string v0, "signalling"

    .line 22
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/signalling/SignallingService;

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    .line 23
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 30
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getChannelByThread(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDONE$cp()Lcom/narvii/util/Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->DONE:Lcom/narvii/util/Tag;

    return-object v0
.end method

.method private final getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(ILjava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/narvii/chat/signalling/SignallingChannel;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/signalling/SignallingChannel;-><init>(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private final wsCallback(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/narvii/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/narvii/util/ws/WsMessage;",
            "+",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private final wsCallback2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/narvii/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/narvii/util/ws/WsMessage;",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "+",
            "Ljava/lang/Object;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback2$1;

    invoke-direct {v0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$wsCallback2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method


# virtual methods
.method public final getListeners()Lcom/narvii/util/EventDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/chat/waitinglist/WaitingListListener;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

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
    .locals 4

    if-eqz p2, :cond_4

    .line 103
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->tag:Ljava/lang/Object;

    sget-object v0, Lcom/narvii/chat/waitinglist/WaitingListService;->DONE:Lcom/narvii/util/Tag;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 106
    :cond_0
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v0, 0x82

    const-string v1, "threadId"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x83

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    iget-object p2, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "userProfileList"

    aput-object v3, v1, v2

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcom/narvii/model/User;

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    .line 124
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_2

    .line 126
    iget-object v1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->userWaitList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;

    invoke-direct {v1, p1, v0}, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$2;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array p2, v3, [Ljava/lang/String;

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->signallingService:Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/signalling/SignallingService;->getChannelByThread(Ljava/lang/String;)Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 112
    iget-object p2, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$1;

    invoke-direct {v0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService$onWsMessage$1;-><init>(Lcom/narvii/chat/signalling/SignallingChannel;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final waitListClean(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "threadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v1}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v2, 0x84

    .line 36
    iput v2, v1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 37
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const-string v3, "ndcId"

    .line 38
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 39
    invoke-virtual {v2, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 40
    iput-object v2, v1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 41
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListClean$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/narvii/util/Callback;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 47
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public final waitListJoin(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "threadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v1}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v2, 0x8a

    .line 88
    iput v2, v1, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 89
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    const-string v3, "ndcId"

    .line 90
    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 91
    invoke-virtual {v2, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 92
    iput-object v2, v1, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 94
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoin$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoin$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/narvii/util/Callback;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 98
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v1}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public final waitListJoinApprove(ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "threadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v2}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v3, 0x86

    .line 53
    iput v3, v2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 54
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    const-string v4, "ndcId"

    .line 55
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 56
    invoke-virtual {v3, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 57
    invoke-virtual {v3, v1, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 58
    iput-object v3, v2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 59
    new-instance p3, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinApprove$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback2(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/narvii/util/Callback;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 65
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v2}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method

.method public final waitListJoinCancel(ILjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "threadId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v2, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v2}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v3, 0x88

    .line 71
    iput v3, v2, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 72
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    const-string v4, "ndcId"

    .line 73
    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 74
    invoke-virtual {v3, v0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 75
    invoke-virtual {v3, v1, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 76
    iput-object v3, v2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 78
    new-instance p3, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinCancel$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListService$waitListJoinCancel$1;-><init>(Lcom/narvii/chat/waitinglist/WaitingListService;ILjava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/waitinglist/WaitingListService;->wsCallback(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lcom/narvii/util/Callback;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    .line 82
    iget-object p1, p0, Lcom/narvii/chat/waitinglist/WaitingListService;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {p1, v2}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    return-void
.end method
