.class Lcom/narvii/location/LocationService$2;
.super Ljava/lang/Thread;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/location/LocationService;->reverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/location/LocationService;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$coord:Lcom/narvii/location/GPSCoordinate;

.field final synthetic val$listener:Lcom/narvii/location/LocationService$GeocodeResultListener;


# direct methods
.method constructor <init>(Lcom/narvii/location/LocationService;Ljava/lang/String;Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/LocationService$GeocodeResultListener;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    iput-object p2, p0, Lcom/narvii/location/LocationService$2;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/location/LocationService$2;->val$coord:Lcom/narvii/location/GPSCoordinate;

    iput-object p4, p0, Lcom/narvii/location/LocationService$2;->val$listener:Lcom/narvii/location/LocationService$GeocodeResultListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 429
    sget-object v0, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroid/support/v4/util/LruCache;

    iget-object v1, p0, Lcom/narvii/location/LocationService$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/location/ReadableAddress;

    if-nez v0, :cond_3

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/narvii/location/LocationService;->reverseGeocoders:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    sget-object v2, Lcom/narvii/location/LocationService;->lastSuccessGeocoder:Lcom/narvii/location/LocationService$ReverseGeocoder;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 434
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_0

    .line 435
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 439
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/location/LocationService$ReverseGeocoder;

    .line 440
    iget-object v3, p0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    iget-boolean v3, v3, Lcom/narvii/location/LocationService;->disposed:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/narvii/location/LocationService$2;->val$coord:Lcom/narvii/location/GPSCoordinate;

    invoke-interface {v2, v0}, Lcom/narvii/location/LocationService$ReverseGeocoder;->reverseGeocode(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 444
    sget-object v1, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroid/support/v4/util/LruCache;

    iget-object v3, p0, Lcom/narvii/location/LocationService$2;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sput-object v2, Lcom/narvii/location/LocationService;->lastSuccessGeocoder:Lcom/narvii/location/LocationService$ReverseGeocoder;

    .line 451
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    iget-boolean v1, v1, Lcom/narvii/location/LocationService;->disposed:Z

    if-nez v1, :cond_4

    .line 453
    new-instance v1, Lcom/narvii/location/LocationService$2$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/location/LocationService$2$1;-><init>(Lcom/narvii/location/LocationService$2;Lcom/narvii/location/ReadableAddress;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
