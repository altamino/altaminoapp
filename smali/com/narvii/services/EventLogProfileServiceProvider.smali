.class public Lcom/narvii/services/EventLogProfileServiceProvider;
.super Ljava/lang/Object;
.source "EventLogProfileServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/services/EventLogProfileService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/EventLogProfileService;
    .locals 1

    .line 9
    new-instance v0, Lcom/narvii/services/EventLogProfileService;

    invoke-direct {v0, p1}, Lcom/narvii/services/EventLogProfileService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/services/EventLogProfileServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/EventLogProfileService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p2, Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/EventLogProfileServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p2, Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/EventLogProfileServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V
    .locals 0

    .line 19
    invoke-virtual {p2}, Lcom/narvii/services/EventLogProfileService;->resume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p2, Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/EventLogProfileServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p2, Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/EventLogProfileServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p2, Lcom/narvii/services/EventLogProfileService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/EventLogProfileServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/EventLogProfileService;)V

    return-void
.end method
