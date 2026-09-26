.class public abstract Lcom/google/android/exoplayer2/mediacodec/o;
.super Lcom/google/android/exoplayer2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/o$a;,
        Lcom/google/android/exoplayer2/mediacodec/o$b;
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

.field private static final MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT:I = 0xa

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
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Lcom/google/android/exoplayer2/decoder/g;

.field private final bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

.field private bypassDrainAndReinitialize:Z

.field private bypassEnabled:Z

.field private final bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

.field private bypassSampleBufferPending:Z

.field private c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codec:Lcom/google/android/exoplayer2/mediacodec/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecAdaptationWorkaroundMode:I

.field private final codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/l$b;

.field private codecDrainAction:I

.field private codecDrainState:I

.field private codecDrmSession:Lcom/google/android/exoplayer2/drm/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecHasOutputMediaFormat:Z

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private codecInputFormat:Lcom/google/android/exoplayer2/a2;
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

.field protected decoderCounters:Lcom/google/android/exoplayer2/decoder/e;

.field private final enableDecoderFallback:Z

.field private final formatQueue:Lcom/google/android/exoplayer2/util/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/k0<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;"
        }
    .end annotation
.end field

.field private inputFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private isDecodeOnlyOutputBuffer:Z

.field private isLastOutputBuffer:Z

.field private largestQueuedPresentationTimeUs:J

.field private lastBufferInStreamPresentationTimeUs:J

.field private final mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/q;

.field private mediaCrypto:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaCryptoRequiresSecureDecoder:Z

.field private final noDataBuffer:Lcom/google/android/exoplayer2/decoder/g;

.field private outputBuffer:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private outputStreamStartPositionUs:J

