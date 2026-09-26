.class final Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SegmentBaseHolder"
.end annotation


# instance fields
.field public final isPreload:Z

.field public final mediaSequence:J

.field public final partIndex:I

.field public final segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 6
    .line 7
    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->mediaSequence:J

    .line 8
    .line 9
    iput p4, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    .line 10
    .line 11
    instance-of p2, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 16
    .line 17
    iget-boolean p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    .line 24
    :goto_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    .line 25
    return-void
.end method
