.class final Landroidx/media3/exoplayer/hls/UnexpectedSampleTimestampException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final lastAcceptedSampleTimeUs:J

.field public final mediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

.field public final rejectedSampleTimeUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/chunk/MediaChunk;JJ)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Unexpected sample timestamp: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p4, p5}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, " in chunk ["

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-wide v1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, ", "

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-wide v1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "]"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/UnexpectedSampleTimestampException;->mediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 52
    .line 53
    iput-wide p2, p0, Landroidx/media3/exoplayer/hls/UnexpectedSampleTimestampException;->lastAcceptedSampleTimeUs:J

    .line 54
    .line 55
    iput-wide p4, p0, Landroidx/media3/exoplayer/hls/UnexpectedSampleTimestampException;->rejectedSampleTimeUs:J

    .line 56
    return-void
.end method
