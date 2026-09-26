.class public Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/statistics/StatisticsService;",
        ">;"
    }
.end annotation


# instance fields
.field root:Lcom/narvii/util/statistics/StatisticsServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/statistics/StatisticsService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->root:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    if-nez v0, :cond_1

    .line 2
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 3
    :goto_0
    new-instance v1, Lcom/narvii/util/statistics/TeaManagerStatisticsService;

    const-string v2, "Master"

    invoke-direct {v1, v0, v2}, Lcom/narvii/util/statistics/TeaManagerStatisticsService;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->root:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->getCommunityId(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->root:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    return-object p1

    :cond_2
    const-string v1, "community"

    .line 5
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/CommunityService;

    .line 6
    new-instance v1, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;

    iget-object v2, p0, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->root:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider$CommunityStatisticsService;-><init>(Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;Lcom/narvii/util/statistics/StatisticsService;ILcom/narvii/community/CommunityService;)V

    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/statistics/StatisticsService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorStatisticsServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/statistics/StatisticsService;)V

    return-void
.end method
