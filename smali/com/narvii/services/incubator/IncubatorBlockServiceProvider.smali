.class public Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorBlockServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/userblock/CommunityBlockService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/userblock/CommunityBlockService;
    .locals 3

    .line 17
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/userblock/GlobalBlockService;

    const-string v1, "config"

    .line 18
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 19
    new-instance v2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-direct {v2, p1, v0, v1}, Lcom/narvii/userblock/CommunityBlockService;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/UserBlockService;I)V

    return-object v2
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/userblock/CommunityBlockService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    .line 24
    invoke-virtual {p2}, Lcom/narvii/userblock/CommunityBlockService;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    .line 39
    invoke-virtual {p2}, Lcom/narvii/userblock/CommunityBlockService;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorBlockServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method
