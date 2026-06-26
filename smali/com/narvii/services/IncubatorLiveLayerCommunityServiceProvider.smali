.class public Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorLiveLayerCommunityServiceProvider.java"

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

.field final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/livelayer/LiveLayerService;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->cache:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerService;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    iget-object v0, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->actions:Ljava/util/List;

    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_BROWSING:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->cache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    :goto_0
    if-nez v1, :cond_2

    .line 36
    new-instance v1, Lcom/narvii/livelayer/LiveLayerService;

    invoke-direct {v1, p1}, Lcom/narvii/livelayer/LiveLayerService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 37
    iget-object p1, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->cache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/livelayer/LiveLayerService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->actions:Ljava/util/List;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 57
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onPause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->actions:Ljava/util/List;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->reportActive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 51
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onResume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 45
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onStart()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 62
    invoke-virtual {p2}, Lcom/narvii/livelayer/LiveLayerService;->onStop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/livelayer/LiveLayerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/IncubatorLiveLayerCommunityServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/livelayer/LiveLayerService;)V

    return-void
.end method
