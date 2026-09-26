.class public Lcom/narvii/location/LocationService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/location/LocationService$Task;,
        Lcom/narvii/location/LocationService$GeocodeResultListener;,
        Lcom/narvii/location/LocationService$GoogleGeocoder;,
        Lcom/narvii/location/LocationService$BaiduGeocoder;,
        Lcom/narvii/location/LocationService$BaiduAddress;,
        Lcom/narvii/location/LocationService$ReverseGeocoder;,
        Lcom/narvii/location/LocationService$GoogleAddress;
    }
.end annotation


# static fields
.field public static final CITY_LEVEL_RADIUS:I = 0x61a8

.field public static DEFAULT_EXPIRES:J = 0x927c0L

.field public static DEFAULT_TIMEOUT:J = 0x2710L

.field public static final NEARBY_RADIUS:I = 0x186a0

.field public static SIMULATE_TIMEOUT:Z

.field static final handler:Landroid/os/Handler;

.field static lastLocation:Landroid/location/Location;

.field static lastSuccessGeocoder:Lcom/narvii/location/LocationService$ReverseGeocoder;

.field static final reverseGeocoders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/location/LocationService$ReverseGeocoder;",
            ">;"
        }
    .end annotation
.end field

.field static final reverseGeocodingCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/location/ReadableAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final checkpoint:Ljava/lang/Runnable;

.field context:Lcom/narvii/app/NVContext;

.field disposed:Z

.field locationManager:Landroid/location/LocationManager;

.field started:Z

.field final tasks_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/location/LocationService$Task;",
            ">;"
        }
    .end annotation
.end field

