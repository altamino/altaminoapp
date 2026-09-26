.class Lcom/narvii/location/LocationService$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/location/LocationService$2$1;->this$1:Lcom/narvii/location/LocationService$2;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/location/LocationService$2$1;->val$addr:Lcom/narvii/location/ReadableAddress;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/location/LocationService$2$1;->this$1:Lcom/narvii/location/LocationService$2;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/location/LocationService$2;->this$0:Lcom/narvii/location/LocationService;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/narvii/location/LocationService;->disposed:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/narvii/location/LocationService$2;->val$listener:Lcom/narvii/location/LocationService$GeocodeResultListener;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/location/LocationService$2;->val$coord:Lcom/narvii/location/GPSCoordinate;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/location/LocationService$2$1;->val$addr:Lcom/narvii/location/ReadableAddress;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v0, v2}, Lcom/narvii/location/LocationService$GeocodeResultListener;->onReverseGeocoding(Lcom/narvii/location/GPSCoordinate;Lcom/narvii/location/ReadableAddress;)V

    .line 21
    :cond_1
    return-void
.end method
