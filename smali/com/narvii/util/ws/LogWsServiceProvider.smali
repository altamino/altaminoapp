.class public Lcom/narvii/util/ws/LogWsServiceProvider;
.super Ljava/lang/Object;
.source "LogWsServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/ws/LogWsService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/ws/LogWsService;
    .locals 1

    .line 14
    new-instance v0, Lcom/narvii/util/ws/LogWsService;

    invoke-direct {v0, p1}, Lcom/narvii/util/ws/LogWsService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/util/ws/LogWsServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/ws/LogWsService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/ws/LogWsServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/ws/LogWsServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/ws/LogWsServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/ws/LogWsServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/ws/LogWsService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/ws/LogWsServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/ws/LogWsService;)V

    return-void
.end method