.field final tmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/location/LocationService$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Landroidx/collection/LruCache;

    .line 14
    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 19
    .line 20
    sput-object v0, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroidx/collection/LruCache;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/location/LocationService;->reverseGeocoders:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Lcom/narvii/location/LocationService$GoogleGeocoder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Lcom/narvii/location/LocationService$GoogleGeocoder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    new-instance v1, Lcom/narvii/location/LocationService$BaiduGeocoder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Lcom/narvii/location/LocationService$BaiduGeocoder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/location/LocationService$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/location/LocationService$1;-><init>(Lcom/narvii/location/LocationService;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/location/LocationService;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    const-string v0, "location"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Landroid/location/LocationManager;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 41
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/location/LocationService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->stopLocating()V

    return-void
.end method

.method private availableProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "passive"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    return-object v2

    .line 25
    :cond_0
    return-object v0
.end method

.method private getLastKnownLocation(J)Landroid/location/Location;
    .locals 9

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/location/LocationService;->SIMULATE_TIMEOUT:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_5

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    check-cast v4, Ljava/lang/String;

    .line 33
    .line 34
    :try_start_0
    iget-object v5, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    .line 44
    move-result-wide v5

    .line 45
    .line 46
    sub-long v5, v2, v5

    .line 47
    .line 48
    const-wide/16 v7, 0x0

    .line 49
    .line 50
    cmp-long v7, p1, v7

    .line 51
    .line 52
    if-lez v7, :cond_2

    .line 53
    .line 54
    cmp-long v5, v5, p1

    .line 55
    .line 56
    if-gez v5, :cond_1

    .line 57
    .line 58
    :cond_2
    if-nez v1, :cond_3

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_3
    if-gtz v7, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    .line 65
    move-result-wide v5

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    .line 69
    move-result-wide v7

    .line 70
    .line 71
    cmp-long v5, v5, v7

    .line 72
    .line 73
    if-lez v5, :cond_1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    .line 78
    move-result v5

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    .line 82
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    cmpg-float v5, v5, v6

    .line 85
    .line 86
    if-gez v5, :cond_1

    .line 87
    :goto_1
    move-object v1, v4

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    return-object v1
.end method

.method private startLocating()Z
    .locals 10

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/location/LocationService;->started:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    const-string v0, "LocationService.startLocating"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->availableProviders()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    move-object v4, v2

    .line 39
    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    :try_start_0
    iget-object v3, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 43
    .line 44
    const-wide/16 v5, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 49
    move-result-object v9

    .line 50
    move-object v8, p0

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/location/LocationService;->started:Z

    .line 57
    return v1
.end method

.method private stopLocating()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/location/LocationService;->started:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "LocationService.stopLocating"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/narvii/location/LocationService;->started:Z

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public abort(Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/location/LocationService$Task;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    .line 21
    .line 22
    if-ne v1, p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->stopLocating()V

    .line 38
    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->stopLocating()V

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/location/LocationService;->disposed:Z

    .line 19
    return-void
.end method

.method public getCachedCoordinate()Lcom/narvii/location/GPSCoordinate;
    .locals 2

    sget-wide v0, Lcom/narvii/location/LocationService;->DEFAULT_EXPIRES:J

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/narvii/location/LocationService;->getCachedCoordinate(J)Lcom/narvii/location/GPSCoordinate;

    move-result-object v0

    return-object v0
.end method

.method public getCachedCoordinate(J)Lcom/narvii/location/GPSCoordinate;
    .locals 6

    sget-boolean v0, Lcom/narvii/location/LocationService;->SIMULATE_TIMEOUT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/location/LocationService;->getLastKnownLocation(J)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-object v0, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    .line 3
    new-instance p1, Lcom/narvii/location/GPSCoordinate;

    invoke-direct {p1, v0}, Lcom/narvii/location/GPSCoordinate;-><init>(Landroid/location/Location;)V

    return-object p1

    :cond_1
    sget-object v0, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    cmp-long p1, v2, p1

    if-gez p1, :cond_3

    .line 5
    :cond_2
    new-instance p1, Lcom/narvii/location/GPSCoordinate;

    sget-object p2, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    invoke-direct {p1, p2}, Lcom/narvii/location/GPSCoordinate;-><init>(Landroid/location/Location;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public getCachedReverseGeocoding(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;
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
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, ","

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroidx/collection/LruCache;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/location/ReadableAddress;

    .line 37
    return-object p1
.end method

.method public getNearbyLocation(Z)Lcom/narvii/location/GPSCoordinate;
    .locals 10

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/narvii/location/LocationService;->getCachedCoordinate(J)Lcom/narvii/location/GPSCoordinate;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const/16 v1, 0x61a8

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Lcom/narvii/location/GPSCoordinate;->randomInRadius(I)Lcom/narvii/location/GPSCoordinate;

    .line 18
    move-result-object v2

    .line 19
    :goto_0
    return-object v2

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/narvii/location/LocationService;->context:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    const-string v3, "account"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    const-string v4, "cachedNearbyLatitude"

    .line 36
    const/4 v5, 0x0

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 40
    move-result v6

    .line 41
    .line 42
    const-string v7, "cachedNearbyLongitude"

    .line 43
    .line 44
    .line 45
    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 46
    move-result v5

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    if-nez v5, :cond_3

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    iget v8, p1, Lcom/narvii/model/User;->latitude:I

    .line 59
    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    iget p1, p1, Lcom/narvii/model/User;->longitude:I

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    move v5, p1

    .line 66
    move v6, v8

    .line 67
    .line 68
    :cond_3
    if-eqz v6, :cond_5

    .line 69
    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-static {v6, v5}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/narvii/location/GPSCoordinate;->distanceTo(Lcom/narvii/location/GPSCoordinate;)D

    .line 80
    move-result-wide v5

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    const-wide v8, 0x40f86a0000000000L    # 100000.0

    .line 86
    .line 87
    cmpg-double v5, v5, v8

    .line 88
    .line 89
    if-gez v5, :cond_5

    .line 90
    :cond_4
    move-object v2, p1

    .line 91
    .line 92
    :cond_5
    if-nez v2, :cond_6

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/narvii/location/GPSCoordinate;->randomInRadius(I)Lcom/narvii/location/GPSCoordinate;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    :cond_6
    if-eqz v2, :cond_7

    .line 101
    .line 102
    .line 103
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 108
    move-result v0

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 116
    move-result v0

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    :cond_7
    return-object v2
.end method

.method public isLocationManagerAvailable()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->availableProviders()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/location/LocationService;->SIMULATE_TIMEOUT:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    sput-object p1, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/location/GPSCoordinate;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/narvii/location/GPSCoordinate;-><init>(Landroid/location/Location;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p1

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    check-cast v4, Lcom/narvii/location/LocationService$Task;

    .line 48
    .line 49
    iget-wide v5, v4, Lcom/narvii/location/LocationService$Task;->minTime:J

    .line 50
    .line 51
    cmp-long v5, v5, v1

    .line 52
    .line 53
    if-lez v5, :cond_2

    .line 54
    .line 55
    iget-object v5, v4, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    .line 56
    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    const-wide/16 v5, 0x0

    .line 60
    .line 61
    iput-wide v5, v4, Lcom/narvii/location/LocationService$Task;->maxTime:J

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 66
    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    iget-object v4, v4, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    .line 70
    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    .line 74
    invoke-interface {v4, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    const-string v0, "LocationService.onLocationChanged, callbacks="

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 96
    .line 97
    if-lez v3, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    :cond_4
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->stopLocating()V

    .line 116
    :cond_5
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public requireCoordinate(Lcom/narvii/util/Callback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v2, 0x0

    sget-wide v4, Lcom/narvii/location/LocationService;->DEFAULT_TIMEOUT:J

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;JJ)Z

    move-result p1

    return p1
.end method

.method public requireCoordinate(Lcom/narvii/util/Callback;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;J)Z"
        }
    .end annotation

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;JJ)Z

    move-result p1

    return p1
.end method

.method public requireCoordinate(Lcom/narvii/util/Callback;JJ)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;JJ)Z"
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p4

    .line 3
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->startLocating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 5
    new-instance v12, Lcom/narvii/location/LocationService$Task;

    const-wide/16 v6, 0x0

    cmp-long v13, p2, v6

    if-lez v13, :cond_0

    add-long v6, v3, p2

    :cond_0
    move-wide v8, v6

    add-long v10, v3, v1

    move-object v6, v12

    move-object v7, p1

    .line 6
    invoke-direct/range {v6 .. v11}, Lcom/narvii/location/LocationService$Task;-><init>(Lcom/narvii/util/Callback;JJ)V

    .line 7
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v13, :cond_1

    sget-object v3, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    add-long v5, p2, v5

    .line 8
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    sget-object v3, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V
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
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, ","

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sget-object v1, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroidx/collection/LruCache;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/location/ReadableAddress;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p1, v1}, Lcom/narvii/location/LocationService$GeocodeResultListener;->onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V

    .line 44
    :cond_0
    return-void

    .line 45
    .line 46
    :cond_1
    new-instance v1, Lcom/narvii/location/LocationService$2;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/narvii/location/LocationService$2;-><init>(Lcom/narvii/location/LocationService;Ljava/lang/String;Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method public warmup(JJ)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-wide v2, p1

    .line 4
    move-wide v4, p3

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;JJ)Z

    .line 8
    return-void
.end method
