.class Lcom/narvii/location/LocationService$BaiduGeocoder;
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
    name = "BaiduGeocoder"
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
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    .line 7
    .line 8
    cmpl-double v0, v0, v2

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v2, 0x404a800000000000L    # 53.0

    .line 20
    .line 21
    cmpg-double v0, v0, v2

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v2, 0x4052400000000000L    # 73.0

    .line 33
    .line 34
    cmpl-double v0, v0, v2

    .line 35
    .line 36
    if-lez v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v2, 0x4060e00000000000L    # 135.0

    .line 46
    .line 47
    cmpg-double p1, v0, v2

    .line 48
    .line 49
    if-gez p1, :cond_0

    .line 50
    const/4 p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    return p1
.end method

.method public reverseGeocode(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "http://api.map.baidu.com/geocoder/v2/?ak="

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    sget v2, Lcom/narvii/lib/R$string;->baidu_map_key:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "&coordtype=wgs84ll&location="

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitude()D

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const/16 v2, 0x2c

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitude()D

    .line 41
    move-result-wide v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p1, "&output=json&pois=0"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/util/http/URLFetch;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1}, Lcom/narvii/util/http/URLFetch;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/URLFetch;->getJsonNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 62
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    :try_start_1
    const-string v1, "status"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->intValue()I

    .line 74
    move-result v1

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    const-string v1, "result"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    new-instance v2, Lcom/narvii/location/LocationService$BaiduAddress;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/narvii/location/LocationService$BaiduAddress;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    const-string v0, "formatted_address"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iput-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->formattedAddress:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "addressComponent"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    const-string v1, "city"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    iput-object v1, v2, Lcom/narvii/location/LocationService$BaiduAddress;->city:Ljava/lang/String;

    .line 118
    .line 119
    const-string v1, "district"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    iput-object v1, v2, Lcom/narvii/location/LocationService$BaiduAddress;->district:Ljava/lang/String;

    .line 130
    .line 131
    const-string v1, "province"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    iput-object v1, v2, Lcom/narvii/location/LocationService$BaiduAddress;->province:Ljava/lang/String;

    .line 142
    .line 143
    const-string v1, "street"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    iput-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->street:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->province:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-nez v0, :cond_1

    .line 162
    .line 163
    iget-object v0, v2, Lcom/narvii/location/LocationService$BaiduAddress;->formattedAddress:Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    if-nez p1, :cond_1

    .line 170
    return-object v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .line 173
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string v2, "fail to reverse geocode from baidu "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    goto :goto_0

    .line 193
    .line 194
    :cond_0
    const-string p1, "fail to reverse geocode from baidu"

    .line 195
    .line 196
    .line 197
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :catch_1
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 199
    return-object p1
.end method
