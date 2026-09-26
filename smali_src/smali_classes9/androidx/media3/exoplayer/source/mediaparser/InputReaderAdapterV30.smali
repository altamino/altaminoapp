.class public final Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaParser$SeekableInputReader;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Override"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private currentPosition:J

.field private dataReader:Landroidx/media3/common/DataReader;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lastSeekPosition:J

.field private resourceLength:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    return-void
.end method

.method public c(Landroidx/media3/common/DataReader;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->dataReader:Landroidx/media3/common/DataReader;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->resourceLength:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    return-void
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->resourceLength:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->dataReader:Landroidx/media3/common/DataReader;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/common/DataReader;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 12
    move-result p1

    .line 13
    .line 14
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    .line 15
    int-to-long v0, p1

    .line 16
    add-long/2addr p2, v0

    .line 17
    .line 18
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    .line 19
    return p1
.end method

.method public seekToPosition(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    return-void
.end method
