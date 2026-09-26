.class Lcom/narvii/location/LocationService$GoogleGeocoder;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    .line 17
    move-result-wide v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    .line 21
    move-result-wide v4

    .line 22
    const/4 v6, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-lez v2, :cond_0

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Landroid/location/Address;

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/location/LocationService$GoogleAddress;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v0, v1}, Lcom/narvii/location/LocationService$GoogleAddress;-><init>(Landroid/content/Context;Landroid/location/Address;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/location/LocationService$GoogleAddress;->getCityLevelAddressText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v2, "fail to reverse geocoding "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :cond_0
    const/4 p1, 0x0

    .line 73
    return-object p1
.end method
