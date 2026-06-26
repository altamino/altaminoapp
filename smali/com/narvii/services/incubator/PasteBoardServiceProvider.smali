.class public Lcom/narvii/services/incubator/PasteBoardServiceProvider;
.super Ljava/lang/Object;
.source "PasteBoardServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/master/invitation/PasteBoardService;",
        ">;"
    }
.end annotation


# instance fields
.field final check:Ljava/lang/Runnable;

.field ignoreSessionUrl:Ljava/lang/String;

.field service:Lcom/narvii/master/invitation/PasteBoardService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;

    invoke-direct {v0, p0}, Lcom/narvii/services/incubator/PasteBoardServiceProvider$1;-><init>(Lcom/narvii/services/incubator/PasteBoardServiceProvider;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->check:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/master/invitation/PasteBoardService;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/narvii/master/invitation/PasteBoardService;

    invoke-direct {v0, p1}, Lcom/narvii/master/invitation/PasteBoardService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/ForwardActivity;

    if-eqz v0, :cond_1

    .line 45
    check-cast p1, Lcom/narvii/app/ForwardActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    invoke-virtual {p1}, Lcom/narvii/master/invitation/PasteBoardService;->getPasteBoardLink()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->ignoreSessionUrl:Ljava/lang/String;

    .line 48
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->check:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->service:Lcom/narvii/master/invitation/PasteBoardService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/master/invitation/PasteBoardService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/master/invitation/PasteBoardService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V
    .locals 1

    .line 69
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p2}, Lcom/narvii/master/invitation/PasteBoardService;->getPasteBoardLink()Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->ignoreSessionUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isInviteLink(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-static {p1}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p2, p1}, Lcom/narvii/master/invitation/PasteBoardService;->updateUrl(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->ignoreSessionUrl:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/master/invitation/PasteBoardService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V
    .locals 2

    .line 60
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 62
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->check:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object p1, p0, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->check:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/master/invitation/PasteBoardService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/master/invitation/PasteBoardService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/master/invitation/PasteBoardService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/PasteBoardServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/master/invitation/PasteBoardService;)V

    return-void
.end method
