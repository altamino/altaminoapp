.class public abstract Landroidx/core/location/GnssStatusCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/GnssStatusCompat$Callback;,
        Landroidx/core/location/GnssStatusCompat$ConstellationType;
    }
.end annotation


# static fields
.field public static final CONSTELLATION_BEIDOU:I = 0x5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CONSTELLATION_GALILEO:I = 0x6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CONSTELLATION_GLONASS:I = 0x3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CONSTELLATION_GPS:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CONSTELLATION_IRNSS:I = 0x7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CONSTELLATION_QZSS:I = 0x4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CONSTELLATION_SBAS:I = 0x2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CONSTELLATION_UNKNOWN:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


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

.method public static a(Landroid/location/GnssStatus;)Landroidx/core/location/GnssStatusCompat;
    .locals 1
    .param p0    # Landroid/location/GnssStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/location/GnssStatusWrapper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/location/GnssStatusWrapper;-><init>(Ljava/lang/Object;)V

    .line 6
    return-object v0
.end method

.method public static b(Landroid/location/GpsStatus;)Landroidx/core/location/GnssStatusCompat;
    .locals 1
    .param p0    # Landroid/location/GpsStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ReferencesDeprecated"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/core/location/GpsStatusWrapper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/core/location/GpsStatusWrapper;-><init>(Landroid/location/GpsStatus;)V

    .line 6
    return-object v0
.end method
