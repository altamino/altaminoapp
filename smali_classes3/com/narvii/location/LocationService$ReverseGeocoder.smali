.class interface abstract Lcom/narvii/location/LocationService$ReverseGeocoder;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ReverseGeocoder"
.end annotation


# virtual methods
.method public abstract accept(Lcom/narvii/location/GPSCoordinate;)Z
.end method

.method public abstract reverseGeocode(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;
.end method
