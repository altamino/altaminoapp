.class public Lcom/narvii/chat/ChatPushProvider;
.super Ljava/lang/Object;
.source "ChatPushProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/pushservice/PushService$PushListener;",
        ">;",
        "Lcom/narvii/pushservice/PushService$PushListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushService$PushListener;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatPushProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushService$PushListener;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 6

    .line 51
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    const-string v3, "chat"

    invoke-virtual {v0, v2, v3}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    if-eqz v0, :cond_0

    .line 53
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->threadTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->getReadTime(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    const-string p1, "filter out dated chat push payload"

    .line 55
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    const-string/jumbo v0, "push"

    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 33
    invoke-virtual {p1, p2}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    const-string/jumbo v0, "push"

    .line 26
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method
