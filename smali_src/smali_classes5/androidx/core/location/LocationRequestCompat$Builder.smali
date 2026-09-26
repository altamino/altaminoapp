.class public final Landroidx/core/location/LocationRequestCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMillis:J

.field private mIntervalMillis:J

.field private mMaxUpdateDelayMillis:J

.field private mMaxUpdates:I

.field private mMinUpdateDistanceMeters:F

.field private mMinUpdateIntervalMillis:J

.field private mQuality:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/core/location/LocationRequestCompat$Builder;->a(J)Landroidx/core/location/LocationRequestCompat$Builder;

    const/16 p1, 0x66

    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    return-void
.end method

.method public constructor <init>(Landroidx/core/location/LocationRequestCompat;)V
    .locals 2
    .param p1    # Landroidx/core/location/LocationRequestCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mIntervalMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    .line 5
    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mQuality:I

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mQuality:I

    .line 6
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mDurationMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mDurationMillis:J

    .line 7
    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdates:I

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdates:I

    .line 8
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateIntervalMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateIntervalMillis:J

    .line 9
    iget v0, p1, Landroidx/core/location/LocationRequestCompat;->mMinUpdateDistanceMeters:F

    iput v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMinUpdateDistanceMeters:F

    .line 10
    iget-wide v0, p1, Landroidx/core/location/LocationRequestCompat;->mMaxUpdateDelayMillis:J

    iput-wide v0, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mMaxUpdateDelayMillis:J

    return-void
.end method


# virtual methods
.method public a(J)Landroidx/core/location/LocationRequestCompat$Builder;
    .locals 7
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-wide/16 v2, 0x0

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v4, 0x7fffffffffffffffL

    .line 8
    .line 9
    const-string v6, "intervalMillis"

    .line 10
    move-wide v0, p1

    .line 11
    .line 12
    .line 13
    invoke-static/range {v0 .. v6}, Landroidx/core/util/Preconditions;->e(JJJLjava/lang/String;)J

    .line 14
    move-result-wide p1

    .line 15
    .line 16
    iput-wide p1, p0, Landroidx/core/location/LocationRequestCompat$Builder;->mIntervalMillis:J

    .line 17
    return-object p0
.end method
