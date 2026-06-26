.class Lcom/narvii/util/ws/WsService$8$2;
.super Ljava/lang/Object;
.source "WsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/ws/WsService$8;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/ws/WsService$8;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$webSocket:Lokhttp3/WebSocket;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService$8;Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iput-object p2, p0, Lcom/narvii/util/ws/WsService$8$2;->val$webSocket:Lokhttp3/WebSocket;

    iput-object p3, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 499
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->val$webSocket:Lokhttp3/WebSocket;

    invoke-virtual {v0, v1}, Lcom/narvii/util/ws/WsService$8;->valid(Lokhttp3/WebSocket;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    const-class v2, Lcom/narvii/util/ws/WsMessage;

    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/ws/WsMessage;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/util/ws/WsService$8$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 508
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsMessage;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 509
    iget-object v2, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v2, v2, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v2, v2, Lcom/narvii/util/ws/WsService;->runningRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 510
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 511
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/ws/WsRequest;

    .line 512
    invoke-virtual {v3}, Lcom/narvii/util/ws/WsMessage;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/narvii/util/ws/WsMessage;->id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    iget-object v4, v3, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 524
    :cond_4
    iget v2, v0, Lcom/narvii/util/ws/WsMessage;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 525
    new-instance v2, Lcom/narvii/util/ws/WsError;

    iget-object v4, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "code"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "message"

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/narvii/util/ws/WsError;-><init>(ILjava/lang/String;)V

    if-eqz v1, :cond_5

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/ws/WsRequest;

    .line 530
    iget-object v4, v4, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    invoke-interface {v4, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_1

    .line 533
    :cond_5
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v1, v1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-static {v1, v2}, Lcom/narvii/util/ws/WsService;->access$300(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V

    .line 535
    iget-object v0, v0, Lcom/narvii/util/ws/WsMessage;->object:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "id"

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/util/ws/WsError;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/narvii/util/ws/WsError;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 540
    :cond_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 543
    iget-object v3, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v3, v3, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-wide v4, v3, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    const-wide/16 v7, 0x1388

    add-long/2addr v4, v7

    cmp-long v7, v1, v4

    if-lez v7, :cond_9

    .line 544
    iget-object v3, v3, Lcom/narvii/util/ws/WsService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v6}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 545
    iget-object v0, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v0, v0, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iput-wide v1, v0, Lcom/narvii/util/ws/WsService;->prevToastTime:J

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 550
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/ws/WsRequest;

    .line 551
    iget-object v2, v2, Lcom/narvii/util/ws/WsRequest;->callback:Lcom/narvii/util/Callback;

    invoke-interface {v2, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_3

    .line 555
    :cond_8
    iget-object v1, p0, Lcom/narvii/util/ws/WsService$8$2;->this$1:Lcom/narvii/util/ws/WsService$8;

    iget-object v1, v1, Lcom/narvii/util/ws/WsService$8;->this$0:Lcom/narvii/util/ws/WsService;

    iget-object v1, v1, Lcom/narvii/util/ws/WsService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v2, Lcom/narvii/util/ws/WsService$8$2$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/util/ws/WsService$8$2$1;-><init>(Lcom/narvii/util/ws/WsService$8$2;Lcom/narvii/util/ws/WsMessage;)V

    invoke-virtual {v1, v2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_9
    :goto_4
    return-void
.end method
