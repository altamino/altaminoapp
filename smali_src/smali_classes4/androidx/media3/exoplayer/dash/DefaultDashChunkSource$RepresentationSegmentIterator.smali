.class public final Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;
.super Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationSegmentIterator"
.end annotation


# instance fields
.field private final nowPeriodTimeUs:J

.field private final representationHolder:Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 6
    .line 7
    iput-wide p6, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->nowPeriodTimeUs:J

    .line 8
    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->d()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->i(J)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public b()J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->d()J

    .line 9
    move-result-wide v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method