.field private pendingOutputEndOfStream:Z

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private final pendingOutputStreamStartPositionsUs:[J

.field private final pendingOutputStreamSwitchTimesUs:[J

.field private pendingPlaybackException:Lcom/google/android/exoplayer2/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/o$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderTimeLimitMs:J

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;
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

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/o;->ADAPTATION_WORKAROUND_BUFFER:[B

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

.method public constructor <init>(ILcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/q;ZF)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/l$b;

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/q;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/q;

    .line 14
    .line 15
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->enableDecoderFallback:Z

    .line 16
    .line 17
    iput p5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->assumedMinimumCodecOperatingRate:F

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/g;->q()Lcom/google/android/exoplayer2/decoder/g;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 24
    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/decoder/g;

    .line 26
    const/4 p2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/decoder/g;-><init>(I)V

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/exoplayer2/decoder/g;

    .line 34
    const/4 p3, 0x2

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/decoder/g;-><init>(I)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 40
    .line 41
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/h;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/h;-><init>()V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 47
    .line 48
    new-instance p3, Lcom/google/android/exoplayer2/util/k0;

    .line 49
    .line 50
    .line 51
    invoke-direct {p3}, Lcom/google/android/exoplayer2/util/k0;-><init>()V

    .line 52
    .line 53
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->formatQueue:Lcom/google/android/exoplayer2/util/k0;

    .line 54
    .line 55
    new-instance p3, Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    .line 63
    .line 64
    .line 65
    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 66
    .line 67
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 68
    .line 69
    const/high16 p3, 0x3f800000    # 1.0f

    .line 70
    .line 71
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->currentPlaybackSpeed:F

    .line 72
    .line 73
    iput p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->targetPlaybackSpeed:F

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    .line 80
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->renderTimeLimitMs:J

    .line 81
    .line 82
    const/16 p5, 0xa

    .line 83
    .line 84
    new-array v0, p5, [J

    .line 85
    .line 86
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamStartPositionsUs:[J

    .line 87
    .line 88
    new-array v0, p5, [J

    .line 89
    .line 90
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetsUs:[J

    .line 91
    .line 92
    new-array p5, p5, [J

    .line 93
    .line 94
    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamSwitchTimesUs:[J

    .line 95
    .line 96
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamStartPositionUs:J

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/o;->M0(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/g;->n(I)V

    .line 103
    .line 104
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 108
    move-result-object p5

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    const/high16 p1, -0x40800000    # -1.0f

    .line 114
    .line 115
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOperatingRate:F

    .line 116
    .line 117
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdaptationWorkaroundMode:I

    .line 118
    .line 119
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 120
    const/4 p1, -0x1

    .line 121
    .line 122
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

    .line 123
    .line 124
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputIndex:I

    .line 125
    .line 126
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHotswapDeadlineMs:J

    .line 127
    .line 128
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 129
    .line 130
    iput-wide p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->lastBufferInStreamPresentationTimeUs:J

    .line 131
    .line 132
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 133
    .line 134
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 135
    return-void
.end method

.method private A(JJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    .line 5
    const/4 v14, 0x1

    .line 6
    xor-int/2addr v0, v14

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 10
    .line 11
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->x()Z

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
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 22
    .line 23
    iget-object v6, v0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputIndex:I

    .line 26
    const/4 v8, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->w()I

    .line 30
    move-result v9

    .line 31
    .line 32
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->u()J

    .line 36
    move-result-wide v10

    .line 37
    .line 38
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 42
    move-result v12

    .line 43
    .line 44
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 48
    move-result v16

    .line 49
    .line 50
    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputFormat:Lcom/google/android/exoplayer2/a2;

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
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/o;->B0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/a2;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->v()J

    .line 74
    move-result-wide v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->x0(J)V

    .line 78
    .line 79
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->b()V

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
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 90
    .line 91
    if-eqz v1, :cond_2

    .line 92
    const/4 v1, 0x1

    .line 93
    .line 94
    iput-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    .line 95
    return v0

    .line 96
    :cond_2
    const/4 v1, 0x1

    .line 97
    .line 98
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBufferPending:Z

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 103
    .line 104
    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/h;->s(Lcom/google/android/exoplayer2/decoder/g;)Z

    .line 108
    move-result v2

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 112
    .line 113
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBufferPending:Z

    .line 114
    .line 115
    :cond_3
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassDrainAndReinitialize:Z

    .line 116
    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/h;->x()Z

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->M()V

    .line 130
    .line 131
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassDrainAndReinitialize:Z

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->p0()V

    .line 135
    .line 136
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassEnabled:Z

    .line 137
    .line 138
    if-nez v2, :cond_5

    .line 139
    return v0

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->z()V

    .line 143
    .line 144
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/h;->x()Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/g;->o()V

    .line 156
    .line 157
    :cond_6
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/h;->x()Z

    .line 161
    move-result v2

    .line 162
    .line 163
    if-nez v2, :cond_8

    .line 164
    .line 165
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 166
    .line 167
    if-nez v2, :cond_8

    .line 168
    .line 169
    iget-boolean v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->bypassDrainAndReinitialize:Z

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

.method private A0()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

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
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->G0()V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->E0()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->T()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->X0()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->T()V

    .line 32
    :goto_0
    return-void
.end method

.method private C(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    sget-object v1, Lcom/google/android/exoplayer2/util/o0;->MODEL:Ljava/lang/String;

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
    sget-object p1, Lcom/google/android/exoplayer2/util/o0;->DEVICE:Ljava/lang/String;

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
    const-string v0, "tilapia"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p1

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    :cond_3
    const/4 p1, 0x1

    .line 106
    return p1

    .line 107
    :cond_4
    const/4 p1, 0x0

    .line 108
    return p1
.end method

.method private C0()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHasOutputMediaFormat:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/l;->f()Landroid/media/MediaFormat;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdaptationWorkaroundMode:I

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "width"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 19
    move-result v2

    .line 20
    .line 21
    const/16 v3, 0x20

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    const-string v2, "height"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 29
    move-result v2

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsMonoChannelCountWorkaround:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const-string v2, "channel-count"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 44
    .line 45
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormatChanged:Z

    .line 48
    return-void
.end method

.method private static D(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

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

.method private D0(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->k()Lcom/google/android/exoplayer2/b2;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 12
    .line 13
    or-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/f;->w(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I

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
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->u0(Lcom/google/android/exoplayer2/b2;)Lcom/google/android/exoplayer2/decoder/i;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->noDataBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method private static E(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    const-string p0, "samsung"

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->MANUFACTURER:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/google/android/exoplayer2/util/o0;->DEVICE:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "baffin"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v0, "grand"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const-string v0, "fortuna"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    const-string v0, "gprimelte"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    const-string v0, "j2y18lte"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    const-string v0, "ms01"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    move-result p0

    .line 73
    .line 74
    if-eqz p0, :cond_1

    .line 75
    :cond_0
    const/4 p0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 p0, 0x0

    .line 78
    :goto_0
    return p0
.end method

.method private E0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->F0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->p0()V

    .line 7
    return-void
.end method

.method private static F(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->DEVICE:Ljava/lang/String;

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
    const-string v1, "stvm8"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    :cond_1
    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    :cond_2
    const/4 p0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 p0, 0x0

    .line 56
    :goto_0
    return p0
.end method

.method private static G(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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

.method private static H(Lcom/google/android/exoplayer2/mediacodec/n;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 3
    .line 4
    sget v1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    :cond_2
    const-string v0, "Amazon"

    .line 51
    .line 52
    sget-object v1, Lcom/google/android/exoplayer2/util/o0;->MANUFACTURER:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    const-string v0, "AFTS"

    .line 61
    .line 62
    sget-object v1, Lcom/google/android/exoplayer2/util/o0;->MODEL:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/n;->secure:Z

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    :cond_3
    const/4 p0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 p0, 0x0

    .line 76
    :goto_0
    return p0
.end method

.method private static I(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    sget-object v0, Lcom/google/android/exoplayer2/util/o0;->MODEL:Ljava/lang/String;

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

.method private static J(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x12

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->channelCount:I

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

.method private J0()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, v0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 9
    return-void
.end method

.method private static K(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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

.method private K0()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private L0(Lcom/google/android/exoplayer2/drm/n;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/m;->a(Lcom/google/android/exoplayer2/drm/n;Lcom/google/android/exoplayer2/drm/n;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 8
    return-void
.end method

.method private M()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassDrainAndReinitialize:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/h;->b()V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBufferPending:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassEnabled:Z

    .line 18
    return-void
.end method

.method private M0(J)V
    .locals 2

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamOffsetUs:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/o;->w0(J)V

    .line 15
    :cond_0
    return-void
.end method

.method private N()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsFlushWorkaround:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method private O()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->E0()V

    .line 15
    :goto_0
    return-void
.end method

.method private P()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsFlushWorkaround:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosFlushWorkaround:Z

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
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 24
    const/4 v0, 0x0

    .line 25
    return v0

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->X0()V

    .line 29
    :goto_1
    return v1
.end method

.method private P0(Lcom/google/android/exoplayer2/drm/n;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/m;->a(Lcom/google/android/exoplayer2/drm/n;Lcom/google/android/exoplayer2/drm/n;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 8
    return-void
.end method

.method private Q(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->i0()Z

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
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedEos:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :try_start_0
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 22
    .line 23
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/l;->d(Landroid/media/MediaCodec$BufferInfo;)I

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 32
    .line 33
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->F0()V

    .line 39
    :cond_0
    return v14

    .line 40
    .line 41
    :cond_1
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 42
    .line 43
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/l;->d(Landroid/media/MediaCodec$BufferInfo;)I

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->C0()V

    .line 56
    return v16

    .line 57
    .line 58
    :cond_2
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosPropagation:Z

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 67
    const/4 v1, 0x2

    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 73
    :cond_4
    return v14

    .line 74
    .line 75
    :cond_5
    iget-boolean v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    iput-boolean v14, v15, Lcom/google/android/exoplayer2/mediacodec/o;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 80
    .line 81
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v0, v14}, Lcom/google/android/exoplayer2/mediacodec/l;->e(IZ)V

    .line 85
    return v16

    .line 86
    .line 87
    :cond_6
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 101
    return v14

    .line 102
    .line 103
    :cond_7
    iput v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputIndex:I

    .line 104
    .line 105
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/l;->k(I)Ljava/nio/ByteBuffer;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    iput-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 116
    .line 117
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    .line 122
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    iget-object v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

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
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 135
    .line 136
    if-eqz v0, :cond_9

    .line 137
    .line 138
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

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
    iget-wide v1, v15, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

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
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 168
    .line 169
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 170
    .line 171
    .line 172
    invoke-direct {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->l0(J)Z

    .line 173
    move-result v0

    .line 174
    .line 175
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->isDecodeOnlyOutputBuffer:Z

    .line 176
    .line 177
    iget-wide v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->lastBufferInStreamPresentationTimeUs:J

    .line 178
    .line 179
    iget-object v2, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

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
    iput-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->isLastOutputBuffer:Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/o;->Y0(J)V

    .line 195
    .line 196
    :cond_b
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 197
    .line 198
    if-eqz v0, :cond_d

    .line 199
    .line 200
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedEos:Z

    .line 201
    .line 202
    if-eqz v0, :cond_d

    .line 203
    .line 204
    :try_start_1
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 205
    .line 206
    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputIndex:I

    .line 209
    .line 210
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

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
    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/o;->isDecodeOnlyOutputBuffer:Z

    .line 218
    .line 219
    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/o;->isLastOutputBuffer:Z

    .line 220
    .line 221
    iget-object v3, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputFormat:Lcom/google/android/exoplayer2/a2;
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
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/o;->B0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/a2;)Z

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 244
    .line 245
    iget-boolean v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    .line 246
    .line 247
    if-eqz v0, :cond_c

    .line 248
    .line 249
    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->F0()V

    .line 251
    :cond_c
    return v18

    .line 252
    .line 253
    :cond_d
    move/from16 v18, v14

    .line 254
    .line 255
    iget-object v5, v15, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 256
    .line 257
    iget-object v6, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 258
    .line 259
    iget v7, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputIndex:I

    .line 260
    .line 261
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

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
    iget-boolean v12, v15, Lcom/google/android/exoplayer2/mediacodec/o;->isDecodeOnlyOutputBuffer:Z

    .line 269
    .line 270
    iget-boolean v13, v15, Lcom/google/android/exoplayer2/mediacodec/o;->isLastOutputBuffer:Z

    .line 271
    .line 272
    iget-object v14, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputFormat:Lcom/google/android/exoplayer2/a2;

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
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/exoplayer2/mediacodec/o;->B0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/a2;)Z

    .line 282
    move-result v0

    .line 283
    .line 284
    :goto_2
    if-eqz v0, :cond_10

    .line 285
    .line 286
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 287
    .line 288
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 289
    .line 290
    .line 291
    invoke-virtual {v15, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->x0(J)V

    .line 292
    .line 293
    iget-object v0, v15, Lcom/google/android/exoplayer2/mediacodec/o;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->K0()V

    .line 308
    .line 309
    if-nez v14, :cond_f

    .line 310
    return v16

    .line 311
    .line 312
    .line 313
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 314
    :cond_10
    return v18
.end method

.method private Q0(J)Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->renderTimeLimitMs:J

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
    iget-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->renderTimeLimitMs:J

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

.method private R(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/drm/n;Lcom/google/android/exoplayer2/drm/n;)Z
    .locals 4
    .param p3    # Lcom/google/android/exoplayer2/drm/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
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
    if-eqz p4, :cond_8

    .line 8
    .line 9
    if-nez p3, :cond_1

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/n;->c()Ljava/util/UUID;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-interface {p3}, Lcom/google/android/exoplayer2/drm/n;->c()Ljava/util/UUID;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    return v1

    .line 26
    .line 27
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 28
    .line 29
    const/16 v3, 0x17

    .line 30
    .line 31
    if-ge v2, v3, :cond_3

    .line 32
    return v1

    .line 33
    .line 34
    :cond_3
    sget-object v2, Lcom/google/android/exoplayer2/i;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    invoke-interface {p3}, Lcom/google/android/exoplayer2/drm/n;->c()Ljava/util/UUID;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p3

    .line 43
    .line 44
    if-nez p3, :cond_8

    .line 45
    .line 46
    .line 47
    invoke-interface {p4}, Lcom/google/android/exoplayer2/drm/n;->c()Ljava/util/UUID;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p3

    .line 53
    .line 54
    if-eqz p3, :cond_4

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/mediacodec/o;->d0(Lcom/google/android/exoplayer2/drm/n;)Lcom/google/android/exoplayer2/drm/g0;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    if-nez p3, :cond_5

    .line 62
    return v1

    .line 63
    .line 64
    :cond_5
    iget-boolean p3, p3, Lcom/google/android/exoplayer2/drm/g0;->forceAllowInsecureDecoderComponents:Z

    .line 65
    .line 66
    if-eqz p3, :cond_6

    .line 67
    move p2, v0

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_6
    iget-object p2, p2, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-interface {p4, p2}, Lcom/google/android/exoplayer2/drm/n;->d(Ljava/lang/String;)Z

    .line 74
    move-result p2

    .line 75
    .line 76
    :goto_0
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/mediacodec/n;->secure:Z

    .line 77
    .line 78
    if-nez p1, :cond_7

    .line 79
    .line 80
    if-eqz p2, :cond_7

    .line 81
    return v1

    .line 82
    :cond_7
    return v0

    .line 83
    :cond_8
    :goto_1
    return v1
.end method

.method private S()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1b

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1b

    .line 11
    .line 12
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->S0()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->O()V

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

    .line 30
    .line 31
    if-gez v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/l;->j()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

    .line 40
    .line 41
    if-gez v0, :cond_2

    .line 42
    return v1

    .line 43
    .line 44
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 47
    .line 48
    .line 49
    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/mediacodec/l;->g(I)Ljava/nio/ByteBuffer;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, v3, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 58
    .line 59
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 60
    const/4 v3, 0x1

    .line 61
    .line 62
    if-ne v0, v3, :cond_5

    .line 63
    .line 64
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosPropagation:Z

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_4
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedEos:Z

    .line 70
    .line 71
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 72
    .line 73
    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

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
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/l;->i(IIIJI)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->J0()V

    .line 85
    .line 86
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 87
    return v1

    .line 88
    .line 89
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 98
    .line 99
    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/o;->ADAPTATION_WORKAROUND_BUFFER:[B

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 105
    .line 106
    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

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
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/l;->i(IIIJI)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->J0()V

    .line 118
    .line 119
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    .line 120
    return v3

    .line 121
    .line 122
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 123
    .line 124
    if-ne v0, v3, :cond_8

    .line 125
    move v0, v1

    .line 126
    .line 127
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 138
    .line 139
    iget-object v4, v4, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

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
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 148
    .line 149
    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

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
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 158
    .line 159
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 165
    move-result v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->k()Lcom/google/android/exoplayer2/b2;

    .line 169
    move-result-object v4

    .line 170
    .line 171
    :try_start_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v4, v5, v1}, Lcom/google/android/exoplayer2/f;->w(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I

    .line 175
    move-result v5
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/g$a; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->hasReadStreamToEnd()Z

    .line 179
    move-result v6

    .line 180
    .line 181
    if-eqz v6, :cond_9

    .line 182
    .line 183
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 184
    .line 185
    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/o;->lastBufferInStreamPresentationTimeUs:J

    .line 186
    :cond_9
    const/4 v6, -0x3

    .line 187
    .line 188
    if-ne v5, v6, :cond_a

    .line 189
    return v1

    .line 190
    :cond_a
    const/4 v6, -0x5

    .line 191
    .line 192
    if-ne v5, v6, :cond_c

    .line 193
    .line 194
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 195
    .line 196
    if-ne v0, v2, :cond_b

    .line 197
    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 202
    .line 203
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 204
    .line 205
    .line 206
    :cond_b
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/o;->u0(Lcom/google/android/exoplayer2/b2;)Lcom/google/android/exoplayer2/decoder/i;

    .line 207
    return v3

    .line 208
    .line 209
    :cond_c
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 213
    move-result v4

    .line 214
    .line 215
    if-eqz v4, :cond_10

    .line 216
    .line 217
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 218
    .line 219
    if-ne v0, v2, :cond_d

    .line 220
    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 225
    .line 226
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 227
    .line 228
    :cond_d
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 229
    .line 230
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    .line 231
    .line 232
    if-nez v0, :cond_e

    .line 233
    .line 234
    .line 235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 236
    return v1

    .line 237
    .line 238
    :cond_e
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosPropagation:Z

    .line 239
    .line 240
    if-eqz v0, :cond_f

    .line 241
    goto :goto_2

    .line 242
    .line 243
    :cond_f
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedEos:Z

    .line 244
    .line 245
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 246
    .line 247
    iget v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

    .line 248
    const/4 v6, 0x0

    .line 249
    const/4 v7, 0x0

    .line 250
    .line 251
    const-wide/16 v8, 0x0

    .line 252
    const/4 v10, 0x4

    .line 253
    .line 254
    .line 255
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/mediacodec/l;->i(IIIJI)V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->J0()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :goto_2
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .line 262
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 266
    move-result v2

    .line 267
    .line 268
    .line 269
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/o0;->P(I)I

    .line 270
    move-result v2

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 274
    move-result-object v0

    .line 275
    throw v0

    .line 276
    .line 277
    :cond_10
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    .line 278
    .line 279
    if-nez v4, :cond_12

    .line 280
    .line 281
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/decoder/a;->j()Z

    .line 285
    move-result v4

    .line 286
    .line 287
    if-nez v4, :cond_12

    .line 288
    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 293
    .line 294
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 295
    .line 296
    if-ne v0, v2, :cond_11

    .line 297
    .line 298
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 299
    :cond_11
    return v3

    .line 300
    .line 301
    :cond_12
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/g;->p()Z

    .line 305
    move-result v2

    .line 306
    .line 307
    if-eqz v2, :cond_13

    .line 308
    .line 309
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 310
    .line 311
    iget-object v4, v4, Lcom/google/android/exoplayer2/decoder/g;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/c;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/decoder/c;->b(I)V

    .line 315
    .line 316
    :cond_13
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsDiscardToSpsWorkaround:Z

    .line 317
    .line 318
    if-eqz v0, :cond_15

    .line 319
    .line 320
    if-nez v2, :cond_15

    .line 321
    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 323
    .line 324
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 325
    .line 326
    .line 327
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/y;->b(Ljava/nio/ByteBuffer;)V

    .line 328
    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 335
    move-result v0

    .line 336
    .line 337
    if-nez v0, :cond_14

    .line 338
    return v3

    .line 339
    .line 340
    :cond_14
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsDiscardToSpsWorkaround:Z

    .line 341
    .line 342
    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 343
    .line 344
    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 345
    .line 346
    iget-object v6, p0, Lcom/google/android/exoplayer2/mediacodec/o;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/i;

    .line 347
    .line 348
    if-eqz v6, :cond_16

    .line 349
    .line 350
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6, v4, v0}, Lcom/google/android/exoplayer2/mediacodec/i;->d(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/g;)J

    .line 354
    move-result-wide v4

    .line 355
    .line 356
    iget-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 357
    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/i;

    .line 359
    .line 360
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/mediacodec/i;->b(Lcom/google/android/exoplayer2/a2;)J

    .line 364
    move-result-wide v8

    .line 365
    .line 366
    .line 367
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 368
    move-result-wide v6

    .line 369
    .line 370
    iput-wide v6, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 371
    :cond_16
    move-wide v12, v4

    .line 372
    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 377
    move-result v0

    .line 378
    .line 379
    if-eqz v0, :cond_17

    .line 380
    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 382
    .line 383
    .line 384
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 385
    move-result-object v4

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->waitingForFirstSampleInFormat:Z

    .line 391
    .line 392
    if-eqz v0, :cond_18

    .line 393
    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->formatQueue:Lcom/google/android/exoplayer2/util/k0;

    .line 395
    .line 396
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v12, v13, v4}, Lcom/google/android/exoplayer2/util/k0;->a(JLjava/lang/Object;)V

    .line 400
    .line 401
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->waitingForFirstSampleInFormat:Z

    .line 402
    .line 403
    :cond_18
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 404
    .line 405
    .line 406
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 407
    move-result-wide v4

    .line 408
    .line 409
    iput-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 410
    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->o()V

    .line 415
    .line 416
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->e()Z

    .line 420
    move-result v0

    .line 421
    .line 422
    if-eqz v0, :cond_19

    .line 423
    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->h0(Lcom/google/android/exoplayer2/decoder/g;)V

    .line 428
    .line 429
    :cond_19
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->z0(Lcom/google/android/exoplayer2/decoder/g;)V

    .line 433
    .line 434
    if-eqz v2, :cond_1a

    .line 435
    .line 436
    :try_start_2
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 437
    .line 438
    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

    .line 439
    const/4 v10, 0x0

    .line 440
    .line 441
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 442
    .line 443
    iget-object v11, v0, Lcom/google/android/exoplayer2/decoder/g;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/c;

    .line 444
    const/4 v14, 0x0

    .line 445
    .line 446
    .line 447
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/l;->l(IILcom/google/android/exoplayer2/decoder/c;JI)V

    .line 448
    goto :goto_3

    .line 449
    :catch_1
    move-exception v0

    .line 450
    goto :goto_4

    .line 451
    .line 452
    :cond_1a
    iget-object v8, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 453
    .line 454
    iget v9, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputIndex:I

    .line 455
    const/4 v10, 0x0

    .line 456
    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->buffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 458
    .line 459
    iget-object v0, v0, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 463
    move-result v11

    .line 464
    const/4 v14, 0x0

    .line 465
    .line 466
    .line 467
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/mediacodec/l;->i(IIIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 468
    .line 469
    .line 470
    :goto_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->J0()V

    .line 471
    .line 472
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    .line 473
    .line 474
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 475
    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 477
    .line 478
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/e;->queuedInputBufferCount:I

    .line 479
    add-int/2addr v1, v3

    .line 480
    .line 481
    iput v1, v0, Lcom/google/android/exoplayer2/decoder/e;->queuedInputBufferCount:I

    .line 482
    return v3

    .line 483
    .line 484
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 488
    move-result v2

    .line 489
    .line 490
    .line 491
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/o0;->P(I)I

    .line 492
    move-result v2

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 496
    move-result-object v0

    .line 497
    throw v0

    .line 498
    :catch_2
    move-exception v0

    .line 499
    .line 500
    .line 501
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->r0(Ljava/lang/Exception;)V

    .line 502
    .line 503
    .line 504
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->D0(I)Z

    .line 505
    .line 506
    .line 507
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->T()V

    .line 508
    return v3

    .line 509
    :cond_1b
    :goto_5
    return v1
.end method

.method private T()V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/mediacodec/l;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->H0()V

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->H0()V

    .line 14
    throw v0
.end method

.method protected static V0(Lcom/google/android/exoplayer2/a2;)Z
    .locals 1

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2;->cryptoType:I

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

.method private W(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/v$c;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/q;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/o;->c0(Lcom/google/android/exoplayer2/mediacodec/q;Lcom/google/android/exoplayer2/a2;Z)Ljava/util/List;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/q;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->c0(Lcom/google/android/exoplayer2/mediacodec/q;Lcom/google/android/exoplayer2/a2;Z)Ljava/util/List;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

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
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-object v0
.end method

.method private W0(Lcom/google/android/exoplayer2/a2;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_6

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

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
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->targetPlaybackSpeed:F

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->n()[Lcom/google/android/exoplayer2/a2;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->a0(FLcom/google/android/exoplayer2/a2;[Lcom/google/android/exoplayer2/a2;)F

    .line 34
    move-result p1

    .line 35
    .line 36
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOperatingRate:F

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->O()V

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
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->assumedMinimumCodecOperatingRate:F

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
    const-string v1, "operating-rate"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/mediacodec/l;->b(Landroid/os/Bundle;)V

    .line 80
    .line 81
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOperatingRate:F

    .line 82
    :cond_6
    :goto_1
    return v2
.end method

.method private X0()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->d0(Lcom/google/android/exoplayer2/drm/n;)Lcom/google/android/exoplayer2/drm/g0;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/g0;->sessionId:[B

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->L0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 24
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 28
    .line 29
    const/16 v2, 0x1776

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 33
    move-result-object v0

    .line 34
    throw v0
.end method

.method private d0(Lcom/google/android/exoplayer2/drm/n;)Lcom/google/android/exoplayer2/drm/g0;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/n;->b()Lcom/google/android/exoplayer2/decoder/b;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    instance-of v0, p1, Lcom/google/android/exoplayer2/drm/g0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "Expecting FrameworkCryptoConfig but found: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 36
    .line 37
    const/16 v1, 0x1771

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 41
    move-result-object p1

    .line 42
    throw p1

    .line 43
    .line 44
    :cond_1
    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/drm/g0;

    .line 45
    return-object p1
.end method

.method private i0()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j0(Lcom/google/android/exoplayer2/a2;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->M()V

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/mediacodec/h;->y(I)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 39
    .line 40
    const/16 v0, 0x20

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/mediacodec/h;->y(I)V

    .line 44
    .line 45
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassEnabled:Z

    .line 46
    return-void
.end method

.method private k0(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaCrypto;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 3
    .line 4
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->targetPlaybackSpeed:F

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->n()[Lcom/google/android/exoplayer2/a2;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/o;->a0(FLcom/google/android/exoplayer2/a2;[Lcom/google/android/exoplayer2/a2;)F

    .line 24
    move-result v2

    .line 25
    .line 26
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->assumedMinimumCodecOperatingRate:F

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
    .line 35
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v4

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/google/android/exoplayer2/mediacodec/o;->e0(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/a2;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/l$a;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const/16 p2, 0x1f

    .line 45
    .line 46
    if-lt v0, p2, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->m()Lcom/google/android/exoplayer2/analytics/t1;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/o$a;->a(Lcom/google/android/exoplayer2/mediacodec/l$a;Lcom/google/android/exoplayer2/analytics/t1;)V

    .line 54
    .line 55
    :cond_2
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v0, "createCodec:"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdapterFactory:Lcom/google/android/exoplayer2/mediacodec/l$b;

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, v2}, Lcom/google/android/exoplayer2/mediacodec/l$b;->a(Lcom/google/android/exoplayer2/mediacodec/l$a;)Lcom/google/android/exoplayer2/mediacodec/l;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    move-result-wide v6

    .line 89
    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    .line 91
    .line 92
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOperatingRate:F

    .line 93
    .line 94
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 95
    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->C(Ljava/lang/String;)I

    .line 100
    move-result p2

    .line 101
    .line 102
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdaptationWorkaroundMode:I

    .line 103
    .line 104
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 105
    .line 106
    .line 107
    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/mediacodec/o;->D(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)Z

    .line 108
    move-result p2

    .line 109
    .line 110
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsDiscardToSpsWorkaround:Z

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/o;->I(Ljava/lang/String;)Z

    .line 114
    move-result p2

    .line 115
    .line 116
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsFlushWorkaround:Z

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/o;->K(Ljava/lang/String;)Z

    .line 120
    move-result p2

    .line 121
    .line 122
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsSosFlushWorkaround:Z

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/o;->F(Ljava/lang/String;)Z

    .line 126
    move-result p2

    .line 127
    .line 128
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosFlushWorkaround:Z

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/o;->G(Ljava/lang/String;)Z

    .line 132
    move-result p2

    .line 133
    .line 134
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Lcom/google/android/exoplayer2/mediacodec/o;->E(Ljava/lang/String;)Z

    .line 138
    move-result p2

    .line 139
    .line 140
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 141
    .line 142
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 143
    .line 144
    .line 145
    invoke-static {v1, p2}, Lcom/google/android/exoplayer2/mediacodec/o;->J(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;)Z

    .line 146
    move-result p2

    .line 147
    .line 148
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsMonoChannelCountWorkaround:Z

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/o;->H(Lcom/google/android/exoplayer2/mediacodec/n;)Z

    .line 152
    move-result p2

    .line 153
    const/4 v0, 0x0

    .line 154
    const/4 v3, 0x1

    .line 155
    .line 156
    if-nez p2, :cond_4

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->Z()Z

    .line 160
    move-result p2

    .line 161
    .line 162
    if-eqz p2, :cond_3

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    move p2, v0

    .line 165
    goto :goto_3

    .line 166
    :cond_4
    :goto_2
    move p2, v3

    .line 167
    .line 168
    :goto_3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosPropagation:Z

    .line 169
    .line 170
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 171
    .line 172
    .line 173
    invoke-interface {p2}, Lcom/google/android/exoplayer2/mediacodec/l;->a()Z

    .line 174
    move-result p2

    .line 175
    .line 176
    if-eqz p2, :cond_6

    .line 177
    .line 178
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigured:Z

    .line 179
    .line 180
    iput v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 181
    .line 182
    iget p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdaptationWorkaroundMode:I

    .line 183
    .line 184
    if-eqz p2, :cond_5

    .line 185
    move v0, v3

    .line 186
    .line 187
    :cond_5
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 188
    .line 189
    :cond_6
    const-string p2, "c2.android.mp3.decoder"

    .line 190
    .line 191
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result p1

    .line 196
    .line 197
    if-eqz p1, :cond_7

    .line 198
    .line 199
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/i;

    .line 200
    .line 201
    .line 202
    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/i;-><init>()V

    .line 203
    .line 204
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/i;

    .line 205
    .line 206
    .line 207
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    .line 208
    move-result p1

    .line 209
    const/4 p2, 0x2

    .line 210
    .line 211
    if-ne p1, p2, :cond_8

    .line 212
    .line 213
    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 215
    move-result-wide p1

    .line 216
    .line 217
    const-wide/16 v8, 0x3e8

    .line 218
    add-long/2addr p1, v8

    .line 219
    .line 220
    iput-wide p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHotswapDeadlineMs:J

    .line 221
    .line 222
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 223
    .line 224
    iget p2, p1, Lcom/google/android/exoplayer2/decoder/e;->decoderInitCount:I

    .line 225
    add-int/2addr p2, v3

    .line 226
    .line 227
    iput p2, p1, Lcom/google/android/exoplayer2/decoder/e;->decoderInitCount:I

    .line 228
    .line 229
    sub-long p1, v6, v4

    .line 230
    move-object v0, p0

    .line 231
    move-wide v3, v6

    .line 232
    move-wide v5, p1

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/o;->s0(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/l$a;JJ)V

    .line 236
    return-void

    .line 237
    :catchall_0
    move-exception p1

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    .line 241
    throw p1
.end method

.method private l0(J)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

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

.method private static m0(Ljava/lang/IllegalStateException;)Z
    .locals 3

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->n0(Ljava/lang/IllegalStateException;)Z

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

.method private static n0(Ljava/lang/IllegalStateException;)Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    instance-of p0, p0, Landroid/media/MediaCodec$CodecException;

    .line 3
    return p0
.end method

.method private static o0(Ljava/lang/IllegalStateException;)Z
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

.method private q0(Landroid/media/MediaCrypto;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/o$b;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/o;->W(Z)Ljava/util/List;

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
    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->enableDecoderFallback:Z

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

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
    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/n;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/o$b;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/v$c; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 52
    .line 53
    .line 54
    const v2, -0xc34e

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/o$b;-><init>(Lcom/google/android/exoplayer2/a2;Ljava/lang/Throwable;ZI)V

    .line 58
    throw v0

    .line 59
    .line 60
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/n;

    .line 75
    .line 76
    :goto_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 77
    .line 78
    if-nez v2, :cond_7

    .line 79
    .line 80
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/n;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/o;->R0(Lcom/google/android/exoplayer2/mediacodec/n;)Z

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
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/o;->k0(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaCrypto;)V
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
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/mediacodec/o;->k0(Lcom/google/android/exoplayer2/mediacodec/n;Landroid/media/MediaCrypto;)V

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
    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 145
    .line 146
    new-instance v4, Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 147
    .line 148
    iget-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 149
    .line 150
    .line 151
    invoke-direct {v4, v5, v3, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/o$b;-><init>(Lcom/google/android/exoplayer2/a2;Ljava/lang/Throwable;ZLcom/google/android/exoplayer2/mediacodec/n;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/mediacodec/o;->r0(Ljava/lang/Exception;)V

    .line 155
    .line 156
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 157
    .line 158
    if-nez v2, :cond_5

    .line 159
    .line 160
    iput-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 161
    goto :goto_5

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/mediacodec/o$b;->a(Lcom/google/android/exoplayer2/mediacodec/o$b;Lcom/google/android/exoplayer2/mediacodec/o$b;)Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 168
    .line 169
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->preferredDecoderInitializationException:Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 179
    throw p1

    .line 180
    .line 181
    :cond_7
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 182
    return-void

    .line 183
    .line 184
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 187
    .line 188
    .line 189
    const v2, -0xc34f

    .line 190
    .line 191
    .line 192
    invoke-direct {p1, v0, v1, p2, v2}, Lcom/google/android/exoplayer2/mediacodec/o$b;-><init>(Lcom/google/android/exoplayer2/a2;Ljava/lang/Throwable;ZI)V

    .line 193
    throw p1
.end method

.method private z()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->k()Lcom/google/android/exoplayer2/b2;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 17
    .line 18
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/f;->w(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I

    .line 28
    move-result v2

    .line 29
    const/4 v4, -0x5

    .line 30
    .line 31
    if-eq v2, v4, :cond_5

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 55
    return-void

    .line 56
    .line 57
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->waitingForFirstSampleInFormat:Z

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Lcom/google/android/exoplayer2/a2;

    .line 68
    .line 69
    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputFormat:Lcom/google/android/exoplayer2/a2;

    .line 70
    const/4 v4, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v2, v4}, Lcom/google/android/exoplayer2/mediacodec/o;->v0(Lcom/google/android/exoplayer2/a2;Landroid/media/MediaFormat;)V

    .line 74
    .line 75
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->waitingForFirstSampleInFormat:Z

    .line 76
    .line 77
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/g;->o()V

    .line 81
    .line 82
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/h;->s(Lcom/google/android/exoplayer2/decoder/g;)Z

    .line 88
    move-result v2

    .line 89
    .line 90
    if-nez v2, :cond_0

    .line 91
    .line 92
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBufferPending:Z

    .line 93
    return-void

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->u0(Lcom/google/android/exoplayer2/b2;)Lcom/google/android/exoplayer2/decoder/i;

    .line 97
    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/decoder/i;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/google/android/exoplayer2/decoder/i;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/i;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;II)V

    .line 13
    return-object v6
.end method

.method protected abstract B0(JJLcom/google/android/exoplayer2/mediacodec/l;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/a2;)Z
    .param p5    # Lcom/google/android/exoplayer2/mediacodec/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation
.end method

.method protected F0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/exoplayer2/mediacodec/l;->release()V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 11
    .line 12
    iget v2, v1, Lcom/google/android/exoplayer2/decoder/e;->decoderReleaseCount:I

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    iput v2, v1, Lcom/google/android/exoplayer2/decoder/e;->decoderReleaseCount:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->t0(Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 29
    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

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
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->L0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->I0()V

    .line 47
    return-void

    .line 48
    .line 49
    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->L0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->I0()V

    .line 56
    throw v1

    .line 57
    .line 58
    :goto_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 59
    .line 60
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

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
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->L0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->I0()V

    .line 77
    throw v1

    .line 78
    .line 79
    :goto_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->L0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->I0()V

    .line 86
    throw v1
.end method

.method protected G0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected H0()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->J0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->K0()V

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHotswapDeadlineMs:J

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedEos:Z

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedBuffers:Z

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->isDecodeOnlyOutputBuffer:Z

    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->isLastOutputBuffer:Z

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decodeOnlyPresentationTimestamps:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->lastBufferInStreamPresentationTimeUs:J

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/i;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/i;->c()V

    .line 43
    .line 44
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainState:I

    .line 45
    .line 46
    iput v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigured:Z

    .line 49
    .line 50
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 51
    return-void
.end method

.method protected I0()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->H0()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingPlaybackException:Lcom/google/android/exoplayer2/q;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->c2Mp3TimestampTracker:Lcom/google/android/exoplayer2/mediacodec/i;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormatChanged:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHasOutputMediaFormat:Z

    .line 22
    .line 23
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOperatingRate:F

    .line 26
    .line 27
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdaptationWorkaroundMode:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsDiscardToSpsWorkaround:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsFlushWorkaround:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsSosFlushWorkaround:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosFlushWorkaround:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosBufferTimestampWorkaround:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsMonoChannelCountWorkaround:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosPropagation:Z

    .line 44
    .line 45
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigured:Z

    .line 46
    .line 47
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCryptoRequiresSecureDecoder:Z

    .line 50
    return-void
.end method

.method protected L(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/n;)Lcom/google/android/exoplayer2/mediacodec/m;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/mediacodec/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/m;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/n;)V

    .line 6
    return-object v0
.end method

.method protected final N0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputEndOfStream:Z

    return-void
.end method

.method protected final O0(Lcom/google/android/exoplayer2/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingPlaybackException:Lcom/google/android/exoplayer2/q;

    return-void
.end method

.method protected R0(Lcom/google/android/exoplayer2/mediacodec/n;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method protected S0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected T0(Lcom/google/android/exoplayer2/a2;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method protected final U()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->V()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->p0()V

    .line 10
    :cond_0
    return v0
.end method

.method protected abstract U0(Lcom/google/android/exoplayer2/mediacodec/q;Lcom/google/android/exoplayer2/a2;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/v$c;
        }
    .end annotation
.end method

.method protected V()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

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
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 9
    const/4 v2, 0x3

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eq v0, v2, :cond_5

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsFlushWorkaround:Z

    .line 15
    .line 16
    if-nez v2, :cond_5

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsSosFlushWorkaround:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHasOutputMediaFormat:Z

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsEosFlushWorkaround:Z

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReceivedEos:Z

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
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 49
    .line 50
    if-lt v0, v2, :cond_4

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->X0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/q; {:try_start_0 .. :try_end_0} :catch_0

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
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->F0()V

    .line 66
    return v3

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->T()V

    .line 70
    return v1

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->F0()V

    .line 74
    return v3
.end method

.method protected final X()Lcom/google/android/exoplayer2/mediacodec/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    return-object v0
.end method

.method protected final Y()Lcom/google/android/exoplayer2/mediacodec/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    return-object v0
.end method

.method protected final Y0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->formatQueue:Lcom/google/android/exoplayer2/util/k0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/k0;->j(J)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/a2;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormatChanged:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->formatQueue:Lcom/google/android/exoplayer2/util/k0;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/k0;->i()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/google/android/exoplayer2/a2;

    .line 23
    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputFormat:Lcom/google/android/exoplayer2/a2;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormatChanged:Z

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputFormat:Lcom/google/android/exoplayer2/a2;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputFormat:Lcom/google/android/exoplayer2/a2;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/o;->v0(Lcom/google/android/exoplayer2/a2;Landroid/media/MediaFormat;)V

    .line 43
    const/4 p1, 0x0

    .line 44
    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormatChanged:Z

    .line 46
    :cond_2
    return-void
.end method

.method protected Z()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer2/a2;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCodecSelector:Lcom/google/android/exoplayer2/mediacodec/q;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/mediacodec/o;->U0(Lcom/google/android/exoplayer2/mediacodec/q;Lcom/google/android/exoplayer2/a2;)I

    .line 6
    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/v$c; {:try_start_0 .. :try_end_0} :catch_0

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
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 14
    move-result-object p1

    .line 15
    throw p1
.end method

.method protected a0(FLcom/google/android/exoplayer2/a2;[Lcom/google/android/exoplayer2/a2;)F
    .locals 0

    .line 1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method protected final b0()Landroid/media/MediaFormat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected abstract c0(Lcom/google/android/exoplayer2/mediacodec/q;Lcom/google/android/exoplayer2/a2;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/q;",
            "Lcom/google/android/exoplayer2/a2;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/v$c;
        }
    .end annotation
.end method

.method public d(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->currentPlaybackSpeed:F

    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->targetPlaybackSpeed:F

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/o;->W0(Lcom/google/android/exoplayer2/a2;)Z

    .line 10
    return-void
.end method

.method protected abstract e0(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/a2;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected final f0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamOffsetUs:J

    return-wide v0
.end method

.method protected g0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->currentPlaybackSpeed:F

    return v0
.end method

.method protected h0(Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->o()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->i0()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHotswapDeadlineMs:J

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
    iget-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecHotswapDeadlineMs:J

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

.method protected p()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamStartPositionUs:J

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->M0(J)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->V()Z

    .line 20
    return-void
.end method

.method protected final p0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 3
    .line 4
    if-nez v0, :cond_8

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassEnabled:Z

    .line 7
    .line 8
    if-nez v0, :cond_8

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->T0(Lcom/google/android/exoplayer2/a2;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->j0(Lcom/google/android/exoplayer2/a2;)V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->L0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 42
    .line 43
    if-eqz v1, :cond_7

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 46
    const/4 v3, 0x1

    .line 47
    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->d0(Lcom/google/android/exoplayer2/drm/n;)Lcom/google/android/exoplayer2/drm/g0;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/n;->getError()Lcom/google/android/exoplayer2/drm/n$a;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return-void

    .line 65
    .line 66
    :cond_3
    :try_start_0
    new-instance v2, Landroid/media/MediaCrypto;

    .line 67
    .line 68
    iget-object v4, v1, Lcom/google/android/exoplayer2/drm/g0;->uuid:Ljava/util/UUID;

    .line 69
    .line 70
    iget-object v5, v1, Lcom/google/android/exoplayer2/drm/g0;->sessionId:[B

    .line 71
    .line 72
    .line 73
    invoke-direct {v2, v4, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    .line 74
    .line 75
    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/drm/g0;->forceAllowInsecureDecoderComponents:Z

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    move v0, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const/4 v0, 0x0

    .line 89
    .line 90
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCryptoRequiresSecureDecoder:Z

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 95
    .line 96
    const/16 v2, 0x1776

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 100
    move-result-object v0

    .line 101
    throw v0

    .line 102
    .line 103
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/google/android/exoplayer2/drm/g0;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/n;->getState()I

    .line 111
    move-result v0

    .line 112
    .line 113
    if-eq v0, v3, :cond_6

    .line 114
    const/4 v1, 0x4

    .line 115
    .line 116
    if-eq v0, v1, :cond_7

    .line 117
    return-void

    .line 118
    .line 119
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 120
    .line 121
    .line 122
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/n;->getError()Lcom/google/android/exoplayer2/drm/n$a;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    check-cast v0, Lcom/google/android/exoplayer2/drm/n$a;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 132
    .line 133
    iget v2, v0, Lcom/google/android/exoplayer2/drm/n$a;->errorCode:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 137
    move-result-object v0

    .line 138
    throw v0

    .line 139
    .line 140
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 141
    .line 142
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->mediaCryptoRequiresSecureDecoder:Z

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/o;->q0(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/mediacodec/o$b; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    return-void

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .line 149
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 150
    .line 151
    const/16 v2, 0xfa1

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 155
    move-result-object v0

    .line 156
    throw v0

    .line 157
    :cond_8
    :goto_2
    return-void
.end method

.method protected q(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/decoder/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/e;-><init>()V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 8
    return-void
.end method

.method protected r(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputStreamEnded:Z

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputEndOfStream:Z

    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassEnabled:Z

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassBatchBuffer:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/mediacodec/h;->b()V

    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassSampleBufferPending:Z

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->U()Z

    .line 28
    .line 29
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->formatQueue:Lcom/google/android/exoplayer2/util/k0;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/k0;->l()I

    .line 33
    move-result p2

    .line 34
    const/4 p3, 0x1

    .line 35
    .line 36
    if-lez p2, :cond_1

    .line 37
    .line 38
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->waitingForFirstSampleInFormat:Z

    .line 39
    .line 40
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->formatQueue:Lcom/google/android/exoplayer2/util/k0;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/k0;->c()V

    .line 44
    .line 45
    iget p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetsUs:[J

    .line 50
    sub-int/2addr p2, p3

    .line 51
    .line 52
    aget-wide v1, v0, p2

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/mediacodec/o;->M0(J)V

    .line 56
    .line 57
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamStartPositionsUs:[J

    .line 58
    .line 59
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 60
    sub-int/2addr v0, p3

    .line 61
    .line 62
    aget-wide v0, p2, v0

    .line 63
    .line 64
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamStartPositionUs:J

    .line 65
    .line 66
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 67
    :cond_2
    return-void
.end method

.method protected r0(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputEndOfStream:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputEndOfStream:Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->A0()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingPlaybackException:Lcom/google/android/exoplayer2/q;

    .line 13
    .line 14
    if-nez v0, :cond_b

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamEnded:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->G0()V

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/mediacodec/o;->D0(I)Z

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->p0()V

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassEnabled:Z

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    const-string v2, "bypassRender"

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/o;->A(JJ)Z

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
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

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
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/o;->Q(JJ)Z

    .line 77
    move-result v4

    .line 78
    .line 79
    if-eqz v4, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/o;->Q0(J)Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->S()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/o;->Q0(J)Z

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
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :cond_7
    iget-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 106
    .line 107
    iget p4, p3, Lcom/google/android/exoplayer2/decoder/e;->skippedInputBufferCount:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->y(J)I

    .line 111
    move-result p1

    .line 112
    add-int/2addr p4, p1

    .line 113
    .line 114
    iput p4, p3, Lcom/google/android/exoplayer2/decoder/e;->skippedInputBufferCount:I

    .line 115
    .line 116
    .line 117
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->D0(I)Z

    .line 118
    .line 119
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->decoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/e;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 124
    .line 125
    .line 126
    :goto_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/o;->m0(Ljava/lang/IllegalStateException;)Z

    .line 127
    move-result p2

    .line 128
    .line 129
    if-eqz p2, :cond_a

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/o;->r0(Ljava/lang/Exception;)V

    .line 133
    .line 134
    sget p2, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 135
    .line 136
    const/16 p3, 0x15

    .line 137
    .line 138
    if-lt p2, p3, :cond_8

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/o;->o0(Ljava/lang/IllegalStateException;)Z

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->F0()V

    .line 151
    .line 152
    .line 153
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->Y()Lcom/google/android/exoplayer2/mediacodec/n;

    .line 154
    move-result-object p2

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/o;->L(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/n;)Lcom/google/android/exoplayer2/mediacodec/m;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 161
    .line 162
    const/16 p3, 0xfa3

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/android/exoplayer2/f;->i(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;ZI)Lcom/google/android/exoplayer2/q;

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingPlaybackException:Lcom/google/android/exoplayer2/q;

    .line 172
    throw v0
.end method

.method protected s()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->M()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->F0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->P0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/o;->P0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 16
    throw v1
.end method

.method protected s0(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/l$a;JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected t()V
    .locals 0

    .line 1
    return-void
.end method

.method protected t0(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected u()V
    .locals 0

    .line 1
    return-void
.end method

.method protected u0(Lcom/google/android/exoplayer2/b2;)Lcom/google/android/exoplayer2/decoder/i;
    .locals 11
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->waitingForFirstSampleInFormat:Z

    .line 4
    .line 5
    iget-object v1, p1, Lcom/google/android/exoplayer2/b2;->format:Lcom/google/android/exoplayer2/a2;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    move-object v5, v1

    .line 11
    .line 12
    check-cast v5, Lcom/google/android/exoplayer2/a2;

    .line 13
    .line 14
    iget-object v1, v5, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_13

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/exoplayer2/b2;->drmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/o;->P0(Lcom/google/android/exoplayer2/drm/n;)V

    .line 22
    .line 23
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->inputFormat:Lcom/google/android/exoplayer2/a2;

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassEnabled:Z

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->bypassDrainAndReinitialize:Z

    .line 31
    return-object v1

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->p0()V

    .line 41
    return-object v1

    .line 42
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v1, v5, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/o;->R(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/drm/n;Lcom/google/android/exoplayer2/drm/n;)Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->O()V

    .line 59
    .line 60
    new-instance p1, Lcom/google/android/exoplayer2/decoder/i;

    .line 61
    .line 62
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

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
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/i;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;II)V

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->sourceDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrmSession:Lcom/google/android/exoplayer2/drm/n;

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
    sget v3, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/android/exoplayer2/mediacodec/o;->B(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/decoder/i;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    iget v7, v3, Lcom/google/android/exoplayer2/decoder/i;->result:I

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
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/o;->W0(Lcom/google/android/exoplayer2/a2;)Z

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
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 124
    .line 125
    if-eqz v2, :cond_10

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->P()Z

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
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/o;->W0(Lcom/google/android/exoplayer2/a2;)Z

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigured:Z

    .line 149
    .line 150
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecReconfigurationState:I

    .line 151
    .line 152
    iget v7, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecAdaptationWorkaroundMode:I

    .line 153
    .line 154
    if-eq v7, v10, :cond_b

    .line 155
    .line 156
    if-ne v7, v0, :cond_a

    .line 157
    .line 158
    iget v7, v5, Lcom/google/android/exoplayer2/a2;->width:I

    .line 159
    .line 160
    iget v9, v4, Lcom/google/android/exoplayer2/a2;->width:I

    .line 161
    .line 162
    if-ne v7, v9, :cond_a

    .line 163
    .line 164
    iget v7, v5, Lcom/google/android/exoplayer2/a2;->height:I

    .line 165
    .line 166
    iget v9, v4, Lcom/google/android/exoplayer2/a2;->height:I

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 173
    .line 174
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 175
    .line 176
    if-eqz v2, :cond_10

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->P()Z

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
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/mediacodec/o;->W0(Lcom/google/android/exoplayer2/a2;)Z

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
    iput-object v5, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecInputFormat:Lcom/google/android/exoplayer2/a2;

    .line 193
    .line 194
    if-eqz v2, :cond_e

    .line 195
    .line 196
    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->P()Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->N()Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->O()V

    .line 212
    :cond_10
    move v7, v6

    .line 213
    .line 214
    :goto_6
    iget v0, v3, Lcom/google/android/exoplayer2/decoder/i;->result:I

    .line 215
    .line 216
    if-eqz v0, :cond_12

    .line 217
    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codec:Lcom/google/android/exoplayer2/mediacodec/l;

    .line 219
    .line 220
    if-ne v0, p1, :cond_11

    .line 221
    .line 222
    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->codecDrainAction:I

    .line 223
    .line 224
    if-ne p1, v8, :cond_12

    .line 225
    .line 226
    :cond_11
    new-instance p1, Lcom/google/android/exoplayer2/decoder/i;

    .line 227
    .line 228
    iget-object v3, v1, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 229
    const/4 v6, 0x0

    .line 230
    move-object v2, p1

    .line 231
    .line 232
    .line 233
    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/i;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2;II)V

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
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/android/exoplayer2/f;->f(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/a2;I)Lcom/google/android/exoplayer2/q;

    .line 246
    move-result-object p1

    .line 247
    throw p1
.end method

.method protected v([Lcom/google/android/exoplayer2/a2;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamOffsetUs:J

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamStartPositionUs:J

    .line 15
    .line 16
    cmp-long p1, v4, v2

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 24
    .line 25
    iput-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamStartPositionUs:J

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/mediacodec/o;->M0(J)V

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetsUs:[J

    .line 34
    array-length v1, v1

    .line 35
    .line 36
    if-ne p1, v1, :cond_2

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v1, "Too many stream changes, so dropping offset: "

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetsUs:[J

    .line 49
    .line 50
    iget v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 51
    sub-int/2addr v2, v0

    .line 52
    .line 53
    aget-wide v2, v1, v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const-string v1, "MediaCodecRenderer"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    add-int/2addr p1, v0

    .line 68
    .line 69
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 70
    .line 71
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamStartPositionsUs:[J

    .line 72
    .line 73
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 74
    .line 75
    add-int/lit8 v2, v1, -0x1

    .line 76
    .line 77
    aput-wide p2, p1, v2

    .line 78
    .line 79
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetsUs:[J

    .line 80
    .line 81
    add-int/lit8 p2, v1, -0x1

    .line 82
    .line 83
    aput-wide p4, p1, p2

    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamSwitchTimesUs:[J

    .line 86
    sub-int/2addr v1, v0

    .line 87
    .line 88
    iget-wide p2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->largestQueuedPresentationTimeUs:J

    .line 89
    .line 90
    aput-wide p2, p1, v1

    .line 91
    :goto_2
    return-void
.end method

.method protected v0(Lcom/google/android/exoplayer2/a2;Landroid/media/MediaFormat;)V
    .locals 0
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected w0(J)V
    .locals 0

    .line 1
    return-void
.end method

.method protected x0(J)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamSwitchTimesUs:[J

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    aget-wide v2, v0, v1

    .line 10
    .line 11
    cmp-long v0, p1, v2

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamStartPositionsUs:[J

    .line 16
    .line 17
    aget-wide v2, v0, v1

    .line 18
    .line 19
    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/o;->outputStreamStartPositionUs:J

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetsUs:[J

    .line 22
    .line 23
    aget-wide v2, v0, v1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/mediacodec/o;->M0(J)V

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 29
    const/4 v2, 0x1

    .line 30
    sub-int/2addr v0, v2

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamStartPositionsUs:[J

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetsUs:[J

    .line 40
    .line 41
    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamSwitchTimesUs:[J

    .line 47
    .line 48
    iget v3, p0, Lcom/google/android/exoplayer2/mediacodec/o;->pendingOutputStreamOffsetCount:I

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/o;->y0()V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method protected y0()V
    .locals 0

    .line 1
    return-void
.end method

.method protected z0(Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    return-void
.end method
