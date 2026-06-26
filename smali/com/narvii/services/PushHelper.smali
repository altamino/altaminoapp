.class public Lcom/narvii/services/PushHelper;
.super Ljava/lang/Object;
.source "PushHelper.java"

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
    invoke-virtual {p0, p1}, Lcom/narvii/services/PushHelper;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushService$PushListener;

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushHelper;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 2

    .line 44
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isMarketing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    const-string v1, "drawerHost"

    invoke-virtual {v0, p1, v1}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/drawer/DrawerHost;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x7530

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/narvii/drawer/DrawerHost;->refreshReminderCheck(J)Z

    :cond_0
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    const-string/jumbo v0, "push"

    .line 30
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 31
    invoke-virtual {p1, p2}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushHelper;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V
    .locals 1

    const-string/jumbo v0, "push"

    .line 24
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 25
    invoke-virtual {p1, p2}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/pushservice/PushService$PushListener;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushHelper;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushHelper;->start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PushHelper;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService$PushListener;)V

    return-void
.end method
