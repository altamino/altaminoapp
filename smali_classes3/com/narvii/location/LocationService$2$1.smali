.class Lcom/narvii/location/LocationService$2$1;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/location/LocationService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/location/LocationService$2;

.field final synthetic val$addr:Lcom/narvii/location/ReadableAddress;


# direct methods
.method constructor <init>(Lcom/narvii/location/LocationService$2;Lcom/narvii/location/ReadableAddress;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/narvii/location/LocationService$2$1;->this$1:Lcom/narvii/location/LocationService$2;

    iput-object p2, p0, Lcom/narvii/location/LocationService$2$1;->val$addr:Lcom/narvii/location/ReadableAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/narvii/location/LocationService$2$1;->this$1:Lcom/narvii/location/LocationService$2;

    iget-object v1, v0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    iget-boolean v1, v1, Lcom/narvii/location/LocationService;->disposed:Z

    if-eqz v1, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object v1, v0, Lcom/narvii/location/LocationService$2;->val$listener:Lcom/narvii/location/LocationService$GeocodeResultListener;

    if-eqz v1, :cond_1

    .line 459
    iget-object v0, v0, Lcom/narvii/location/LocationService$2;->val$coord:Lcom/narvii/location/GPSCoordinate;

    iget-object v2, p0, Lcom/narvii/location/LocationService$2$1;->val$addr:Lcom/narvii/location/ReadableAddress;

    invoke-interface {v1, v0, v2}, Lcom/narvii/location/LocationService$GeocodeResultListener;->onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V

    :cond_1
    return-void
.end method
