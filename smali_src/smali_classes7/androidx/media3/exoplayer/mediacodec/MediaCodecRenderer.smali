.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_MODE_ALWAYS:I = 0x2

.field private static final ADAPTATION_WORKAROUND_MODE_NEVER:I = 0x0

.field private static final ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION:I = 0x1

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field protected static final CODEC_OPERATING_RATE_UNSET:F = -1.0f

.field private static final DRAIN_ACTION_FLUSH:I = 0x1

.field private static final DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION:I = 0x2

.field private static final DRAIN_ACTION_NONE:I = 0x0

.field private static final DRAIN_ACTION_REINITIALIZE:I = 0x3

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final DRAIN_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private final assumedMinimumCodecOperatingRate:F

.field private availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

.field private bypassDrainAndReinitialize:Z

.field private bypassEnabled:Z

.field private final bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private bypassSampleBufferPending:Z

.field private c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecAdaptationWorkaroundMode:I

.field private final codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field private codecDrainAction:I

.field private codecDrainState:I

.field private codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecHasOutputMediaFormat:Z

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecInputFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsDiscardToSpsWorkaround:Z

.field private codecNeedsEosBufferTimestampWorkaround:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosOutputExceptionWorkaround:Z

.field private codecNeedsEosPropagation:Z

.field private codecNeedsFlushWorkaround:Z

.field private codecNeedsMonoChannelCountWorkaround:Z

.field private codecNeedsSosFlushWorkaround:Z

.field private codecOperatingRate:F

.field private codecOutputMediaFormat:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecOutputMediaFormatChanged:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private currentPlaybackSpeed:F

.field private final decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private final enableDecoderFallback:Z

.field private inputFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private isDecodeOnlyOutputBuffer:Z

.field private isLastOutputBuffer:Z

.field private largestQueuedPresentationTimeUs:J

.field private lastBufferInStreamPresentationTimeUs:J

.field private lastProcessedOutputBufferTimeUs:J

.field private final mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private mediaCrypto:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaCryptoRequiresSecureDecoder:Z

.field private needToNotifyOutputFormatChangeAfterStreamChange:Z

.field private final noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

.field private outputBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

.field private pendingOutputEndOfStream:Z

.field private final pendingOutputStreamChanges:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderTimeLimitMs:J

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private targetPlaybackSpeed:F

.field private waitingForFirstSampleInFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 14
    .line 15
    iput-boolean p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 16
    .line 17
    iput p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->r()Landroidx/media3/decoder/DecoderInputBuffer;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 24
    .line 25
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 26
    const/4 p2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 32
    .line 33
    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    .line 34
    const/4 p3, 0x2

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p3}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 40
    .line 41
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;-><init>()V

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 47
    .line 48
    new-instance p3, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    .line 56
    .line 57
    .line 58
    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 59
    .line 60
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 61
    .line 62
    const/high16 p3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 65
    .line 66
    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 74
    .line 75
    new-instance p5, Ljava/util/ArrayDeque;

    .line 76
    .line 77
    .line 78
    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    .line 79
    .line 80
    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 81
    .line 82
    sget-object p5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;->o(I)V

    .line 89
    .line 90
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 94
    move-result-object p5

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    new-instance p1, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;-><init>()V

    .line 103
    .line 104
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 105
    .line 106
    const/high16 p1, -0x40800000    # -1.0f

    .line 107
    .line 108
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 109
    .line 110
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 111
    .line 112
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 113
    const/4 p1, -0x1

    .line 114
    .line 115
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 116
    .line 117
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 118
    .line 119
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 120
    .line 121
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 122
    .line 123
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 124
    .line 125
    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 126
    .line 127
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 128
    .line 129
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 130
    return-void
.end method

