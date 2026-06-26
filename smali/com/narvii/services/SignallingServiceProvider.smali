.class public Lcom/narvii/services/SignallingServiceProvider;
.super Ljava/lang/Object;
.source "SignallingServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/chat/signalling/SignallingService;",
        ">;"
    }
.end annotation


# instance fields
.field pendingPause:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/signalling/SignallingService;
    .locals 1

    .line 16
    new-instance v0, Lcom/narvii/chat/signalling/SignallingService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/signalling/SignallingService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/services/SignallingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/signalling/SignallingService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SignallingServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 2

    .line 34
    new-instance p1, Lcom/narvii/services/SignallingServiceProvider$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/services/SignallingServiceProvider$1;-><init>(Lcom/narvii/services/SignallingServiceProvider;Lcom/narvii/chat/signalling/SignallingService;)V

    iput-object p1, p0, Lcom/narvii/services/SignallingServiceProvider;->pendingPause:Ljava/lang/Runnable;

    .line 40
    iget-object p1, p0, Lcom/narvii/services/SignallingServiceProvider;->pendingPause:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SignallingServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/narvii/services/SignallingServiceProvider;->pendingPause:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 27
    sget-object p2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/narvii/services/SignallingServiceProvider;->pendingPause:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SignallingServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SignallingServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/chat/signalling/SignallingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/SignallingServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V

    return-void
.end method
