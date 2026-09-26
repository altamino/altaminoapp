.class public Lcom/narvii/account/SignupLocationFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;
.implements Lcom/narvii/location/LocationService$GeocodeResultListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/app/NVFragment;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/location/GPSCoordinate;",
        ">;",
        "Lcom/narvii/location/LocationService$GeocodeResultListener;"
    }
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field failed:Z

.field location:Lcom/narvii/location/GPSCoordinate;

.field ls:Lcom/narvii/location/LocationService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/location/GPSCoordinate;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/narvii/location/LocationService;->getNearbyLocation(Z)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/narvii/account/SignupLocationFragment;->failed:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    .line 3
    invoke-virtual {v0, p1, p0}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/location/GPSCoordinate;

    invoke-virtual {p0, p1}, Lcom/narvii/account/SignupLocationFragment;->call(Lcom/narvii/location/GPSCoordinate;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "location"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Lcom/narvii/location/LocationService;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/location/GPSCoordinate;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    .line 24
    .line 25
    const-string v0, "address"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/location/LocationService;->getCachedCoordinate()Lcom/narvii/location/GPSCoordinate;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;)Z

    .line 53
    move-result p1

    .line 54
    .line 55
    xor-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    iput-boolean p1, p0, Lcom/narvii/account/SignupLocationFragment;->failed:Z

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, p0}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 68
    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/location/LocationService;->abort(Lcom/narvii/util/Callback;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method public onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p2}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    :goto_0
    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    .line 11
    return-void
.end method
