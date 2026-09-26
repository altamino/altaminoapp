.class final Landroidx/media3/exoplayer/dash/EventSampleStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# instance fields
.field private currentIndex:I

.field private final eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

.field private eventStream:Landroidx/media3/exoplayer/dash/manifest/EventStream;

.field private eventStreamAppendable:Z

.field private eventTimesUs:[J

.field private isFormatSentDownstream:Z

.field private pendingSeekPositionUs:J

.field private final upstreamFormat:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/manifest/EventStream;Landroidx/media3/common/Format;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->upstreamFormat:Landroidx/media3/common/Format;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventStream:Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 8
    .line 9
    new-instance p2, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;-><init>()V

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    iput-wide v0, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->pendingSeekPositionUs:J

    .line 22
    .line 23
    iget-object p2, p1, Landroidx/media3/exoplayer/dash/manifest/EventStream;->presentationTimesUs:[J

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/dash/EventSampleStream;->d(Landroidx/media3/exoplayer/dash/manifest/EventStream;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventStream:Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/EventStream;->a()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const/4 v3, -0x4

    .line 13
    const/4 v4, 0x4

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-boolean v5, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventStreamAppendable:Z

    .line 18
    .line 19
    if-nez v5, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v4}, Landroidx/media3/decoder/Buffer;->l(I)V

    .line 23
    return v3

    .line 24
    .line 25
    :cond_1
    and-int/lit8 v5, p3, 0x2

    .line 26
    .line 27
    if-nez v5, :cond_6

    .line 28
    .line 29
    iget-boolean v5, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->isFormatSentDownstream:Z

    .line 30
    .line 31
    if-nez v5, :cond_2

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_2
    if-eqz v1, :cond_3

    .line 35
    const/4 p1, -0x3

    .line 36
    return p1

    .line 37
    .line 38
    :cond_3
    and-int/lit8 p1, p3, 0x1

    .line 39
    .line 40
    if-nez p1, :cond_4

    .line 41
    .line 42
    add-int/lit8 p1, v0, 0x1

    .line 43
    .line 44
    iput p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 45
    .line 46
    :cond_4
    and-int/lit8 p1, p3, 0x4

    .line 47
    .line 48
    if-nez p1, :cond_5

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventMessageEncoder:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 51
    .line 52
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventStream:Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 53
    .line 54
    iget-object p3, p3, Landroidx/media3/exoplayer/dash/manifest/EventStream;->events:[Landroidx/media3/extractor/metadata/emsg/EventMessage;

    .line 55
    .line 56
    aget-object p3, p3, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->a(Landroidx/media3/extractor/metadata/emsg/EventMessage;)[B

    .line 60
    move-result-object p1

    .line 61
    array-length p3, p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3}, Landroidx/media3/decoder/DecoderInputBuffer;->o(I)V

    .line 65
    .line 66
    iget-object p3, p2, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 72
    .line 73
    aget-wide v0, p1, v0

    .line 74
    .line 75
    iput-wide v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v2}, Landroidx/media3/decoder/Buffer;->l(I)V

    .line 79
    return v3

    .line 80
    .line 81
    :cond_6
    :goto_1
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->upstreamFormat:Landroidx/media3/common/Format;

    .line 82
    .line 83
    iput-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 84
    .line 85
    iput-boolean v2, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->isFormatSentDownstream:Z

    .line 86
    const/4 p1, -0x5

    .line 87
    return p1
.end method

.method public c(J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, p2, v1, v2}, Landroidx/media3/common/util/Util;->e([JJZZ)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 11
    .line 12
    iget-boolean v1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventStreamAppendable:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 17
    array-length v1, v1

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->pendingSeekPositionUs:J

    .line 28
    return-void
.end method

.method public d(Landroidx/media3/exoplayer/dash/manifest/EventStream;Z)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    move-wide v4, v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    aget-wide v4, v3, v0

    .line 18
    .line 19
    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventStreamAppendable:Z

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventStream:Landroidx/media3/exoplayer/dash/manifest/EventStream;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/media3/exoplayer/dash/manifest/EventStream;->presentationTimesUs:[J

    .line 24
    .line 25
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 26
    .line 27
    iget-wide v6, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->pendingSeekPositionUs:J

    .line 28
    .line 29
    cmp-long p2, v6, v1

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v6, v7}, Landroidx/media3/exoplayer/dash/EventSampleStream;->c(J)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    cmp-long p2, v4, v1

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    const/4 p2, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v4, v5, p2, p2}, Landroidx/media3/common/util/Util;->e([JJZZ)I

    .line 44
    move-result p1

    .line 45
    .line 46
    iput p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public skipData(J)I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->eventTimesUs:[J

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p1, p2, v2, v3}, Landroidx/media3/common/util/Util;->e([JJZZ)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result p1

    .line 15
    .line 16
    iget p2, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 17
    .line 18
    sub-int p2, p1, p2

    .line 19
    .line 20
    iput p1, p0, Landroidx/media3/exoplayer/dash/EventSampleStream;->currentIndex:I

    .line 21
    return p2
.end method
