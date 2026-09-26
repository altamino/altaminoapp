.class public Lcom/narvii/chat/ChatPushProvider;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushService$PushListener;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatPushProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushService$PushListener;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 14
    .line 15
    const-string v3, "chat"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->threadTime:Ljava/util/Date;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->getReadTime(Ljava/lang/String;)J

    .line 41
    move-result-wide v4

    .line 42
    .line 43
    cmp-long p1, v2, v4

    .line 44
    .line 45
    if-gez p1, :cond_0

    .line 46
    .line 47
    const-string p1, "filter out dated chat push payload"

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 51
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_0
    return v1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    const-string v0, "push"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 3
    invoke-virtual {p1, p2}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    const-string v0, "push"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 3
    invoke-virtual {p1, p2}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatPushProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method
