.class public Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/logging/LoggingService;",
        ">;"
    }
.end annotation


# instance fields
.field appLaunchTime:J

.field loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;


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
    .locals 1

    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;-><init>(Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;

    :cond_0
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/logging/LoggingService;

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->appLaunchTime:J

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

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

    iput-wide p1, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->appLaunchTime:J

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method
