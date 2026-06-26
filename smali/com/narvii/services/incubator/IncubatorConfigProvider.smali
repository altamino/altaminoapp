.class public Lcom/narvii/services/incubator/IncubatorConfigProvider;
.super Ljava/lang/Object;
.source "IncubatorConfigProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/config/ConfigService;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/config/ConfigService;
    .locals 2

    .line 17
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    new-instance v1, Lcom/narvii/app/incubator/IncubatorConfigService;

    invoke-direct {v1, p1, v0}, Lcom/narvii/app/incubator/IncubatorConfigService;-><init>(Lcom/narvii/app/NVContext;I)V

    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorConfigProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/config/ConfigService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/config/ConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorConfigProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/config/ConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorConfigProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V
    .locals 2

    .line 28
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 29
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x493e0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/narvii/config/ConfigService;->update(J)V

    :cond_1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/config/ConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorConfigProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/config/ConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorConfigProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/config/ConfigService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorConfigProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/config/ConfigService;)V

    return-void
.end method
