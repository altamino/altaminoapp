.class public Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

.field private clock:Landroidx/media3/common/util/Clock;

.field private minBytesTransferred:J

.field private minSamples:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/experimental/SlidingWeightedAverageBandwidthStatistic;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    .line 11
    .line 12
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 15
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->bandwidthStatistic:Landroidx/media3/exoplayer/upstream/experimental/BandwidthStatistic;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minSamples:I

    .line 3
    return p0
.end method

.method static synthetic c(Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->minBytesTransferred:J

    .line 3
    return-wide v0
.end method

.method static synthetic d(Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;)Landroidx/media3/common/util/Clock;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 3
    return-object p0
.end method


# virtual methods
.method public e()Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator;-><init>(Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$Builder;Landroidx/media3/exoplayer/upstream/experimental/SplitParallelSampleBandwidthEstimator$1;)V

    .line 7
    return-object v0
.end method
