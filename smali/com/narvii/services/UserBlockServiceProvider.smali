.class public Lcom/narvii/services/UserBlockServiceProvider;
.super Ljava/lang/Object;
.source "UserBlockServiceProvider.java"

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


# instance fields
.field private global:Lcom/narvii/userblock/GlobalBlockService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/userblock/CommunityBlockService;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/narvii/services/UserBlockServiceProvider;->global:Lcom/narvii/userblock/GlobalBlockService;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/narvii/userblock/GlobalBlockService;

    invoke-direct {v0, p1}, Lcom/narvii/userblock/GlobalBlockService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/UserBlockServiceProvider;->global:Lcom/narvii/userblock/GlobalBlockService;

    :cond_0
    const-string v0, "config"

    .line 21
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 22
    new-instance v1, Lcom/narvii/userblock/CommunityBlockService;

    iget-object v2, p0, Lcom/narvii/services/UserBlockServiceProvider;->global:Lcom/narvii/userblock/GlobalBlockService;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-direct {v1, p1, v2, v0}, Lcom/narvii/userblock/CommunityBlockService;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/UserBlockService;I)V

    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/services/UserBlockServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/userblock/CommunityBlockService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/UserBlockServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/UserBlockServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/narvii/services/UserBlockServiceProvider;->global:Lcom/narvii/userblock/GlobalBlockService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/userblock/GlobalBlockService;->refresh(Z)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/UserBlockServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/narvii/services/UserBlockServiceProvider;->global:Lcom/narvii/userblock/GlobalBlockService;

    invoke-virtual {p1}, Lcom/narvii/userblock/GlobalBlockService;->start()V

    .line 28
    invoke-virtual {p2}, Lcom/narvii/userblock/CommunityBlockService;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/UserBlockServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/narvii/services/UserBlockServiceProvider;->global:Lcom/narvii/userblock/GlobalBlockService;

    invoke-virtual {p1}, Lcom/narvii/userblock/GlobalBlockService;->stop()V

    .line 44
    invoke-virtual {p2}, Lcom/narvii/userblock/CommunityBlockService;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/userblock/CommunityBlockService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/UserBlockServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/userblock/CommunityBlockService;)V

    return-void
.end method
