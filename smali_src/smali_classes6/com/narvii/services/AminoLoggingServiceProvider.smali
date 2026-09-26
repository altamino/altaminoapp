.class public Lcom/narvii/services/AminoLoggingServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/logging/LoggingService;",
        ">;"
    }
.end annotation


# instance fields
.field appLaunchTime:J

.field loggingService:Lcom/narvii/logging/LoggingServiceImpl;


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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/logging/LoggingService;
    .locals 5

    const-string v0, "config"

    .line 2
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iget-object v1, p0, Lcom/narvii/services/AminoLoggingServiceProvider;->loggingService:Lcom/narvii/logging/LoggingServiceImpl;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/narvii/services/AminoLoggingServiceProvider$1;

    invoke-direct {v1, p0, p1, p1}, Lcom/narvii/services/AminoLoggingServiceProvider$1;-><init>(Lcom/narvii/services/AminoLoggingServiceProvider;Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/services/AminoLoggingServiceProvider;->loggingService:Lcom/narvii/logging/LoggingServiceImpl;

    .line 4
    :cond_0
    new-instance p1, Lcom/narvii/util/logging/LoggingServiceWrapper;

    iget-object v1, p0, Lcom/narvii/services/AminoLoggingServiceProvider;->loggingService:Lcom/narvii/logging/LoggingServiceImpl;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ndcId"

    aput-object v4, v2, v3

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {p1, v1, v2}, Lcom/narvii/util/logging/LoggingServiceWrapper;-><init>(Lcom/narvii/util/logging/LoggingService;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/AminoLoggingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/logging/LoggingService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoLoggingServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/services/AminoLoggingServiceProvider;->appLaunchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "duration"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "AppQuited"

    invoke-interface {p2, v1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p2

    const-string v0, "statistics"

    invoke-virtual {p2, v2, v0}, Lcom/narvii/app/NVApplication;->peekService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p2

    const-string v0, "Time Spent Total"

    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoLoggingServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AppLaunched"

    .line 2
    invoke-interface {p2, v0, p1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/services/AminoLoggingServiceProvider;->appLaunchTime:J

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoLoggingServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoLoggingServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoLoggingServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method
