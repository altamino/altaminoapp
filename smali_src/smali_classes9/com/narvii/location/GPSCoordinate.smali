.class public Lcom/narvii/location/GPSCoordinate;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    new-instance v0, Ljava/util/Random;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/location/GPSCoordinate;->RND:Ljava/util/Random;

    .line 12
    .line 13
    new-instance v0, Ljava/text/DecimalFormat;

    .line 14
    .line 15
    const-string v1, "0.#####"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/location/GPSCoordinate;

    .line 23
    .line 24
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 25
    .line 26
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 27
    const/4 v7, 0x0

    .line 28
    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    const-string v10, "null"

    .line 32
    move-object v2, v0

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v10}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    .line 36
    .line 37
    sput-object v0, Lcom/narvii/location/GPSCoordinate;->NULL:Lcom/narvii/location/GPSCoordinate;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/location/GPSCoordinate$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Lcom/narvii/location/GPSCoordinate$1;-><init>()V

    .line 43
    .line 44
    sput-object v0, Lcom/narvii/location/GPSCoordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
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

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDIJLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    iput-wide p3, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    iput p5, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    iput-wide p6, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    iput-object p8, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 9
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/narvii/location/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/location/GPSCoordinate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(II)Lcom/narvii/location/GPSCoordinate;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/location/GPSCoordinate;

    .line 3
    int-to-double v1, p0

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 9
    div-double/2addr v1, v3

    .line 10
    int-to-double p0, p1

    .line 11
    div-double/2addr p0, v3

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/narvii/location/GPSCoordinate;-><init>(DD)V

    .line 15
    return-object v0
.end method

