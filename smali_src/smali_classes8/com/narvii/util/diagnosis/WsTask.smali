.class public Lcom/narvii/util/diagnosis/WsTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/ws/WsService$WsListener;


# instance fields
.field ws:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Ws"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "ws"

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/util/ws/WsService;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method destory()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lcom/narvii/util/diagnosis/DiagnosisTask;->destory()V

    .line 11
    return-void
.end method

.method public onConnect(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    const/4 p1, 0x0

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

    iget-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->error:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isConnected()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->result:Ljava/lang/Boolean;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/narvii/util/ws/WsRequest;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lcom/narvii/util/ws/WsRequest;-><init>()V

    .line 19
    .line 20
    const/16 v1, 0x74

    .line 21
    .line 22
    iput v1, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    const-string/jumbo v3, "threadChannelUserInfoList"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/util/diagnosis/WsTask;->ws:Lcom/narvii/util/ws/WsService;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/narvii/util/ws/WsService;->sendRequest(Lcom/narvii/util/ws/WsRequest;)V

    .line 44
    :goto_0
    return-void
.end method
