.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationManagerCompat$Api24Impl;,
        Landroidx/core/location/LocationManagerCompat$Api19Impl;,
        Landroidx/core/location/LocationManagerCompat$Api28Impl;,
        Landroidx/core/location/LocationManagerCompat$Api30Impl;,
        Landroidx/core/location/LocationManagerCompat$Api31Impl;,
        Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;,
        Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;,
        Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerKey;,
        Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;
    }
.end annotation


# static fields
.field private static final GET_CURRENT_LOCATION_TIMEOUT_MS:J = 0x7530L

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final PRE_N_LOOPER_TIMEOUT_S:J = 0x5L

.field private static sContextField:Ljava/lang/reflect/Field;

.field private static sGnssRequestBuilderBuildMethod:Ljava/lang/reflect/Method;

.field private static sGnssRequestBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final sLocationListeners:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sRegisterGnssMeasurementsCallbackMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static a(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->g()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    .line 29
    :goto_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->n()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 36
    :cond_1
    return-void
.end method
