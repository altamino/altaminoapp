.class Landroidx/core/location/GpsStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final BEIDOU_PRN_COUNT:I = 0x23

.field private static final BEIDOU_PRN_OFFSET:I = 0xc8

.field private static final GLONASS_PRN_COUNT:I = 0x18

.field private static final GLONASS_PRN_OFFSET:I = 0x40

.field private static final GPS_PRN_COUNT:I = 0x20

.field private static final GPS_PRN_OFFSET:I = 0x0

.field private static final QZSS_SVID_MAX:I = 0xc8

.field private static final QZSS_SVID_MIN:I = 0xc1

.field private static final SBAS_PRN_MAX:I = 0x40

.field private static final SBAS_PRN_MIN:I = 0x21

.field private static final SBAS_PRN_OFFSET:I = -0x57


# instance fields
.field private mCachedIterator:Ljava/util/Iterator;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIteratorPosition:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private mCachedSatellite:Landroid/location/GpsSatellite;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private mCachedSatelliteCount:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final mWrapped:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/core/util/Preconditions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Landroid/location/GpsStatus;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 25
    .line 26
    iput v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    .line 27
    const/4 p1, 0x0

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Landroidx/core/location/GpsStatusWrapper;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_1
    check-cast p1, Landroidx/core/location/GpsStatusWrapper;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
