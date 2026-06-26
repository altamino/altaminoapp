.class Lcom/narvii/location/LocationService$Task;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;"
        }
    .end annotation
.end field

.field maxTime:J

.field minTime:J


# direct methods
.method public constructor <init>(Lcom/narvii/util/Callback;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/location/GPSCoordinate;",
            ">;JJ)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    .line 50
    iput-wide p2, p0, Lcom/narvii/location/LocationService$Task;->minTime:J

    .line 51
    iput-wide p4, p0, Lcom/narvii/location/LocationService$Task;->maxTime:J

    return-void
.end method
