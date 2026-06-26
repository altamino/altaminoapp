.class Lcom/narvii/location/LocationService$GoogleGeocoder;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/narvii/location/LocationService$ReverseGeocoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GoogleGeocoder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/narvii/location/GPSCoordinate;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public reverseGeocode(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;
    .locals 7

    .line 527
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 529
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 531
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 530
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 532
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 533
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 534
    new-instance v2, Lcom/narvii/location/LocationService$GoogleAddress;

    invoke-direct {v2, v0, v1}, Lcom/narvii/location/LocationService$GoogleAddress;-><init>(Landroid/content/Context;Landroid/location/Address;)V

    .line 535
    invoke-virtual {v2}, Lcom/narvii/location/LocationService$GoogleAddress;->getCityLevelAddressText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to reverse geocoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
