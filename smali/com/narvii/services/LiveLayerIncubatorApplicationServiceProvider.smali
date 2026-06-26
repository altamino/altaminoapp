.class public Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;
.super Ljava/lang/Object;
.source "LiveLayerIncubatorApplicationServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/livelayer/LiveLayerService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerService;
    .locals 1

    .line 15
    new-instance v0, Lcom/narvii/livelayer/LiveLayerService;

    invoke-direct {v0, p1}, Lcom/narvii/livelayer/LiveLayerService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LiveLayerIncubatorApplicationServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method
