.class public Lcom/narvii/account/SignupLocationFragment;
.super Lcom/narvii/app/NVFragment;
.source "SignupLocationFragment.java"

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

    .line 12
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/location/GPSCoordinate;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/location/LocationService;->getNearbyLocation(Z)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    .line 49
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/narvii/account/SignupLocationFragment;->failed:Z

    .line 50
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/narvii/location/GPSCoordinate;

    invoke-virtual {p0, p1}, Lcom/narvii/account/SignupLocationFragment;->call(Lcom/narvii/location/GPSCoordinate;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "location"

    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/location/LocationService;

    iput-object v1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/GPSCoordinate;

    iput-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    const-string v0, "address"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    invoke-virtual {p1}, Lcom/narvii/location/LocationService;->getCachedCoordinate()Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->location:Lcom/narvii/location/GPSCoordinate;

    if-nez p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    invoke-virtual {p1, p0}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/account/SignupLocationFragment;->failed:Z

    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    invoke-virtual {v0, p1, p0}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/account/SignupLocationFragment;->ls:Lcom/narvii/location/LocationService;

    invoke-virtual {v0, p0}, Lcom/narvii/location/LocationService;->abort(Lcom/narvii/util/Callback;)V

    .line 43
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p2}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/account/SignupLocationFragment;->address:Ljava/lang/String;

    return-void
.end method
