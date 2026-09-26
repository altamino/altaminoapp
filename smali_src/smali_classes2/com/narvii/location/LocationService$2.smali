.class Lcom/narvii/location/LocationService$2;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/location/LocationService$2;->val$cacheKey:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/location/LocationService$2;->val$coord:Lcom/narvii/location/GPSCoordinate;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/location/LocationService$2;->val$listener:Lcom/narvii/location/LocationService$GeocodeResultListener;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroidx/collection/LruCache;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/location/LocationService$2;->val$cacheKey:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/location/ReadableAddress;

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    sget-object v2, Lcom/narvii/location/LocationService;->reverseGeocoders:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    sget-object v2, Lcom/narvii/location/LocationService;->lastSuccessGeocoder:Lcom/narvii/location/LocationService$ReverseGeocoder;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    if-eq v4, v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    check-cast v2, Lcom/narvii/location/LocationService$ReverseGeocoder;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    .line 55
    .line 56
    iget-boolean v3, v3, Lcom/narvii/location/LocationService;->disposed:Z

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/narvii/location/LocationService$2;->val$coord:Lcom/narvii/location/GPSCoordinate;

    .line 62
    .line 63
    .line 64
    invoke-interface {v2, v0}, Lcom/narvii/location/LocationService$ReverseGeocoder;->reverseGeocode(Lcom/narvii/location/GPSCoordinate;)Lcom/narvii/location/ReadableAddress;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    sget-object v1, Lcom/narvii/location/LocationService;->reverseGeocodingCache:Landroidx/collection/LruCache;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/location/LocationService$2;->val$cacheKey:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    sput-object v2, Lcom/narvii/location/LocationService;->lastSuccessGeocoder:Lcom/narvii/location/LocationService$ReverseGeocoder;

    .line 77
    .line 78
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    .line 79
    .line 80
    iget-boolean v1, v1, Lcom/narvii/location/LocationService;->disposed:Z

    .line 81
    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    new-instance v1, Lcom/narvii/location/LocationService$2$1;

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, p0, v0}, Lcom/narvii/location/LocationService$2$1;-><init>(Lcom/narvii/location/LocationService$2;Lcom/narvii/location/ReadableAddress;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 91
    :cond_4
    return-void
.end method
