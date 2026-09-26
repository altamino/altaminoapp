.class public final Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerTrackEmsgHandler"
.end annotation


# instance fields
.field private final buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private maxLoadedChunkEndTimeUs:J

.field private final sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

.field final synthetic this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;Landroidx/media3/exoplayer/upstream/Allocator;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Landroidx/media3/exoplayer/source/SampleQueue;->l(Landroidx/media3/exoplayer/upstream/Allocator;)Landroidx/media3/exoplayer/source/SampleQueue;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 12
    .line 13
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 19
    .line 20
    new-instance p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Landroidx/media3/extractor/metadata/MetadataInputBuffer;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    .line 33
    return-void
.end method

.method private g()Landroidx/media3/extractor/metadata/MetadataInputBuffer;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->S(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x4

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->p()V

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method private k(JJ)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;-><init>(JJ)V

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->d(Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;)Landroid/os/Handler;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->d(Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;)Landroid/os/Handler;

    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    return-void
.end method

.method private l()V
    .locals 5

    .line 1
    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->K(Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->g()Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-wide v2, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->a(Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;)Landroidx/media3/extractor/metadata/emsg/EventMessageDecoder;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;->a(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/Metadata;->g(I)Landroidx/media3/common/Metadata$Entry;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v4, v0, Landroidx/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v4}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->m(JLandroidx/media3/extractor/metadata/emsg/EventMessage;)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->s()V

    .line 57
    return-void
.end method

.method private m(JLandroidx/media3/extractor/metadata/emsg/EventMessage;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->c(Landroidx/media3/extractor/metadata/emsg/EventMessage;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    cmp-long p3, v0, v2

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->k(JJ)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->b(Landroidx/media3/common/util/ParsableByteArray;I)V

    .line 6
    return-void
.end method

.method public synthetic b(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/f;->b(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public c(Landroidx/media3/common/DataReader;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p4, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleQueue;->e(Landroidx/media3/common/DataReader;IZ)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Landroidx/media3/common/Format;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->d(Landroidx/media3/common/Format;)V

    .line 6
    return-void
.end method

.method public synthetic e(Landroidx/media3/common/DataReader;IZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/extractor/f;->a(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public f(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 7
    .param p6    # Landroidx/media3/extractor/TrackOutput$CryptoData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p6

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/source/SampleQueue;->f(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->l()V

    .line 14
    return-void
.end method

.method public h(J)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->j(J)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public i(Landroidx/media3/exoplayer/source/chunk/Chunk;)V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-wide v2, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 14
    .line 15
    cmp-long v0, v2, v0

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-wide v0, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->m(Landroidx/media3/exoplayer/source/chunk/Chunk;)V

    .line 27
    return-void
.end method

.method public j(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-wide v2, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler;->n(Z)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public n()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Landroidx/media3/exoplayer/source/SampleQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleQueue;->T()V

    .line 6
    return-void
.end method
