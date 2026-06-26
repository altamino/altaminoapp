.class public Lcom/narvii/services/RankingServiceProvider;
.super Ljava/lang/Object;
.source "RankingServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/ranking/RankingService;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/ranking/RankingService;
    .locals 1

    .line 13
    new-instance v0, Lcom/narvii/util/ranking/RankingService;

    invoke-direct {v0, p1}, Lcom/narvii/util/ranking/RankingService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/RankingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/ranking/RankingService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RankingServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RankingServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V
    .locals 0

    .line 23
    invoke-virtual {p2}, Lcom/narvii/util/ranking/RankingService;->reset()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RankingServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RankingServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/util/ranking/RankingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/RankingServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/ranking/RankingService;)V

    return-void
.end method
