.class public Lcom/narvii/services/LiverLayerWSServiceProvider;
.super Ljava/lang/Object;
.source "LiverLayerWSServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/livelayer/ws/LiveLayerWsService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/ws/LiveLayerWsService;
    .locals 1

    .line 15
    new-instance v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-direct {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/services/LiverLayerWSServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/ws/LiveLayerWsService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiverLayerWSServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiverLayerWSServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiverLayerWSServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiverLayerWSServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V
    .locals 1

    const-string/jumbo v0, "rtc"

    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/RtcService;

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p2, Lcom/narvii/livelayer/ws/LiveLayerWsService;->reportActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiverLayerWSServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/ws/LiveLayerWsService;)V

    return-void
.end method
