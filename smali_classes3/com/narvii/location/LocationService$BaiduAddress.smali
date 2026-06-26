.class Lcom/narvii/location/LocationService$BaiduAddress;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/narvii/location/ReadableAddress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduAddress"
.end annotation


# instance fields
.field city:Ljava/lang/String;

.field context:Landroid/content/Context;

.field district:Ljava/lang/String;

.field formattedAddress:Ljava/lang/String;

.field province:Ljava/lang/String;

.field street:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object p1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCityLevelAddressText()Ljava/lang/String;
    .locals 6

    .line 612
    iget-object v0, p0, Lcom/narvii/location/LocationService$BaiduAddress;->city:Ljava/lang/String;

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/narvii/location/LocationService$BaiduAddress;->province:Ljava/lang/String;

    .line 616
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u4e2d\u56fd"

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->district:Ljava/lang/String;

    .line 621
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    iget-object v1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->street:Ljava/lang/String;

    .line 624
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    iget-object v1, p0, Lcom/narvii/location/LocationService$BaiduAddress;->formattedAddress:Ljava/lang/String;

    .line 628
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    .line 631
    :cond_4
    iget-object v2, p0, Lcom/narvii/location/LocationService$BaiduAddress;->context:Landroid/content/Context;

    sget v3, Lcom/narvii/lib/R$string;->address_output_string:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
