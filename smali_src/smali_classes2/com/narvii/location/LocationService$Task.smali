.class Lcom/narvii/location/LocationService$Task;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/location/LocationService$Task;->callback:Lcom/narvii/util/Callback;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/narvii/location/LocationService$Task;->minTime:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/narvii/location/LocationService$Task;->maxTime:J

    .line 10
    return-void
.end method
