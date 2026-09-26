.class Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sample"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:J

.field private final weight:D


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    .line 6
    .line 7
    iput-wide p3, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->weight:D

    .line 8
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)D
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->weight:D

    .line 3
    return-wide v0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    .line 3
    return-wide v0
.end method


# virtual methods
.method public c(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)I
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    .line 3
    .line 4
    iget-wide v2, p1, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->bitrate:J

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/util/Util;->o(JJ)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;->c(Landroidx/media3/exoplayer/upstream/experimental/SlidingPercentileBandwidthStatistic$Sample;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method
