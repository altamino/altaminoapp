.class public Lcom/narvii/services/LocationServiceProvider;
.super Ljava/lang/Object;
.source "LocationServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/location/LocationService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/location/LocationService;
    .locals 1

    .line 11
    new-instance v0, Lcom/narvii/location/LocationService;

    invoke-direct {v0, p1}, Lcom/narvii/location/LocationService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/services/LocationServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/location/LocationService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V
    .locals 0

    .line 38
    invoke-virtual {p2}, Lcom/narvii/location/LocationService;->dispose()V

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/location/LocationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocationServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V
    .locals 0

    .line 27
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/narvii/location/LocationService;->dispose()V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/location/LocationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocationServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V
    .locals 4

    .line 20
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/narvii/location/LocationService;->getCachedCoordinate()Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0xbb8

    const-wide/16 v2, 0x2710

    .line 21
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/narvii/location/LocationService;->warmup(JJ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/location/LocationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocationServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/location/LocationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocationServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/location/LocationService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/LocationServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/location/LocationService;)V

    return-void
.end method
