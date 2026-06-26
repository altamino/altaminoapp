.class public Lcom/narvii/services/StatsServiceProvider;
.super Ljava/lang/Object;
.source "StatsServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/stats/StatsService;",
        ">;"
    }
.end annotation


# instance fields
.field stats:Lcom/narvii/util/stats/StatsService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/stats/StatsService;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/narvii/services/StatsServiceProvider;->stats:Lcom/narvii/util/stats/StatsService;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/narvii/util/stats/StatsService;

    const/16 v1, 0x1e

    const v2, 0x493e0

    invoke-direct {v0, p1, v1, v2}, Lcom/narvii/util/stats/StatsService;-><init>(Lcom/narvii/app/NVContext;II)V

    iput-object v0, p0, Lcom/narvii/services/StatsServiceProvider;->stats:Lcom/narvii/util/stats/StatsService;

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/StatsServiceProvider;->stats:Lcom/narvii/util/stats/StatsService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/services/StatsServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/stats/StatsService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/util/stats/StatsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StatsServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V
    .locals 1

    .line 42
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 43
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 44
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    .line 45
    invoke-virtual {p2, p1}, Lcom/narvii/util/stats/StatsService;->pause(I)V

    goto :goto_0

    .line 46
    :cond_0
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p2}, Lcom/narvii/util/stats/StatsService;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/util/stats/StatsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StatsServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V
    .locals 1

    .line 31
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 33
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    .line 34
    invoke-virtual {p2, p1}, Lcom/narvii/util/stats/StatsService;->touchOrResume(I)V

    goto :goto_0

    .line 35
    :cond_0
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p2}, Lcom/narvii/util/stats/StatsService;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/util/stats/StatsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StatsServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/util/stats/StatsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StatsServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/narvii/util/stats/StatsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/StatsServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/stats/StatsService;)V

    return-void
.end method
