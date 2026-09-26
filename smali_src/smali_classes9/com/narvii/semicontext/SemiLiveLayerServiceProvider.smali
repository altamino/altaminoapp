.class public Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

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


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->actions:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerService;
    .locals 2

    iget-object v0, p0, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->actions:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->actions:Ljava/util/List;

    .line 3
    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/narvii/livelayer/LiveLayerService;

    invoke-direct {v0, p1}, Lcom/narvii/livelayer/LiveLayerService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->actions:Ljava/util/List;

    const-string v0, ""

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onPause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->actions:Ljava/util/List;

    const-string v0, ""

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onResume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onStart()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onStop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiLiveLayerServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method
