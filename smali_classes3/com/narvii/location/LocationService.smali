.class public Lcom/narvii/location/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/location/LocationService$BaiduAddress;,
        Lcom/narvii/location/LocationService$BaiduGeocoder;,
        Lcom/narvii/location/LocationService$GoogleGeocoder;,
        Lcom/narvii/location/LocationService$ReverseGeocoder;,
        Lcom/narvii/location/LocationService$GoogleAddress;,
        Lcom/narvii/location/LocationService$GeocodeResultListener;,
        Lcom/narvii/location/LocationService$Task;
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

.field static final reverseGeocodingCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
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

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    .line 390
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroid/support/v4/util/LruCache;

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/location/LocationService;->reverseGeocoders:Ljava/util/ArrayList;

    .line 397
    sget-object v0, Lcom/narvii/location/LocationService;->reverseGeocoders:Ljava/util/ArrayList;

    new-instance v1, Lcom/narvii/location/LocationService$GoogleGeocoder;

    invoke-direct {v1}, Lcom/narvii/location/LocationService$GoogleGeocoder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/narvii/location/LocationService;->reverseGeocoders:Ljava/util/ArrayList;

    new-instance v1, Lcom/narvii/location/LocationService$BaiduGeocoder;

    invoke-direct {v1}, Lcom/narvii/location/LocationService$BaiduGeocoder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Lcom/narvii/location/LocationService$1;

    invoke-direct {v0, p0}, Lcom/narvii/location/LocationService$1;-><init>(Lcom/narvii/location/LocationService;)V

    iput-object v0, p0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/narvii/location/LocationService;->context:Lcom/narvii/app/NVContext;

    .line 71
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/location/LocationService;)V
    .locals 0

    .line 32
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

    .line 151
    iget-object v0, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "passive"

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object v2

    :cond_0
    return-object v0
.end method

.method private getLastKnownLocation(J)Landroid/location/Location;
    .locals 10

    .line 260
    sget-boolean v0, Lcom/narvii/location/LocationService;->SIMULATE_TIMEOUT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 263
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 264
    iget-object v0, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 266
    :try_start_0
    iget-object v5, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    .line 267
    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 269
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x0

    cmp-long v9, p1, v7

    if-lez v9, :cond_2

    cmp-long v9, v5, p1

    if-gez v9, :cond_1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v5, p1, v7

    if-gtz v5, :cond_4

    .line 274
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    goto :goto_1

    .line 277
    :cond_4
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    :goto_1
    move-object v1, v4

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private startLocating()Z
    .locals 10

    .line 169
    iget-boolean v0, p0, Lcom/narvii/location/LocationService;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "LocationService.startLocating"

    .line 171
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->availableProviders()Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 175
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 178
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v8, p0

    .line 177
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 183
    :cond_2
    iput-boolean v1, p0, Lcom/narvii/location/LocationService;->started:Z

    return v1
.end method

.method private stopLocating()V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/narvii/location/LocationService;->started:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationService.stopLocating"

    .line 189
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/narvii/location/LocationService;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/narvii/location/LocationService;->started:Z

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

    .line 203
    iget-object v0, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/location/LocationService$Task;

    .line 206
    iget-object v1, v1, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    if-ne v1, p1, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 211
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->stopLocating()V

    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    sget-object v0, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->stopLocating()V

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/narvii/location/LocationService;->disposed:Z

    return-void
.end method

.method public getCachedCoordinate()Lcom/narvii/location/GPSCoordinate;
    .locals 2

    .line 121
    sget-wide v0, Lcom/narvii/location/LocationService;->DEFAULT_EXPIRES:J

    invoke-virtual {p0, v0, v1}, Lcom/narvii/location/LocationService;->getCachedCoordinate(J)Lcom/narvii/location/GPSCoordinate;

    move-result-object v0

    return-object v0
.end method

.method public getCachedCoordinate(J)Lcom/narvii/location/GPSCoordinate;
    .locals 6

    .line 130
    sget-boolean v0, Lcom/narvii/location/LocationService;->SIMULATE_TIMEOUT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 132
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/location/LocationService;->getLastKnownLocation(J)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    sput-object v0, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    .line 135
    new-instance p1, Lcom/narvii/location/GPSCoordinate;

    invoke-direct {p1, v0}, Lcom/narvii/location/GPSCoordinate;-><init>(Landroid/location/Location;)V

    return-object p1

    .line 137
    :cond_1
    sget-object v0, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    .line 140
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

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 410
    sget-object v0, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/location/ReadableAddress;

    return-object p1
.end method

