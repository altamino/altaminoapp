.class public Lcom/narvii/widget/AddressView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AddressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static rawCoord(II)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/narvii/location/GPSCoordinate;->latToDegree(I)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p0, ", "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/location/GPSCoordinate;->lngToDegree(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    .line 35
    :cond_0
    const-string p0, ""

    .line 36
    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocationService()Lcom/narvii/location/LocationService;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "location"

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/location/LocationService;

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/widget/AddressView;->lat:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 16
    move-result p1

    .line 17
    .line 18
    iget v0, p0, Lcom/narvii/widget/AddressView;->lng:I

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/narvii/widget/AddressView;->emptyPlaceholder:Z

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget p1, p0, Lcom/narvii/widget/AddressView;->lat:I

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/narvii/widget/AddressView;->rawCoord(II)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p2}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Lcom/narvii/location/ReadableAddress;->getCityLevelAddressText()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/AddressView;->darkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/AddressView;->darkTheme:Z

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    .line 12
    const p1, -0x66000001

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_1
    const p1, -0x828283

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    return-void
.end method

.method public setLatLngE6(IILjava/lang/String;Z)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AddressView;->lat:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/widget/AddressView;->lng:I

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/widget/AddressView;->emptyPlaceholder:Z

    .line 19
    .line 20
    if-eq v0, p4, :cond_2

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iput p1, p0, Lcom/narvii/widget/AddressView;->lat:I

    .line 26
    .line 27
    iput p2, p0, Lcom/narvii/widget/AddressView;->lng:I

    .line 28
    .line 29
    iput-object p3, p0, Lcom/narvii/widget/AddressView;->address:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean p4, p0, Lcom/narvii/widget/AddressView;->emptyPlaceholder:Z

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result p3

    .line 40
    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/widget/AddressView;->getLocationService()Lcom/narvii/location/LocationService;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    if-nez p3, :cond_1

    .line 48
    .line 49
    if-nez p4, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/narvii/widget/AddressView;->rawCoord(II)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {p1, p2}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1, p0}, Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 65
    :cond_2
    :goto_0
    return-void
.end method
