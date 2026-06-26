.class public Lcom/narvii/location/GPSCoordinate;
.super Ljava/lang/Object;
.source "GPSCoordinate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;"
        }
    .end annotation
.end field

.field private static final FMT:Ljava/text/DecimalFormat;

.field public static final NULL:Lcom/narvii/location/GPSCoordinate;

.field private static final RADIUS:D = 6371000.0

.field private static final RND:Ljava/util/Random;


# instance fields
.field private final accuracy:I

.field private final latitude:D

.field private final longitude:D

.field private final source:Ljava/lang/String;

.field private final timeOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/narvii/location/GPSCoordinate;->RND:Ljava/util/Random;

    .line 155
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    .line 169
    new-instance v0, Lcom/narvii/location/GPSCoordinate;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v10, "null"

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    sput-object v0, Lcom/narvii/location/GPSCoordinate;->NULL:Lcom/narvii/location/GPSCoordinate;

    .line 234
    new-instance v0, Lcom/narvii/location/GPSCoordinate$1;

    invoke-direct {v0}, Lcom/narvii/location/GPSCoordinate$1;-><init>()V

    sput-object v0, Lcom/narvii/location/GPSCoordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-string v8, ""

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDIJLjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 26
    iput-wide p3, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 27
    iput p5, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 28
    iput-wide p6, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 29
    iput-object p8, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 34
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 35
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 37
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/narvii/location/GPSCoordinate$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/narvii/location/GPSCoordinate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(II)Lcom/narvii/location/GPSCoordinate;
    .locals 5

    .line 41
    new-instance v0, Lcom/narvii/location/GPSCoordinate;

    int-to-double v1, p0

    const-wide v3, 0x412e848000000000L    # 1000000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v3

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/narvii/location/GPSCoordinate;-><init>(DD)V

    return-object v0
.end method

.method public static latToDegree(D)Ljava/lang/String;
    .locals 4

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 188
    invoke-static {p0, p1, v0}, Lcom/narvii/location/GPSCoordinate;->toDegree(DLjava/lang/StringBuffer;)V

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    const/16 p0, 0x53

    goto :goto_0

    :cond_0
    const/16 p0, 0x4e

    .line 189
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static latToDegree(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 201
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->latToDegree(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lngToDegree(D)Ljava/lang/String;
    .locals 4

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 195
    invoke-static {p0, p1, v0}, Lcom/narvii/location/GPSCoordinate;->toDegree(DLjava/lang/StringBuffer;)V

    const-wide/16 v1, 0x0

    cmpg-double v3, p0, v1

    if-gez v3, :cond_0

    const/16 p0, 0x57

    goto :goto_0

    :cond_0
    const/16 p0, 0x45

    .line 196
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lngToDegree(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->lngToDegree(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toDegree(DLjava/lang/StringBuffer;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-wide v1, 0x412e848000000000L    # 1000000.0

    mul-double p0, p0, v1

    .line 174
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    .line 175
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "\u00b0 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 176
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "\' "

    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    sub-double v0, p0, v0

    mul-double v0, v0, v2

    .line 182
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr p0, v4

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide p0, 0x40f86a0000000000L    # 100000.0

    mul-double v0, v0, p0

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    mul-int/lit8 p0, p0, 0x3c

    const p1, 0x186a0

    div-int/2addr p0, p1

    .line 179
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, "\""

    .line 183
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public accuracy()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    return v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 10

    .line 113
    new-instance v9, Lcom/narvii/location/GPSCoordinate;

    iget-wide v1, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    iget-wide v3, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    iget v5, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    iget-wide v6, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    iget-object v8, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    return-object v9
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Lcom/narvii/location/GPSCoordinate;)D
    .locals 12

    if-ne p1, p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 120
    :cond_0
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v4

    .line 121
    iget-wide v6, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    div-double/2addr v6, v2

    mul-double v6, v6, v4

    .line 122
    iget-wide v8, p1, Lcom/narvii/location/GPSCoordinate;->latitude:D

    div-double/2addr v8, v2

    mul-double v8, v8, v4

    .line 123
    iget-wide v10, p1, Lcom/narvii/location/GPSCoordinate;->longitude:D

    div-double/2addr v10, v2

    mul-double v10, v10, v4

    sub-double v2, v8, v0

    sub-double/2addr v10, v6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 128
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    div-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    add-double/2addr v6, v0

    .line 129
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v4

    const-wide v2, 0x41584dae00000000L    # 6371000.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public isFresh(J)Z
    .locals 5

    .line 108
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    neg-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid()Z
    .locals 6

    .line 96
    sget-object v0, Lcom/narvii/location/GPSCoordinate;->NULL:Lcom/narvii/location/GPSCoordinate;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    .line 98
    :cond_0
    iget-wide v2, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 100
    :cond_1
    iget-wide v2, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v0, v2, v4

    if-lez v0, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    iget-wide v2, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v0, v2, v4

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public latitude()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    return-wide v0
.end method

.method public latitudeDegree()Ljava/lang/String;
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->latToDegree(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public latitudeE6()I
    .locals 4

    .line 50
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public latitudeSpan(I)D
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x4183167eecbc8011L    # 4.003017359204114E7

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public latitudeString()Ljava/lang/String;
    .locals 3

    .line 57
    sget-object v0, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public longitude()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    return-wide v0
.end method

.method public longitudeDegree()Ljava/lang/String;
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->lngToDegree(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public longitudeE6()I
    .locals 4

    .line 69
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public longitudeSpan(I)D
    .locals 2

    .line 139
    invoke-virtual {p0, p1}, Lcom/narvii/location/GPSCoordinate;->latitudeSpan(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public longitudeString()Ljava/lang/String;
    .locals 3

    .line 76
    sget-object v0, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    iget-wide v1, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public randomInRadius(I)Lcom/narvii/location/GPSCoordinate;
    .locals 13

    .line 147
    invoke-virtual {p0, p1}, Lcom/narvii/location/GPSCoordinate;->latitudeSpan(I)D

    move-result-wide v0

    .line 148
    invoke-virtual {p0, p1}, Lcom/narvii/location/GPSCoordinate;->longitudeSpan(I)D

    move-result-wide v2

    .line 149
    sget-object p1, Lcom/narvii/location/GPSCoordinate;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v8

    mul-double v0, v0, v4

    .line 150
    sget-object p1, Lcom/narvii/location/GPSCoordinate;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    sub-double/2addr v4, v6

    mul-double v4, v4, v8

    mul-double v2, v2, v4

    .line 151
    new-instance p1, Lcom/narvii/location/GPSCoordinate;

    iget-wide v4, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    add-double v5, v4, v0

    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    add-double v7, v0, v2

    iget v9, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    iget-wide v10, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    iget-object v12, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    return-object p1
.end method

.method public source()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-object v0
.end method

.method public timeOffset()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    return-wide v0
.end method

.method public toDegreeString()Ljava/lang/String;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/narvii/location/GPSCoordinate;->latitudeDegree()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/location/GPSCoordinate;->longitudeDegree()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 159
    sget-object v0, Lcom/narvii/location/GPSCoordinate;->NULL:Lcom/narvii/location/GPSCoordinate;

    if-ne p0, v0, :cond_0

    const-string v0, "(?,?) [null]"

    return-object v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    iget-wide v3, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 215
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 216
    iget p2, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-object p2, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
