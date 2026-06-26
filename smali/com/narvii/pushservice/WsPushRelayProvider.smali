.class public Lcom/narvii/pushservice/WsPushRelayProvider;
.super Ljava/lang/Object;
.source "WsPushRelayProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/util/ws/WsService$WsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/pushservice/WsPushRelayProvider;",
        ">;",
        "Lcom/narvii/util/ws/WsService$WsListener;"
    }
.end annotation


# instance fields
.field push:Lcom/narvii/pushservice/PushService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/WsPushRelayProvider;
    .locals 2

    const-string/jumbo v0, "ws"

    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsService;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "push"

    .line 22
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    iput-object p1, p0, Lcom/narvii/pushservice/WsPushRelayProvider;->push:Lcom/narvii/pushservice/PushService;

    .line 23
    iget-object p1, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/WsPushRelayProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/WsPushRelayProvider;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V
    .locals 0

    const-string/jumbo p2, "ws"

    .line 50
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ws/WsService;

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/pushservice/WsPushRelayProvider;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/WsPushRelayProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V

    return-void
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
    .locals 2

    .line 58
    iget p1, p2, Lcom/narvii/util/ws/WsMessage;->type:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p1, p2, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "payload"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/pushservice/PushPayload;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushPayload;

    if-eqz p1, :cond_0

    .line 64
    iget-object p2, p0, Lcom/narvii/pushservice/WsPushRelayProvider;->push:Lcom/narvii/pushservice/PushService;

    invoke-virtual {p2, p1}, Lcom/narvii/pushservice/PushService;->dispatchPushPayload(Lcom/narvii/pushservice/PushPayload;)V

    :cond_0
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/pushservice/WsPushRelayProvider;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/WsPushRelayProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/pushservice/WsPushRelayProvider;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/WsPushRelayProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/pushservice/WsPushRelayProvider;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/WsPushRelayProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/pushservice/WsPushRelayProvider;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/WsPushRelayProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/WsPushRelayProvider;)V

    return-void
.end method
