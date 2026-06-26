.class public Lcom/narvii/widget/AddressView;
.super Landroid/widget/TextView;
.source "AddressView.java"

# interfaces
.implements Lcom/narvii/location/LocationService$GeocodeResultListener;


# instance fields
.field address:Ljava/lang/String;

.field darkTheme:Z

.field emptyPlaceholder:Z

.field lat:I

.field lng:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AddressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static rawCoord(II)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/narvii/location/GPSCoordinate;->latToDegree(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/narvii/location/GPSCoordinate;->lngToDegree(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocationService()Lcom/narvii/location/LocationService;
    .locals 2

    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "location"

    .line 33
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/LocationService;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/AddressView;->lat:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/AddressView;->lng:I

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 79
    iget-boolean p1, p0, Lcom/narvii/widget/AddressView;->emptyPlaceholder:Z

    if-nez p1, :cond_1

    .line 80
    iget p1, p0, Lcom/narvii/widget/AddressView;->lat:I

    invoke-static {p1, v0}, Lcom/narvii/widget/AddressView;->rawCoord(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p2}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    .line 84
    invoke-interface {p2}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/narvii/widget/AddressView;->darkTheme:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 43
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/AddressView;->darkTheme:Z

    if-eqz p1, :cond_1

    const p1, -0x66000001

    goto :goto_0

    :cond_1
    const p1, -0x828283

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setLatLngE6(IILjava/lang/String;Z)V
    .locals 1

    .line 48
    iget v0, p0, Lcom/narvii/widget/AddressView;->lat:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/narvii/widget/AddressView;->lng:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/AddressView;->emptyPlaceholder:Z

    if-eq v0, p4, :cond_2

    .line 49
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iput p1, p0, Lcom/narvii/widget/AddressView;->lat:I

    .line 51
    iput p2, p0, Lcom/narvii/widget/AddressView;->lng:I

    .line 52
    iput-object p3, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, Lcom/narvii/widget/AddressView;->emptyPlaceholder:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 54
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/narvii/widget/AddressView;->getLocationService()Lcom/narvii/location/LocationService;

    move-result-object p3

    if-nez p3, :cond_1

    if-nez p4, :cond_2

    .line 58
    invoke-static {p1, p2}, Lcom/narvii/widget/AddressView;->rawCoord(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1, p2}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    .line 62
    invoke-virtual {p3, p1, p0}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    :cond_2
    :goto_0
    return-void
.end method
