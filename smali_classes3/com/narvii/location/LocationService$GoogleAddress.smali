.class Lcom/narvii/location/LocationService$GoogleAddress;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/narvii/location/ReadableAddress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleAddress"
.end annotation


# instance fields
.field address:Landroid/location/Address;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/Address;)V
    .locals 0

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/narvii/location/LocationService$GoogleAddress;->context:Landroid/content/Context;

    .line 474
    iput-object p2, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    return-void
.end method


# virtual methods
.method public getCityLevelAddressText()Ljava/lang/String;
    .locals 6

    .line 480
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 487
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 492
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v0

    if-lez v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 494
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v1

    sub-int/2addr v1, v2

    .line 493
    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 496
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, ""

    return-object v0

    .line 503
    :cond_6
    iget-object v1, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    .line 506
    :cond_7
    iget-object v1, p0, Lcom/narvii/location/LocationService$GoogleAddress;->context:Landroid/content/Context;

    sget v4, Lcom/narvii/lib/R$string;->address_output_string:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    iget-object v0, p0, Lcom/narvii/location/LocationService$GoogleAddress;->address:Landroid/location/Address;

    .line 507
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 506
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
