.class public Lcom/narvii/util/diagnosis/WsTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "WsTask.java"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;


# instance fields
.field ws:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "Ws"

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    const-string v0, "ws"

    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ws/WsService;

    iput-object p1, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    .line 22
    iget-object p1, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method destory()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 28
    invoke-super {p0}, Lcom/narvii/util/diagnosis/DiagnosisTask;->destory()V

    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 70
    iput-object p2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    const/16 v1, 0x74

    .line 37
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 38
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 39
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    const-string v3, "threadChannelUserInfoList"

    .line 40
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 41
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    iget-object v1, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    invoke-virtual {v1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    :goto_0
    return-void
.end method