.method public getNearbyLocation(Z)Lcom/narvii/location/GPSCoordinate;
    .locals 12

    const-wide/16 v0, 0x0

    .line 354
    invoke-virtual {p0, v0, v1}, Lcom/narvii/location/LocationService;->getCachedCoordinate(J)Lcom/narvii/location/GPSCoordinate;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x61a8

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v0, v2}, Lcom/narvii/location/GPSCoordinate;->randomInRadius(I)Lcom/narvii/location/GPSCoordinate;

    move-result-object v1

    :goto_0
    return-object v1

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/narvii/location/LocationService;->context:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 359
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "cachedNearbyLatitude"

    .line 360
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "cachedNearbyLongitude"

    .line 361
    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v6, :cond_2

    if-nez v4, :cond_3

    .line 363
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 364
    iget v8, p1, Lcom/narvii/model/User;->latitude:I

    if-eqz v8, :cond_3

    iget p1, p1, Lcom/narvii/model/User;->longitude:I

    if-eqz p1, :cond_3

    move v6, v8

    goto :goto_1

    :cond_3
    move p1, v4

    :goto_1
    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    .line 371
    invoke-static {v6, p1}, Lcom/narvii/location/GPSCoordinate;->create(II)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    if-eqz v0, :cond_5

    .line 372
    invoke-virtual {p1, v0}, Lcom/narvii/location/GPSCoordinate;->distanceTo(Lcom/narvii/location/GPSCoordinate;)D

    move-result-wide v8

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    cmpg-double v4, v8, v10

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v1

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    .line 377
    invoke-virtual {v0, v2}, Lcom/narvii/location/GPSCoordinate;->randomInRadius(I)Lcom/narvii/location/GPSCoordinate;

    move-result-object p1

    :cond_6
    if-eqz p1, :cond_7

    .line 380
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result v1

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    return-object p1
.end method

.method public isLocationManagerAvailable()Z
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->availableProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .line 291
    sget-boolean v0, Lcom/narvii/location/LocationService;->SIMULATE_TIMEOUT:Z

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    sput-object p1, Lcom/narvii/location/LocationService;->lastLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 297
    new-instance v1, Lcom/narvii/location/GPSCoordinate;

    invoke-direct {v1, p1}, Lcom/narvii/location/GPSCoordinate;-><init>(Landroid/location/Location;)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 301
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 304
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/location/LocationService$Task;

    .line 306
    iget-wide v5, v4, Lcom/narvii/location/LocationService$Task;->minTime:J

    cmp-long v7, v5, v2

    if-lez v7, :cond_2

    .line 307
    iget-object v5, v4, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    .line 309
    iput-wide v5, v4, Lcom/narvii/location/LocationService$Task;->maxTime:J

    goto :goto_0

    .line 312
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    .line 314
    iget-object v4, v4, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    if-eqz v4, :cond_1

    .line 315
    invoke-interface {v4, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationService.onLocationChanged, callbacks="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    if-lez v0, :cond_4

    .line 322
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/narvii/location/LocationService;->tmp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 325
    :cond_4
    iget-object p1, p0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 326
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->stopLocating()V

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

    .line 81
    sget-wide v4, Lcom/narvii/location/LocationService;->DEFAULT_TIMEOUT:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

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

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;JJ)Z

    move-result p1

    return p1
.end method

.method public requireCoordinate(Lcom/narvii/util/Callback;JJ)Z
    .locals 15
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

    .line 103
    invoke-direct {p0}, Lcom/narvii/location/LocationService;->startLocating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 105
    iget-object v5, v0, Lcom/narvii/location/LocationService;->tasks_:Ljava/util/ArrayList;

    new-instance v12, Lcom/narvii/location/LocationService$Task;

    const-wide/16 v13, 0x0

    cmp-long v6, p2, v13

    if-lez v6, :cond_0

    add-long v6, v3, p2

    move-wide v8, v6

    goto :goto_0

    :cond_0
    move-wide v8, v13

    :goto_0
    add-long v10, v3, v1

    move-object v6, v12

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/narvii/location/LocationService$Task;-><init>(Lcom/narvii/util/Callback;JJ)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmp-long v3, p2, v13

    if-lez v3, :cond_1

    .line 108
    sget-object v3, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    add-long v5, p2, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    :cond_1
    sget-object v3, Lcom/narvii/location/LocationService;->handler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/narvii/location/LocationService;->checkpoint:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    sget-object v1, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/location/ReadableAddress;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 418
    invoke-interface {p2, p1, v1}, Lcom/narvii/location/LocationService$GeocodeResultListener;->onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V

    :cond_0
    return-void

    .line 423
    :cond_1
    new-instance v1, Lcom/narvii/location/LocationService$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/narvii/location/LocationService$2;-><init>(Lcom/narvii/location/LocationService;Ljava/lang/String;Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V

    .line 465
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public warmup(JJ)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/location/LocationService;->requireCoordinate(Lcom/narvii/util/Callback;JJ)Z

    return-void
.end method