.method private D()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->m()Landroidx/media3/exoplayer/FormatHolder;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 17
    .line 18
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/exoplayer/BaseRenderer;->A(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 28
    move-result v2

    .line 29
    const/4 v4, -0x5

    .line 30
    .line 31
    if-eq v2, v4, :cond_6

    .line 32
    const/4 v4, -0x4

    .line 33
    .line 34
    if-eq v2, v4, :cond_2

    .line 35
    const/4 v0, -0x3

    .line 36
    .line 37
    if-ne v2, v0, :cond_1

    .line 38
    return-void

    .line 39
    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 44
    throw v0

    .line 45
    .line 46
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 55
    return-void

    .line 56
    .line 57
    :cond_3
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Landroidx/media3/common/Format;

    .line 68
    .line 69
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 70
    const/4 v4, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 74
    .line 75
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 76
    .line 77
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->p()V

    .line 81
    .line 82
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    const-string v3, "audio/opus"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v2

    .line 95
    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 99
    .line 100
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 101
    .line 102
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 103
    .line 104
    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3, v4}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->a(Landroidx/media3/decoder/DecoderInputBuffer;Ljava/util/List;)V

    .line 108
    .line 109
    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 110
    .line 111
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->t(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 115
    move-result v2

    .line 116
    .line 117
    if-nez v2, :cond_0

    .line 118
    .line 119
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 120
    return-void

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 124
    return-void
.end method

.method private E(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 5
    const/4 v14, 0x1

    .line 6
    xor-int/2addr v0, v14

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 10
    .line 11
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->y()Z

    .line 15
    move-result v0

    .line 16
    const/4 v13, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 22
    .line 23
    iget-object v6, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 26
    const/4 v8, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->x()I

    .line 30
    move-result v9

    .line 31
    .line 32
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->v()J

    .line 36
    move-result-wide v10

    .line 37
    .line 38
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->f()Z

    .line 42
    move-result v12

    .line 43
    .line 44
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 48
    move-result v16

    .line 49
    .line 50
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 51
    .line 52
    move-object/from16 v0, p0

    .line 53
    .line 54
    move-wide/from16 v1, p1

    .line 55
    .line 56
    move-object/from16 v17, v3

    .line 57
    .line 58
    move-wide/from16 v3, p3

    .line 59
    .line 60
    move/from16 v13, v16

    .line 61
    .line 62
    move-object/from16 v14, v17

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->w()J

    .line 74
    move-result-wide v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0(J)V

    .line 78
    .line 79
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->b()V

    .line 83
    const/4 v0, 0x0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    return v0

    .line 87
    :cond_1
    move v0, v13

    .line 88
    .line 89
    :goto_0
    iget-boolean v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    const/4 v1, 0x1

    .line 93
    .line 94
    iput-boolean v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 95
    return v0

    .line 96
    :cond_2
    const/4 v1, 0x1

    .line 97
    .line 98
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 103
    .line 104
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->t(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    .line 108
    move-result v2

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 112
    .line 113
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 114
    .line 115
    :cond_3
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 116
    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->y()Z

    .line 123
    move-result v2

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    return v1

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q()V

    .line 130
    .line 131
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 135
    .line 136
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 137
    .line 138
    if-nez v2, :cond_5

    .line 139
    return v0

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D()V

    .line 143
    .line 144
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->y()Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->p()V

    .line 156
    .line 157
    :cond_6
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->y()Z

    .line 161
    move-result v2

    .line 162
    .line 163
    if-nez v2, :cond_8

    .line 164
    .line 165
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 166
    .line 167
    if-nez v2, :cond_8

    .line 168
    .line 169
    iget-boolean v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 170
    .line 171
    if-eqz v2, :cond_7

    .line 172
    goto :goto_1

    .line 173
    :cond_7
    move v14, v0

    .line 174
    goto :goto_2

    .line 175
    :cond_8
    :goto_1
    move v14, v1

    .line 176
    :goto_2
    return v14
.end method

.method private F0()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    if-eq v0, v2, :cond_1

    .line 9
    const/4 v2, 0x3

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c1()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X()V

    .line 32
    :goto_0
    return-void
.end method

.method private G(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x19

    .line 5
    .line 6
    if-gt v0, v1, :cond_1

    .line 7
    .line 8
    const-string v1, "OMX.Exynos.avc.dec.secure"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "SM-T585"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string v2, "SM-A510"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    const-string v2, "SM-A520"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    const-string v2, "SM-J700"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    :cond_0
    const/4 p1, 0x2

    .line 50
    return p1

    .line 51
    .line 52
    :cond_1
    const/16 v1, 0x18

    .line 53
    .line 54
    if-ge v0, v1, :cond_4

    .line 55
    .line 56
    const-string v0, "OMX.Nvidia.h264.decode"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    const-string v0, "OMX.Nvidia.h264.decode.secure"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    :cond_2
    sget-object p1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "flounder"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    const-string v0, "flounder_lte"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v0

    .line 87
    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    const-string v0, "grouper"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    .line 99
    const-string/jumbo v0, "tilapia"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    :cond_3
    const/4 p1, 0x1

    .line 107
    return p1

    .line 108
    :cond_4
    const/4 p1, 0x0

    .line 109
    return p1
.end method

.method private static H(Ljava/lang/String;Landroidx/media3/common/Format;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method private H0()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f()Landroid/media/MediaFormat;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "width"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    const/16 v3, 0x20

    .line 23
    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    const-string v2, "height"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 35
    return-void

    .line 36
    .line 37
    :cond_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const-string v2, "channel-count"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 45
    .line 46
    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 47
    .line 48
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 49
    return-void
.end method

.method private static I(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    const-string v0, "OMX.SEC.mp3.dec"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    .line 17
    const-string/jumbo p0, "samsung"

    .line 18
    .line 19
    sget-object v0, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    sget-object p0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "baffin"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, "grand"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-string v0, "fortuna"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    const-string v0, "gprimelte"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    const-string v0, "j2y18lte"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    const-string v0, "ms01"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    move-result p0

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    :cond_0
    const/4 p0, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 p0, 0x0

    .line 79
    :goto_0
    return p0
.end method

.method private I0(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->m()Landroidx/media3/exoplayer/FormatHolder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/BaseRenderer;->A(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 17
    move-result p1

    .line 18
    const/4 v1, -0x5

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 25
    return v2

    .line 26
    :cond_0
    const/4 v0, -0x4

    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method private static J(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    const-string v1, "OMX.google.vorbis.decoder"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    :cond_0
    const/16 v1, 0x13

    .line 17
    .line 18
    if-gt v0, v1, :cond_3

    .line 19
    .line 20
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "hb2000"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "stvm8"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    :cond_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    :cond_2
    const/4 p0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p0, 0x0

    .line 57
    :goto_0
    return p0
.end method

.method private J0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 7
    return-void
.end method

.method private static K(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "OMX.google.aac.decoder"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private static L(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 3
    .line 4
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x19

    .line 7
    .line 8
    if-gt v1, v2, :cond_0

    .line 9
    .line 10
    const-string v2, "OMX.rk.video_decoder.avc"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    :cond_0
    const/16 v2, 0x11

    .line 19
    .line 20
    if-gt v1, v2, :cond_1

    .line 21
    .line 22
    const-string v2, "OMX.allwinner.video.decoder.avc"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    :cond_1
    const/16 v2, 0x1d

    .line 31
    .line 32
    if-gt v1, v2, :cond_2

    .line 33
    .line 34
    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    :cond_2
    const-string v0, "Amazon"

    .line 83
    .line 84
    sget-object v1, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    const-string v0, "AFTS"

    .line 93
    .line 94
    sget-object v1, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v0

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    .line 103
    .line 104
    if-eqz p0, :cond_4

    .line 105
    :cond_3
    const/4 p0, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const/4 p0, 0x0

    .line 108
    :goto_0
    return p0
.end method

.method private static M(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x12

    .line 5
    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const-string v1, "OMX.SEC.avc.dec"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    const-string v1, "OMX.SEC.avc.dec.secure"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    :cond_0
    const/16 v1, 0x13

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 31
    .line 32
    const-string v1, "SM-G800"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v0, "OMX.Exynos.avc.dec"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const-string v0, "OMX.Exynos.avc.dec.secure"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p0

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 59
    :goto_1
    return p0
.end method

.method private static N(Ljava/lang/String;Landroidx/media3/common/Format;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x12

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    iget p1, p1, Landroidx/media3/common/Format;->channelCount:I

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p0

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method private static O(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "c2.android.aac.decoder"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private O0()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 9
    return-void
.end method

.method private P0()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private Q()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->b()V

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->d()V

    .line 23
    return-void
.end method

.method private Q0(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media3/exoplayer/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/i;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 8
    return-void
.end method

.method private R()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V
    .locals 4

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 3
    .line 4
    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->A0(J)V

    .line 20
    :cond_0
    return-void
.end method

.method private S()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J0()V

    .line 15
    :goto_0
    return-void
.end method

.method private T()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    .line 19
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 22
    .line 23
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 24
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c1()V

    .line 29
    :goto_1
    return v1
.end method

.method private U(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v16, 0x1

    .line 9
    const/4 v14, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_b

    .line 12
    .line 13
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :try_start_0
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 22
    .line 23
    iget-object v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->d(Landroid/media/MediaCodec$BufferInfo;)I

    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :catch_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 32
    .line 33
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 39
    :cond_0
    return v14

    .line 40
    .line 41
    :cond_1
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 42
    .line 43
    iget-object v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->d(Landroid/media/MediaCodec$BufferInfo;)I

    .line 47
    move-result v0

    .line 48
    .line 49
    :goto_0
    if-gez v0, :cond_5

    .line 50
    const/4 v1, -0x2

    .line 51
    .line 52
    if-ne v0, v1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H0()V

    .line 56
    return v16

    .line 57
    .line 58
    :cond_2
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 67
    const/4 v1, 0x2

    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 73
    :cond_4
    return v14

    .line 74
    .line 75
    :cond_5
    iget-boolean v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    iput-boolean v14, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 80
    .line 81
    iget-object v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v0, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->e(IZ)V

    .line 85
    return v16

    .line 86
    .line 87
    :cond_6
    iget-object v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 88
    .line 89
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 90
    .line 91
    if-nez v2, :cond_7

    .line 92
    .line 93
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 94
    .line 95
    and-int/lit8 v1, v1, 0x4

    .line 96
    .line 97
    if-eqz v1, :cond_7

    .line 98
    .line 99
    .line 100
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 101
    return v14

    .line 102
    .line 103
    :cond_7
    iput v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 104
    .line 105
    iget-object v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->k(I)Ljava/nio/ByteBuffer;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    iput-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    iget-object v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 116
    .line 117
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    .line 122
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    iget-object v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 125
    .line 126
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 127
    .line 128
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 129
    add-int/2addr v2, v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    .line 134
    :cond_8
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 135
    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 139
    .line 140
    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 141
    .line 142
    const-wide/16 v3, 0x0

    .line 143
    .line 144
    cmp-long v1, v1, v3

    .line 145
    .line 146
    if-nez v1, :cond_9

    .line 147
    .line 148
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 149
    .line 150
    and-int/lit8 v1, v1, 0x4

    .line 151
    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    iget-wide v1, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 160
    .line 161
    cmp-long v3, v1, v3

    .line 162
    .line 163
    if-eqz v3, :cond_9

    .line 164
    .line 165
    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 166
    .line 167
    :cond_9
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 168
    .line 169
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 170
    .line 171
    .line 172
    invoke-direct {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->p0(J)Z

    .line 173
    move-result v0

    .line 174
    .line 175
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 176
    .line 177
    iget-wide v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 178
    .line 179
    iget-object v2, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 180
    .line 181
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 182
    .line 183
    cmp-long v0, v0, v2

    .line 184
    .line 185
    if-nez v0, :cond_a

    .line 186
    .line 187
    move/from16 v0, v16

    .line 188
    goto :goto_1

    .line 189
    :cond_a
    move v0, v14

    .line 190
    .line 191
    :goto_1
    iput-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1(J)V

    .line 195
    .line 196
    :cond_b
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 197
    .line 198
    if-eqz v0, :cond_d

    .line 199
    .line 200
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 201
    .line 202
    if-eqz v0, :cond_d

    .line 203
    .line 204
    :try_start_1
    iget-object v5, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 205
    .line 206
    iget-object v6, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 209
    .line 210
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 211
    .line 212
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 213
    const/4 v9, 0x1

    .line 214
    .line 215
    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 216
    .line 217
    iget-boolean v12, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 218
    .line 219
    iget-boolean v13, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 220
    .line 221
    iget-object v3, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    .line 223
    move-object/from16 v0, p0

    .line 224
    .line 225
    move-wide/from16 v1, p1

    .line 226
    .line 227
    move-object/from16 v17, v3

    .line 228
    .line 229
    move-wide/from16 v3, p3

    .line 230
    .line 231
    move/from16 v18, v14

    .line 232
    .line 233
    move-object/from16 v14, v17

    .line 234
    .line 235
    .line 236
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    .line 237
    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 238
    goto :goto_2

    .line 239
    .line 240
    :catch_1
    move/from16 v18, v14

    .line 241
    .line 242
    .line 243
    :catch_2
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 244
    .line 245
    iget-boolean v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 246
    .line 247
    if-eqz v0, :cond_c

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 251
    :cond_c
    return v18

    .line 252
    .line 253
    :cond_d
    move/from16 v18, v14

    .line 254
    .line 255
    iget-object v5, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 256
    .line 257
    iget-object v6, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 258
    .line 259
    iget v7, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 260
    .line 261
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 262
    .line 263
    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 264
    const/4 v9, 0x1

    .line 265
    .line 266
    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 267
    .line 268
    iget-boolean v12, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 269
    .line 270
    iget-boolean v13, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 271
    .line 272
    iget-object v14, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 273
    .line 274
    move-object/from16 v0, p0

    .line 275
    .line 276
    move-wide/from16 v1, p1

    .line 277
    .line 278
    move-wide/from16 v3, p3

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    .line 282
    move-result v0

    .line 283
    .line 284
    :goto_2
    if-eqz v0, :cond_10

    .line 285
    .line 286
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 287
    .line 288
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0(J)V

    .line 292
    .line 293
    iget-object v0, v15, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 294
    .line 295
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 296
    .line 297
    and-int/lit8 v0, v0, 0x4

    .line 298
    .line 299
    if-eqz v0, :cond_e

    .line 300
    .line 301
    move/from16 v14, v16

    .line 302
    goto :goto_3

    .line 303
    .line 304
    :cond_e
    move/from16 v14, v18

    .line 305
    .line 306
    .line 307
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0()V

    .line 308
    .line 309
    if-nez v14, :cond_f

    .line 310
    return v16

    .line 311
    .line 312
    .line 313
    :cond_f
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 314
    :cond_10
    return v18
.end method

.method private U0(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1    # Landroidx/media3/exoplayer/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/i;->a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 8
    return-void
.end method

.method private V(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z
    .locals 5
    .param p3    # Landroidx/media3/exoplayer/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/media3/exoplayer/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-ne p3, p4, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz p4, :cond_a

    .line 8
    .line 9
    if-nez p3, :cond_1

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Landroidx/media3/decoder/CryptoConfig;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    if-nez v2, :cond_2

    .line 17
    return v1

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Landroidx/media3/decoder/CryptoConfig;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    if-eqz v3, :cond_a

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-nez v3, :cond_3

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_3
    instance-of v3, v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 41
    .line 42
    if-nez v3, :cond_4

    .line 43
    return v0

    .line 44
    .line 45
    :cond_4
    check-cast v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 46
    .line 47
    .line 48
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Ljava/util/UUID;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Ljava/util/UUID;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-nez v3, :cond_5

    .line 60
    return v1

    .line 61
    .line 62
    :cond_5
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 63
    .line 64
    const/16 v4, 0x17

    .line 65
    .line 66
    if-ge v3, v4, :cond_6

    .line 67
    return v1

    .line 68
    .line 69
    :cond_6
    sget-object v3, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 70
    .line 71
    .line 72
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Ljava/util/UUID;

    .line 73
    move-result-object p3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p3

    .line 78
    .line 79
    if-nez p3, :cond_a

    .line 80
    .line 81
    .line 82
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Ljava/util/UUID;

    .line 83
    move-result-object p3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p3

    .line 88
    .line 89
    if-eqz p3, :cond_7

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_7
    iget-boolean p3, v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    .line 93
    .line 94
    if-eqz p3, :cond_8

    .line 95
    move p2, v0

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_8
    iget-object p2, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-interface {p4, p2}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Ljava/lang/String;)Z

    .line 102
    move-result p2

    .line 103
    .line 104
    :goto_0
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    .line 105
    .line 106
    if-nez p1, :cond_9

    .line 107
    .line 108
    if-eqz p2, :cond_9

    .line 109
    return v1

    .line 110
    :cond_9
    return v0

    .line 111
    :cond_a
    :goto_1
    return v1
.end method

.method private V0(J)Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v0

    .line 16
    sub-long/2addr v0, p1

    .line 17
    .line 18
    iget-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 19
    .line 20
    cmp-long p1, v0, p1

    .line 21
    .line 22
    if-gez p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    :goto_1
    return p1
.end method

.method private W()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1d

    .line 6
    .line 7
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1d

    .line 11
    .line 12
    iget-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X0()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S()V

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 30
    .line 31
    if-gez v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->j()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 40
    .line 41
    if-gez v0, :cond_2

    .line 42
    return v1

    .line 43
    .line 44
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 45
    .line 46
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->g(I)Ljava/nio/ByteBuffer;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 58
    .line 59
    :cond_3
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 60
    const/4 v3, 0x1

    .line 61
    .line 62
    if-ne v0, v3, :cond_5

    .line 63
    .line 64
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_4
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 70
    .line 71
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 72
    .line 73
    iget v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    .line 77
    const-wide/16 v8, 0x0

    .line 78
    const/4 v10, 0x4

    .line 79
    .line 80
    .line 81
    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->i(IIIJI)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0()V

    .line 85
    .line 86
    :goto_0
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 87
    return v1

    .line 88
    .line 89
    :cond_5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 94
    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 96
    .line 97
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    sget-object v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 105
    .line 106
    iget v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 107
    const/4 v6, 0x0

    .line 108
    array-length v7, v1

    .line 109
    .line 110
    const-wide/16 v8, 0x0

    .line 111
    const/4 v10, 0x0

    .line 112
    .line 113
    .line 114
    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->i(IIIJI)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0()V

    .line 118
    .line 119
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 120
    return v3

    .line 121
    .line 122
    :cond_6
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 123
    .line 124
    if-ne v0, v3, :cond_8

    .line 125
    move v0, v1

    .line 126
    .line 127
    :goto_1
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 128
    .line 129
    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 130
    .line 131
    .line 132
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 133
    move-result v4

    .line 134
    .line 135
    if-ge v0, v4, :cond_7

    .line 136
    .line 137
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 138
    .line 139
    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 140
    .line 141
    .line 142
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v4

    .line 144
    .line 145
    check-cast v4, [B

    .line 146
    .line 147
    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 148
    .line 149
    iget-object v5, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    goto :goto_1

    .line 156
    .line 157
    :cond_7
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 158
    .line 159
    :cond_8
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 160
    .line 161
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 165
    move-result v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->m()Landroidx/media3/exoplayer/FormatHolder;

    .line 169
    move-result-object v4

    .line 170
    .line 171
    :try_start_0
    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v4, v5, v1}, Landroidx/media3/exoplayer/BaseRenderer;->A(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 175
    move-result v5
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    .line 179
    move-result v6

    .line 180
    .line 181
    if-nez v6, :cond_9

    .line 182
    .line 183
    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6}, Landroidx/media3/decoder/Buffer;->k()Z

    .line 187
    move-result v6

    .line 188
    .line 189
    if-eqz v6, :cond_a

    .line 190
    .line 191
    :cond_9
    iget-wide v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 192
    .line 193
    iput-wide v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 194
    :cond_a
    const/4 v6, -0x3

    .line 195
    .line 196
    if-ne v5, v6, :cond_b

    .line 197
    return v1

    .line 198
    :cond_b
    const/4 v6, -0x5

    .line 199
    .line 200
    if-ne v5, v6, :cond_d

    .line 201
    .line 202
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 203
    .line 204
    if-ne v0, v2, :cond_c

    .line 205
    .line 206
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 210
    .line 211
    iput v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 212
    .line 213
    .line 214
    :cond_c
    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 215
    return v3

    .line 216
    .line 217
    :cond_d
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 221
    move-result v4

    .line 222
    .line 223
    if-eqz v4, :cond_11

    .line 224
    .line 225
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 226
    .line 227
    if-ne v0, v2, :cond_e

    .line 228
    .line 229
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 233
    .line 234
    iput v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 235
    .line 236
    :cond_e
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 237
    .line 238
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 239
    .line 240
    if-nez v0, :cond_f

    .line 241
    .line 242
    .line 243
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 244
    return v1

    .line 245
    .line 246
    :cond_f
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 247
    .line 248
    if-eqz v0, :cond_10

    .line 249
    goto :goto_2

    .line 250
    .line 251
    :cond_10
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 252
    .line 253
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 254
    .line 255
    iget v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 256
    const/4 v6, 0x0

    .line 257
    const/4 v7, 0x0

    .line 258
    .line 259
    const-wide/16 v8, 0x0

    .line 260
    const/4 v10, 0x4

    .line 261
    .line 262
    .line 263
    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->i(IIIJI)V

    .line 264
    .line 265
    .line 266
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    :goto_2
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .line 270
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 274
    move-result v2

    .line 275
    .line 276
    .line 277
    invoke-static {v2}, Landroidx/media3/common/util/Util;->X(I)I

    .line 278
    move-result v2

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 282
    move-result-object v0

    .line 283
    throw v0

    .line 284
    .line 285
    :cond_11
    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 286
    .line 287
    if-nez v4, :cond_13

    .line 288
    .line 289
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4}, Landroidx/media3/decoder/Buffer;->j()Z

    .line 293
    move-result v4

    .line 294
    .line 295
    if-nez v4, :cond_13

    .line 296
    .line 297
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 301
    .line 302
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 303
    .line 304
    if-ne v0, v2, :cond_12

    .line 305
    .line 306
    iput v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 307
    :cond_12
    return v3

    .line 308
    .line 309
    :cond_13
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->q()Z

    .line 313
    move-result v2

    .line 314
    .line 315
    if-eqz v2, :cond_14

    .line 316
    .line 317
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 318
    .line 319
    iget-object v4, v4, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v0}, Landroidx/media3/decoder/CryptoInfo;->b(I)V

    .line 323
    .line 324
    :cond_14
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 325
    .line 326
    if-eqz v0, :cond_16

    .line 327
    .line 328
    if-nez v2, :cond_16

    .line 329
    .line 330
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 331
    .line 332
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 333
    .line 334
    .line 335
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->b(Ljava/nio/ByteBuffer;)V

    .line 336
    .line 337
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 338
    .line 339
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 343
    move-result v0

    .line 344
    .line 345
    if-nez v0, :cond_15

    .line 346
    return v3

    .line 347
    .line 348
    :cond_15
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 349
    .line 350
    :cond_16
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 351
    .line 352
    iget-wide v4, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 353
    .line 354
    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    .line 355
    .line 356
    if-eqz v6, :cond_17

    .line 357
    .line 358
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v4, v0}, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->d(Landroidx/media3/common/Format;Landroidx/media3/decoder/DecoderInputBuffer;)J

    .line 362
    move-result-wide v4

    .line 363
    .line 364
    iget-wide v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 365
    .line 366
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    .line 367
    .line 368
    iget-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v8}, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->b(Landroidx/media3/common/Format;)J

    .line 372
    move-result-wide v8

    .line 373
    .line 374
    .line 375
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 376
    move-result-wide v6

    .line 377
    .line 378
    iput-wide v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 379
    :cond_17
    move-wide v12, v4

    .line 380
    .line 381
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->f()Z

    .line 385
    move-result v0

    .line 386
    .line 387
    if-eqz v0, :cond_18

    .line 388
    .line 389
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 390
    .line 391
    .line 392
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 393
    move-result-object v4

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    :cond_18
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 399
    .line 400
    if-eqz v0, :cond_1a

    .line 401
    .line 402
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 406
    move-result v0

    .line 407
    .line 408
    if-nez v0, :cond_19

    .line 409
    .line 410
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 414
    move-result-object v0

    .line 415
    .line 416
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 417
    .line 418
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 419
    .line 420
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v12, v13, v4}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    .line 424
    goto :goto_3

    .line 425
    .line 426
    :cond_19
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 427
    .line 428
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 429
    .line 430
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v12, v13, v4}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    .line 434
    .line 435
    :goto_3
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 436
    .line 437
    :cond_1a
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 438
    .line 439
    .line 440
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 441
    move-result-wide v4

    .line 442
    .line 443
    iput-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 444
    .line 445
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->p()V

    .line 449
    .line 450
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->e()Z

    .line 454
    move-result v0

    .line 455
    .line 456
    if-eqz v0, :cond_1b

    .line 457
    .line 458
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->k0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 462
    .line 463
    :cond_1b
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->D0(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 467
    .line 468
    if-eqz v2, :cond_1c

    .line 469
    .line 470
    :try_start_2
    iget-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 471
    .line 472
    iget v9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 473
    const/4 v10, 0x0

    .line 474
    .line 475
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 476
    .line 477
    iget-object v11, v0, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    .line 478
    const/4 v14, 0x0

    .line 479
    .line 480
    .line 481
    invoke-interface/range {v8 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->m(IILandroidx/media3/decoder/CryptoInfo;JI)V

    .line 482
    goto :goto_4

    .line 483
    :catch_1
    move-exception v0

    .line 484
    goto :goto_5

    .line 485
    .line 486
    :cond_1c
    iget-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 487
    .line 488
    iget v9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 489
    const/4 v10, 0x0

    .line 490
    .line 491
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 492
    .line 493
    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 497
    move-result v11

    .line 498
    const/4 v14, 0x0

    .line 499
    .line 500
    .line 501
    invoke-interface/range {v8 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->i(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 502
    .line 503
    .line 504
    :goto_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0()V

    .line 505
    .line 506
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 507
    .line 508
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 509
    .line 510
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 511
    .line 512
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    .line 513
    add-int/2addr v1, v3

    .line 514
    .line 515
    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    .line 516
    return v3

    .line 517
    .line 518
    :goto_5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 522
    move-result v2

    .line 523
    .line 524
    .line 525
    invoke-static {v2}, Landroidx/media3/common/util/Util;->X(I)I

    .line 526
    move-result v2

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 530
    move-result-object v0

    .line 531
    throw v0

    .line 532
    :catch_2
    move-exception v0

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0(Ljava/lang/Exception;)V

    .line 536
    .line 537
    .line 538
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0(I)Z

    .line 539
    .line 540
    .line 541
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X()V

    .line 542
    return v3

    .line 543
    :cond_1d
    :goto_6
    return v1
.end method

.method private X()V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0()V

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0()V

    .line 14
    throw v0
.end method

.method private a0(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->g0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v1, "Drm session requires secure decoder for "

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, ", but no secure decoder available. Trying to proceed with "

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v1, "."

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    const-string v1, "MediaCodecRenderer"

    .line 68
    .line 69
    .line 70
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-object v0
.end method

.method protected static a1(Landroidx/media3/common/Format;)Z
    .locals 1

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format;->cryptoType:I

    .line 3
    .line 4
    if-eqz p0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 12
    :goto_1
    return p0
.end method

.method private b1(Landroidx/media3/common/Format;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_6

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->p()[Landroidx/media3/common/Format;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F

    .line 34
    move-result p1

    .line 35
    .line 36
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 37
    .line 38
    cmpl-float v1, v0, p1

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    return v2

    .line 42
    .line 43
    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    .line 44
    .line 45
    cmpl-float v3, p1, v1

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S()V

    .line 51
    const/4 p1, 0x0

    .line 52
    return p1

    .line 53
    .line 54
    :cond_3
    cmpl-float v0, v0, v1

    .line 55
    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 59
    .line 60
    cmpl-float v0, p1, v0

    .line 61
    .line 62
    if-lez v0, :cond_4

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    return v2

    .line 65
    .line 66
    :cond_5
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "operating-rate"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->b(Landroid/os/Bundle;)V

    .line 81
    .line 82
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 83
    :cond_6
    :goto_1
    return v2
.end method

.method private c1()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Landroidx/media3/decoder/CryptoConfig;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 13
    .line 14
    check-cast v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 24
    .line 25
    const/16 v2, 0x1776

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 29
    move-result-object v0

    .line 30
    throw v0

    .line 31
    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 39
    .line 40
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 41
    return-void
.end method

.method private l0()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m0(Landroidx/media3/common/Format;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q()V

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "audio/mp4a-latm"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "audio/mpeg"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "audio/opus"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->z(I)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 39
    .line 40
    const/16 v0, 0x20

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->z(I)V

    .line 44
    .line 45
    :goto_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 46
    return-void
.end method

.method private n0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 12
    .param p2    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 3
    .line 4
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x17

    .line 7
    .line 8
    const/high16 v3, -0x40800000    # -1.0f

    .line 9
    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    move v2, v3

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->p()[Landroidx/media3/common/Format;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->e0(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F

    .line 24
    move-result v2

    .line 25
    .line 26
    :goto_0
    iget v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 27
    .line 28
    cmpg-float v4, v2, v4

    .line 29
    .line 30
    if-gtz v4, :cond_1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v2

    .line 33
    .line 34
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E0(Landroidx/media3/common/Format;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    move-result-wide v4

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v2, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->h0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    const/16 p2, 0x1f

    .line 50
    .line 51
    if-lt v0, p2, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->o()Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-static {v2, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;->a(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 59
    .line 60
    :cond_2
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    const-string v0, "createCodec:"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-static {p2}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 81
    .line 82
    .line 83
    invoke-interface {p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->a(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 93
    move-result-wide v6

    .line 94
    .line 95
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->o(Landroidx/media3/common/Format;)Z

    .line 99
    move-result p2

    .line 100
    const/4 v0, 0x2

    .line 101
    const/4 v8, 0x0

    .line 102
    const/4 v9, 0x1

    .line 103
    .line 104
    if-nez p2, :cond_3

    .line 105
    .line 106
    new-array p2, v0, [Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 109
    .line 110
    .line 111
    invoke-static {v10}, Landroidx/media3/common/Format;->j(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 112
    move-result-object v10

    .line 113
    .line 114
    aput-object v10, p2, v8

    .line 115
    .line 116
    aput-object v1, p2, v9

    .line 117
    .line 118
    const-string v10, "Format exceeds selected codec\'s capabilities [%s, %s]"

    .line 119
    .line 120
    .line 121
    invoke-static {v10, p2}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    const-string v10, "MediaCodecRenderer"

    .line 125
    .line 126
    .line 127
    invoke-static {v10, p2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 130
    .line 131
    iput v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 132
    .line 133
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 134
    .line 135
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G(Ljava/lang/String;)I

    .line 139
    move-result p2

    .line 140
    .line 141
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 142
    .line 143
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 144
    .line 145
    .line 146
    invoke-static {v1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->H(Ljava/lang/String;Landroidx/media3/common/Format;)Z

    .line 147
    move-result p2

    .line 148
    .line 149
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 150
    .line 151
    .line 152
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M(Ljava/lang/String;)Z

    .line 153
    move-result p2

    .line 154
    .line 155
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 156
    .line 157
    .line 158
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O(Ljava/lang/String;)Z

    .line 159
    move-result p2

    .line 160
    .line 161
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 162
    .line 163
    .line 164
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->J(Ljava/lang/String;)Z

    .line 165
    move-result p2

    .line 166
    .line 167
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K(Ljava/lang/String;)Z

    .line 171
    move-result p2

    .line 172
    .line 173
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I(Ljava/lang/String;)Z

    .line 177
    move-result p2

    .line 178
    .line 179
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 180
    .line 181
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 182
    .line 183
    .line 184
    invoke-static {v1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N(Ljava/lang/String;Landroidx/media3/common/Format;)Z

    .line 185
    move-result p2

    .line 186
    .line 187
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 191
    move-result p2

    .line 192
    .line 193
    if-nez p2, :cond_5

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d0()Z

    .line 197
    move-result p2

    .line 198
    .line 199
    if-eqz p2, :cond_4

    .line 200
    goto :goto_2

    .line 201
    :cond_4
    move p2, v8

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    :goto_2
    move p2, v9

    .line 204
    .line 205
    :goto_3
    iput-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 206
    .line 207
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 208
    .line 209
    .line 210
    invoke-interface {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->a()Z

    .line 211
    move-result p2

    .line 212
    .line 213
    if-eqz p2, :cond_7

    .line 214
    .line 215
    iput-boolean v9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 216
    .line 217
    iput v9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 218
    .line 219
    iget p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 220
    .line 221
    if-eqz p2, :cond_6

    .line 222
    move v8, v9

    .line 223
    .line 224
    :cond_6
    iput-boolean v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 225
    .line 226
    :cond_7
    const-string p2, "c2.android.mp3.decoder"

    .line 227
    .line 228
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result p1

    .line 233
    .line 234
    if-eqz p1, :cond_8

    .line 235
    .line 236
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    .line 237
    .line 238
    .line 239
    invoke-direct {p1}, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;-><init>()V

    .line 240
    .line 241
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    .line 242
    .line 243
    .line 244
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    .line 245
    move-result p1

    .line 246
    .line 247
    if-ne p1, v0, :cond_9

    .line 248
    .line 249
    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 251
    move-result-wide p1

    .line 252
    .line 253
    const-wide/16 v10, 0x3e8

    .line 254
    add-long/2addr p1, v10

    .line 255
    .line 256
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 257
    .line 258
    :cond_9
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 259
    .line 260
    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    .line 261
    add-int/2addr p2, v9

    .line 262
    .line 263
    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    .line 264
    .line 265
    sub-long p1, v6, v4

    .line 266
    move-object v0, p0

    .line 267
    move-wide v3, v6

    .line 268
    move-wide v5, p1

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V

    .line 272
    return-void

    .line 273
    :catchall_0
    move-exception p1

    .line 274
    .line 275
    .line 276
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 277
    throw p1
.end method

.method private p0(J)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    cmp-long v3, v3, p1

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return v1
.end method

.method private static q0(Ljava/lang/IllegalStateException;)Z
    .locals 3

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r0(Ljava/lang/IllegalStateException;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return v2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 18
    move-result-object p0

    .line 19
    array-length v0, p0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    aget-object p0, p0, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    const-string v0, "android.media.MediaCodec"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p0

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v1

    .line 39
    :goto_0
    return v2
.end method

.method private static r0(Ljava/lang/IllegalStateException;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    instance-of p0, p0, Landroid/media/MediaCodec$CodecException;

    .line 3
    return p0
.end method

.method private static s0(Ljava/lang/IllegalStateException;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method private u0(Landroid/media/MediaCrypto;Z)V
    .locals 7
    .param p1    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a0(Z)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 15
    .line 16
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    iget-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 35
    const/4 v3, 0x0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    :cond_1
    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :goto_1
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 52
    .line 53
    .line 54
    const v2, -0xc34e

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, p1, p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/Throwable;ZI)V

    .line 58
    throw v0

    .line 59
    .line 60
    :cond_2
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-nez v0, :cond_8

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 75
    .line 76
    :goto_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 77
    .line 78
    if-nez v2, :cond_7

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 90
    move-result v3

    .line 91
    .line 92
    if-nez v3, :cond_3

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_3
    :try_start_1
    invoke-direct {p0, v2, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    goto :goto_3

    .line 98
    :catch_1
    move-exception v3

    .line 99
    .line 100
    const-string v4, "MediaCodecRenderer"

    .line 101
    .line 102
    if-ne v2, v0, :cond_4

    .line 103
    .line 104
    :try_start_2
    const-string v3, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    .line 105
    .line 106
    .line 107
    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    const-wide/16 v5, 0x32

    .line 110
    .line 111
    .line 112
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v2, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->n0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V

    .line 116
    goto :goto_3

    .line 117
    :catch_2
    move-exception v3

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 120
    .line 121
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    const-string v6, "Failed to initialize decoder: "

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v5

    .line 137
    .line 138
    .line 139
    invoke-static {v4, v5, v3}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 145
    .line 146
    new-instance v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 147
    .line 148
    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 149
    .line 150
    .line 151
    invoke-direct {v4, v5, v3, p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/Throwable;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0(Ljava/lang/Exception;)V

    .line 155
    .line 156
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 157
    .line 158
    if-nez v2, :cond_5

    .line 159
    .line 160
    iput-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 161
    goto :goto_5

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-static {v2, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->a(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 168
    .line 169
    :goto_5
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 173
    move-result v2

    .line 174
    .line 175
    if-nez v2, :cond_6

    .line 176
    goto :goto_3

    .line 177
    .line 178
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 179
    throw p1

    .line 180
    .line 181
    :cond_7
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 182
    return-void

    .line 183
    .line 184
    :cond_8
    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 185
    .line 186
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 187
    .line 188
    .line 189
    const v2, -0xc34f

    .line 190
    .line 191
    .line 192
    invoke-direct {p1, v0, v1, p2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/Throwable;ZI)V

    .line 193
    throw p1
.end method


# virtual methods
.method protected A0(J)V
    .locals 0

    .line 1
    return-void
.end method

.method protected B0(J)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 19
    .line 20
    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0()V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method protected C0()V
    .locals 0

    .line 1
    return-void
.end method

.method protected D0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected E0(Landroidx/media3/common/Format;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected F(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x1

    .line 7
    move-object v0, v6

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 13
    return-object v6
.end method

.method protected abstract G0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .param p5    # Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected K0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->release()V

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 11
    .line 12
    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_3

    .line 27
    .line 28
    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 29
    .line 30
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    goto :goto_1

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0()V

    .line 47
    return-void

    .line 48
    .line 49
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0()V

    .line 56
    throw v1

    .line 57
    .line 58
    :goto_3
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 59
    .line 60
    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 66
    goto :goto_4

    .line 67
    :catchall_2
    move-exception v1

    .line 68
    goto :goto_5

    .line 69
    .line 70
    :cond_2
    :goto_4
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0()V

    .line 77
    throw v1

    .line 78
    .line 79
    :goto_5
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->N0()V

    .line 86
    throw v1
.end method

.method protected L0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected M0()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->O0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P0()V

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 17
    .line 18
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 19
    .line 20
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 21
    .line 22
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 23
    .line 24
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 25
    .line 26
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 34
    .line 35
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 36
    .line 37
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;->c()V

    .line 45
    .line 46
    :cond_0
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 47
    .line 48
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 49
    .line 50
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 51
    .line 52
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 53
    return-void
.end method

.method protected N0()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c2Mp3TimestampTracker:Landroidx/media3/exoplayer/mediacodec/C2Mp3TimestampTracker;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 22
    .line 23
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    .line 25
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 26
    .line 27
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 28
    .line 29
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsDiscardToSpsWorkaround:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsMonoChannelCountWorkaround:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 46
    .line 47
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 48
    .line 49
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 50
    return-void
.end method

.method protected P(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    .line 6
    return-object v0
.end method

.method protected final S0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    return-void
.end method

.method protected final T0(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-void
.end method

.method protected W0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method protected X0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected final Y()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 10
    :cond_0
    return v0
.end method

.method protected Y0(Landroidx/media3/common/Format;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method protected Z()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eq v0, v2, :cond_5

    .line 13
    .line 14
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsFlushWorkaround:Z

    .line 15
    .line 16
    if-nez v2, :cond_5

    .line 17
    .line 18
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    :cond_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 v2, 0x2

    .line 35
    .line 36
    if-ne v0, v2, :cond_4

    .line 37
    .line 38
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 39
    .line 40
    const/16 v2, 0x17

    .line 41
    .line 42
    if-lt v0, v2, :cond_3

    .line 43
    move v4, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move v4, v1

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 49
    .line 50
    if-lt v0, v2, :cond_4

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c1()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .line 57
    const-string v1, "MediaCodecRenderer"

    .line 58
    .line 59
    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 66
    return v3

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->X()V

    .line 70
    return v1

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 74
    return v3
.end method

.method protected abstract Z0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final a(Landroidx/media3/common/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I

    .line 6
    move-result p1
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .line 10
    const/16 v1, 0xfa2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 14
    move-result-object p1

    .line 15
    throw p1
.end method

.method protected final b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    return-object v0
.end method

.method protected final c0()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method public d(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 3
    .line 4
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1(Landroidx/media3/common/Format;)Z

    .line 10
    return-void
.end method

.method protected d0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected final d1(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/TimedValueQueue;->j(J)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroidx/media3/common/Format;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->i()Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Landroidx/media3/common/Format;

    .line 31
    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 46
    .line 47
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->z0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 51
    const/4 p1, 0x0

    .line 52
    .line 53
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 54
    .line 55
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    .line 56
    :cond_2
    return-void
.end method

.method protected e0(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .locals 0

    .line 1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected final f0()Landroid/media/MediaFormat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected abstract g0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method protected abstract h0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final i0()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 3
    .line 4
    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    .line 5
    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->q()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->l0()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 34
    .line 35
    cmp-long v0, v0, v2

    .line 36
    .line 37
    if-gez v0, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0
.end method

.method protected j0()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    return v0
.end method

.method protected k0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected final o0(Landroidx/media3/common/Format;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y0(Landroidx/media3/common/Format;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected r()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 4
    .line 5
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Z()Z

    .line 17
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F0()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 13
    .line 14
    if-nez v0, :cond_b

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->L0()V

    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_4

    .line 26
    .line 27
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0(I)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    return-void

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 41
    .line 42
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    const-string v2, "bypassRender"

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->E(JJ)Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 63
    .line 64
    if-eqz v2, :cond_7

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    move-result-wide v2

    .line 69
    .line 70
    const-string v4, "drainAndFeed"

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U(JJ)Z

    .line 77
    move-result v4

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V0(J)Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->W()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V0(J)Z

    .line 96
    move-result p1

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    goto :goto_2

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :cond_7
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 106
    .line 107
    iget p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->C(J)I

    .line 111
    move-result p1

    .line 112
    add-int/2addr p4, p1

    .line 113
    .line 114
    iput p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->I0(I)Z

    .line 118
    .line 119
    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/media3/exoplayer/DecoderCounters;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 124
    .line 125
    .line 126
    :goto_4
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->q0(Ljava/lang/IllegalStateException;)Z

    .line 127
    move-result p2

    .line 128
    .line 129
    if-eqz p2, :cond_a

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->v0(Ljava/lang/Exception;)V

    .line 133
    .line 134
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 135
    .line 136
    const/16 p3, 0x15

    .line 137
    .line 138
    if-lt p2, p3, :cond_8

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s0(Ljava/lang/IllegalStateException;)Z

    .line 142
    move-result p2

    .line 143
    .line 144
    if-eqz p2, :cond_8

    .line 145
    move v1, v0

    .line 146
    .line 147
    :cond_8
    if-eqz v1, :cond_9

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 151
    .line 152
    .line 153
    :cond_9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->P(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 161
    .line 162
    const/16 p3, 0xfa3

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1, p2, v1, p3}, Landroidx/media3/exoplayer/BaseRenderer;->k(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 166
    move-result-object p1

    .line 167
    throw p1

    .line 168
    :cond_a
    throw p1

    .line 169
    :cond_b
    const/4 p1, 0x0

    .line 170
    .line 171
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 172
    throw v0
.end method

.method protected s(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 8
    return-void
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected t(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 8
    .line 9
    iget-boolean p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->b()V

    .line 17
    .line 18
    iget-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 22
    .line 23
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->d()V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y()Z

    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 35
    .line 36
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->l()I

    .line 40
    move-result p1

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    const/4 p1, 0x1

    .line 44
    .line 45
    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->c()V

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 58
    return-void
.end method

.method protected final t0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_8

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 7
    .line 8
    if-nez v0, :cond_8

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->o0(Landroidx/media3/common/Format;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->m0(Landroidx/media3/common/Format;)V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 38
    .line 39
    if-eqz v1, :cond_7

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->b()Landroidx/media3/decoder/CryptoConfig;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 46
    const/4 v3, 0x1

    .line 47
    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    return-void

    .line 61
    .line 62
    :cond_3
    instance-of v2, v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    move-object v2, v1

    .line 66
    .line 67
    check-cast v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 68
    .line 69
    :try_start_0
    new-instance v4, Landroid/media/MediaCrypto;

    .line 70
    .line 71
    iget-object v5, v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    .line 72
    .line 73
    iget-object v6, v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    .line 77
    .line 78
    iput-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    iget-boolean v2, v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    .line 86
    move-result v0

    .line 87
    .line 88
    if-eqz v0, :cond_4

    .line 89
    move v0, v3

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/4 v0, 0x0

    .line 92
    .line 93
    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 98
    .line 99
    const/16 v2, 0x1776

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 103
    move-result-object v0

    .line 104
    throw v0

    .line 105
    .line 106
    :cond_5
    :goto_1
    sget-boolean v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    instance-of v0, v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 115
    .line 116
    .line 117
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eq v0, v3, :cond_6

    .line 121
    const/4 v1, 0x4

    .line 122
    .line 123
    if-eq v0, v1, :cond_7

    .line 124
    return-void

    .line 125
    .line 126
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 137
    .line 138
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 139
    .line 140
    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 144
    move-result-object v0

    .line 145
    throw v0

    .line 146
    .line 147
    :cond_7
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 148
    .line 149
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCryptoRequiresSecureDecoder:Z

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->u0(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    return-void

    .line 154
    :catch_1
    move-exception v0

    .line 155
    .line 156
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 157
    .line 158
    const/16 v2, 0xfa1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 162
    move-result-object v0

    .line 163
    throw v0

    .line 164
    :cond_8
    :goto_2
    return-void
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected w()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 16
    throw v1
.end method

.method protected w0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method protected x()V
    .locals 0

    .line 1
    return-void
.end method

.method protected x0(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected y()V
    .locals 0

    .line 1
    return-void
.end method

.method protected y0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 11
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    move-object v5, v1

    .line 11
    .line 12
    check-cast v5, Landroidx/media3/common/Format;

    .line 13
    .line 14
    iget-object v1, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_13

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->U0(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 22
    .line 23
    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 24
    .line 25
    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 31
    return-object v1

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 41
    return-object v1

    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 44
    .line 45
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1, v5, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->V(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S()V

    .line 59
    .line 60
    new-instance p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 61
    .line 62
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    const/16 v7, 0x80

    .line 66
    move-object v2, p1

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 75
    const/4 v6, 0x0

    .line 76
    .line 77
    if-eq v2, v3, :cond_3

    .line 78
    move v2, v0

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move v2, v6

    .line 81
    .line 82
    :goto_0
    if-eqz v2, :cond_5

    .line 83
    .line 84
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 85
    .line 86
    const/16 v7, 0x17

    .line 87
    .line 88
    if-lt v3, v7, :cond_4

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move v3, v6

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    :goto_1
    move v3, v0

    .line 93
    .line 94
    .line 95
    :goto_2
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->F(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    iget v7, v3, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    .line 102
    const/4 v8, 0x3

    .line 103
    .line 104
    if-eqz v7, :cond_f

    .line 105
    .line 106
    const/16 v9, 0x10

    .line 107
    const/4 v10, 0x2

    .line 108
    .line 109
    if-eq v7, v0, :cond_c

    .line 110
    .line 111
    if-eq v7, v10, :cond_8

    .line 112
    .line 113
    if-ne v7, v8, :cond_7

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1(Landroidx/media3/common/Format;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-nez v0, :cond_6

    .line 120
    :goto_3
    move v7, v9

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_6
    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 124
    .line 125
    if-eqz v2, :cond_10

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T()Z

    .line 129
    move-result v0

    .line 130
    .line 131
    if-nez v0, :cond_10

    .line 132
    :goto_4
    move v7, v10

    .line 133
    goto :goto_6

    .line 134
    .line 135
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 139
    throw p1

    .line 140
    .line 141
    .line 142
    :cond_8
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1(Landroidx/media3/common/Format;)Z

    .line 143
    move-result v7

    .line 144
    .line 145
    if-nez v7, :cond_9

    .line 146
    goto :goto_3

    .line 147
    .line 148
    :cond_9
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 149
    .line 150
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 151
    .line 152
    iget v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 153
    .line 154
    if-eq v7, v10, :cond_b

    .line 155
    .line 156
    if-ne v7, v0, :cond_a

    .line 157
    .line 158
    iget v7, v5, Landroidx/media3/common/Format;->width:I

    .line 159
    .line 160
    iget v9, v4, Landroidx/media3/common/Format;->width:I

    .line 161
    .line 162
    if-ne v7, v9, :cond_a

    .line 163
    .line 164
    iget v7, v5, Landroidx/media3/common/Format;->height:I

    .line 165
    .line 166
    iget v9, v4, Landroidx/media3/common/Format;->height:I

    .line 167
    .line 168
    if-ne v7, v9, :cond_a

    .line 169
    goto :goto_5

    .line 170
    :cond_a
    move v0, v6

    .line 171
    .line 172
    :cond_b
    :goto_5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 173
    .line 174
    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 175
    .line 176
    if-eqz v2, :cond_10

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T()Z

    .line 180
    move-result v0

    .line 181
    .line 182
    if-nez v0, :cond_10

    .line 183
    goto :goto_4

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b1(Landroidx/media3/common/Format;)Z

    .line 187
    move-result v0

    .line 188
    .line 189
    if-nez v0, :cond_d

    .line 190
    goto :goto_3

    .line 191
    .line 192
    :cond_d
    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 193
    .line 194
    if-eqz v2, :cond_e

    .line 195
    .line 196
    .line 197
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T()Z

    .line 198
    move-result v0

    .line 199
    .line 200
    if-nez v0, :cond_10

    .line 201
    goto :goto_4

    .line 202
    .line 203
    .line 204
    :cond_e
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R()Z

    .line 205
    move-result v0

    .line 206
    .line 207
    if-nez v0, :cond_10

    .line 208
    goto :goto_4

    .line 209
    .line 210
    .line 211
    :cond_f
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S()V

    .line 212
    :cond_10
    move v7, v6

    .line 213
    .line 214
    :goto_6
    iget v0, v3, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    .line 215
    .line 216
    if-eqz v0, :cond_12

    .line 217
    .line 218
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 219
    .line 220
    if-ne v0, p1, :cond_11

    .line 221
    .line 222
    iget p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 223
    .line 224
    if-ne p1, v8, :cond_12

    .line 225
    .line 226
    :cond_11
    new-instance p1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 227
    .line 228
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 229
    const/4 v6, 0x0

    .line 230
    move-object v2, p1

    .line 231
    .line 232
    .line 233
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 234
    return-object p1

    .line 235
    :cond_12
    return-object v3

    .line 236
    .line 237
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 238
    .line 239
    .line 240
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 241
    .line 242
    const/16 v0, 0xfa5

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, p1, v5, v0}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 246
    move-result-object p1

    .line 247
    throw p1
.end method

.method protected z([Landroidx/media3/common/Format;JJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 4
    .line 5
    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    move-object v5, v1

    .line 23
    move-wide v8, p2

    .line 24
    .line 25
    move-wide/from16 v10, p4

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-wide v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 43
    .line 44
    cmp-long v5, v1, v3

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    iget-wide v5, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 49
    .line 50
    cmp-long v7, v5, v3

    .line 51
    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    cmp-long v1, v5, v1

    .line 55
    .line 56
    if-ltz v1, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    move-object v5, v1

    .line 65
    move-wide v8, p2

    .line 66
    .line 67
    move-wide/from16 v10, p4

    .line 68
    .line 69
    .line 70
    invoke-direct/range {v5 .. v11}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 74
    .line 75
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 76
    .line 77
    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    .line 78
    .line 79
    cmp-long v1, v1, v3

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0()V

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 88
    .line 89
    new-instance v9, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 90
    .line 91
    iget-wide v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 92
    move-object v2, v9

    .line 93
    move-wide v5, p2

    .line 94
    .line 95
    move-wide/from16 v7, p4

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    :goto_0
    return-void
.end method

.method protected z0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    return-void
.end method
