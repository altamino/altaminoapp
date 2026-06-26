.class Lcom/narvii/location/LocationService$BaiduGeocoder;
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
    name = "BaiduGeocoder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/narvii/location/GPSCoordinate;)Z
    .locals 5

    .line 549
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    move-result-wide v0

    const-wide v2, 0x404a800000000000L    # 53.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 550
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    move-result-wide v0

    const-wide v2, 0x4052400000000000L    # 73.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    move-result-wide v0

    const-wide v2, 0x4060e00000000000L    # 135.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reverseGeocode(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;
    .locals 4

    .line 555
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    .line 559
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.map.baidu.com/geocoder/v2/?ak="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    sget v2, Lcom/narvii/lib/R$string;->baidu_map_key:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&coordtype=wgs84ll&location="

    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&output=json&pois=0"

    .line 563
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    new-instance p1, Lcom/narvii/util/http/URLFetch;

    invoke-direct {p1}, Lcom/narvii/util/http/URLFetch;-><init>()V

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/URLFetch;->getJsonNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    :try_start_1
    const-string v1, "status"

    .line 568
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "result"

    .line 570
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 571
    new-instance v2, Lcom/narvii/location/LocationService$BaiduAddress;

    invoke-direct {v2, v0}, Lcom/narvii/location/LocationService$BaiduAddress;-><init>(Landroid/content/Context;)V

    const-string v0, "formatted_address"

    .line 572
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->formattedAddress:Ljava/lang/String;

    const-string v0, "addressComponent"

    .line 574
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    const-string v1, "city"

    .line 575
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/location/LocationService$BaiduAddress;->city:Ljava/lang/String;

    const-string v1, "district"

    .line 576
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/location/LocationService$BaiduAddress;->district:Ljava/lang/String;

    const-string v1, "province"

    .line 577
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/location/LocationService$BaiduAddress;->province:Ljava/lang/String;

    const-string v1, "street"

    .line 578
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->street:Ljava/lang/String;

    .line 579
    iget-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->province:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->formattedAddress:Ljava/lang/String;

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_1

    return-object v2

    :catch_0
    move-exception v0

    .line 586
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to reverse geocode from baidu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "fail to reverse geocode from baidu"

    .line 589
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
