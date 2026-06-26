.class public Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorLoggingServiceProvider.java"

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
.field loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/logging/LoggingService;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider$1;-><init>(Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->loggingServiceImpl:Lcom/narvii/logging/LoggingServiceImpl;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/logging/LoggingService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorLoggingServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/logging/LoggingService;)V

    return-void
.end method