.method public static latToDegree(D)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/narvii/location/GPSCoordinate;->toDegree(DLjava/lang/StringBuffer;)V

    const-wide/16 v1, 0x0

    cmpg-double p0, p0, v1

    if-gez p0, :cond_0

    const/16 p0, 0x53

    goto :goto_0

    :cond_0
    const/16 p0, 0x4e

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static latToDegree(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->latToDegree(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lngToDegree(D)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2
    invoke-static {p0, p1, v0}, Lcom/narvii/location/GPSCoordinate;->toDegree(DLjava/lang/StringBuffer;)V

    const-wide/16 v1, 0x0

    cmpg-double p0, p0, v1

    if-gez p0, :cond_0

    const/16 p0, 0x57

    goto :goto_0

    :cond_0
    const/16 p0, 0x45

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lngToDegree(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->lngToDegree(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toDegree(DLjava/lang/StringBuffer;)V
    .locals 6

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmpg-double v0, p0, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    :goto_0
    const-wide v1, 0x412e848000000000L    # 1000000.0

    .line 15
    mul-double/2addr p0, v1

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    .line 19
    move-result-wide p0

    .line 20
    long-to-double p0, p0

    .line 21
    div-double/2addr p0, v1

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 25
    move-result-wide v1

    .line 26
    double-to-int v1, v1

    .line 27
    mul-int/2addr v1, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    const-string v0, "\u00b0 "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    sub-double v0, p0, v0

    .line 42
    .line 43
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 44
    mul-double/2addr v0, v2

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 48
    move-result-wide v0

    .line 49
    double-to-int v0, v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    const-string v0, "\' "

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    sub-double v0, p0, v0

    .line 64
    mul-double/2addr v0, v2

    .line 65
    .line 66
    .line 67
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 68
    move-result-wide v4

    .line 69
    sub-double/2addr p0, v4

    .line 70
    mul-double/2addr p0, v2

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    .line 74
    move-result-wide p0

    .line 75
    sub-double/2addr v0, p0

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    const-wide p0, 0x40f86a0000000000L    # 100000.0

    .line 81
    mul-double/2addr v0, p0

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 85
    move-result-wide p0

    .line 86
    double-to-int p0, p0

    .line 87
    .line 88
    mul-int/lit8 p0, p0, 0x3c

    .line 89
    .line 90
    .line 91
    const p1, 0x186a0

    .line 92
    div-int/2addr p0, p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    const-string p0, "\""

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    return-void
.end method


# virtual methods
.method public accuracy()I
    .locals 1

    iget v0, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    return v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 10

    .line 1
    .line 2
    new-instance v9, Lcom/narvii/location/GPSCoordinate;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 5
    .line 6
    iget-wide v3, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 7
    .line 8
    iget v5, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 9
    .line 10
    iget-wide v6, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 11
    .line 12
    iget-object v8, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    .line 13
    move-object v0, v9

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    .line 17
    return-object v9
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Lcom/narvii/location/GPSCoordinate;)D
    .locals 12

    .line 1
    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    return-wide v0

    .line 6
    .line 7
    :cond_0
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 13
    div-double/2addr v0, v2

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 19
    mul-double/2addr v0, v4

    .line 20
    .line 21
    iget-wide v6, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 22
    div-double/2addr v6, v2

    .line 23
    mul-double/2addr v6, v4

    .line 24
    .line 25
    iget-wide v8, p1, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 26
    div-double/2addr v8, v2

    .line 27
    mul-double/2addr v8, v4

    .line 28
    .line 29
    iget-wide v10, p1, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 30
    div-double/2addr v10, v2

    .line 31
    mul-double/2addr v10, v4

    .line 32
    .line 33
    sub-double v2, v8, v0

    .line 34
    sub-double/2addr v10, v6

    .line 35
    .line 36
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 37
    div-double/2addr v2, v4

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 41
    move-result-wide v6

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 45
    move-result-wide v2

    .line 46
    mul-double/2addr v6, v2

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 50
    move-result-wide v0

    .line 51
    .line 52
    .line 53
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    .line 54
    move-result-wide v2

    .line 55
    mul-double/2addr v0, v2

    .line 56
    div-double/2addr v10, v4

    .line 57
    .line 58
    .line 59
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 60
    move-result-wide v2

    .line 61
    mul-double/2addr v0, v2

    .line 62
    .line 63
    .line 64
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 65
    move-result-wide v2

    .line 66
    mul-double/2addr v0, v2

    .line 67
    add-double/2addr v6, v0

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 71
    move-result-wide v0

    .line 72
    .line 73
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 74
    sub-double/2addr v2, v6

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 78
    move-result-wide v2

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 82
    move-result-wide v0

    .line 83
    mul-double/2addr v0, v4

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v2, 0x41584dae00000000L    # 6371000.0

    .line 89
    mul-double/2addr v0, v2

    .line 90
    return-wide v0
.end method

.method public isFresh(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    neg-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid()Z
    .locals 8

    sget-object v0, Lcom/narvii/location/GPSCoordinate;->NULL:Lcom/narvii/location/GPSCoordinate;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v6, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    cmpl-double v0, v6, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v0, v2, v4

    if-lez v0, :cond_2

    goto :goto_0

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

    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    return-wide v0
.end method

.method public latitudeDegree()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->latToDegree(D)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public latitudeE6()I
    .locals 4

    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public latitudeSpan(I)D
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x4183167eecbc8011L    # 4.003017359204114E7

    div-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public latitudeString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    return-wide v0
.end method

.method public longitudeDegree()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/narvii/location/GPSCoordinate;->lngToDegree(D)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public longitudeE6()I
    .locals 4

    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public longitudeSpan(I)D
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/location/GPSCoordinate;->latitudeSpan(I)D

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public longitudeString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public randomInRadius(I)Lcom/narvii/location/GPSCoordinate;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/location/GPSCoordinate;->latitudeSpan(I)D

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/location/GPSCoordinate;->longitudeSpan(I)D

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    sget-object p1, Lcom/narvii/location/GPSCoordinate;->RND:Ljava/util/Random;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    .line 14
    move-result-wide v4

    .line 15
    .line 16
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 17
    sub-double/2addr v4, v6

    .line 18
    .line 19
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 20
    mul-double/2addr v4, v8

    .line 21
    mul-double/2addr v0, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    .line 25
    move-result-wide v4

    .line 26
    sub-double/2addr v4, v6

    .line 27
    mul-double/2addr v4, v8

    .line 28
    mul-double/2addr v2, v4

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/location/GPSCoordinate;

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 33
    .line 34
    add-double v5, v4, v0

    .line 35
    .line 36
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 37
    .line 38
    add-double v7, v0, v2

    .line 39
    .line 40
    iget v9, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 41
    .line 42
    iget-wide v10, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 43
    .line 44
    iget-object v12, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    .line 45
    move-object v4, p1

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v4 .. v12}, Lcom/narvii/location/GPSCoordinate;-><init>(DDIJLjava/lang/String;)V

    .line 49
    return-object p1
.end method

.method public source()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    return-object v0
.end method

.method public timeOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    return-wide v0
.end method

.method public toDegreeString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/location/GPSCoordinate;->latitudeDegree()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, ", "

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/location/GPSCoordinate;->longitudeDegree()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/location/GPSCoordinate;->NULL:Lcom/narvii/location/GPSCoordinate;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const-string v0, "(?,?) [null]"

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "("

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    sget-object v1, Lcom/narvii/location/GPSCoordinate;->FMT:Ljava/text/DecimalFormat;

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, ","

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, ") ["

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    iget v1, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "]"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->latitude:D

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->longitude:D

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 11
    .line 12
    iget p2, p0, Lcom/narvii/location/GPSCoordinate;->accuracy:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/narvii/location/GPSCoordinate;->timeOffset:J

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/location/GPSCoordinate;->source:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    return-void
.end method
