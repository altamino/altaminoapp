.class public Lio/agora/rtc/video/MediaCodecVideoDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedTextureBuffer;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$SurfaceTextureHelper;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;,
        Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;
    }
.end annotation


# static fields
.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final DEQUEUE_INPUT_TIMEOUT:I = 0x186a0

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final H265_MIME_TYPE:Ljava/lang/String; = "video/hevc"

.field private static final MAX_DECODE_TIME_MS:J = 0x7d0L

.field private static final MAX_QUEUED_OUTPUTBUFFERS:I = 0x3

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoDecoder"

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static codecErrors:I

.field private static currentInstances:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static errorCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

.field private static hwDecoderDisabledTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preferGoogleSoftwareDecoder:Z

.field private static runningInstance:Lio/agora/rtc/video/MediaCodecVideoDecoder;

.field private static final supportedColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportedH264HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedH265HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp8HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp9HwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private asyncHandlerThread:Landroid/os/HandlerThread;

.field private codecName:Ljava/lang/String;

.field private colorFormat:I

.field private cropHeight:I

.field private cropWidth:I

.field private final decodeStartTimeMs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;",
            ">;"
        }
    .end annotation
.end field

.field private decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

.field private final dequeuedSurfaceOutputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private droppedFrames:I

.field private hasDecodedFirstFrame:Z

.field private height:I

.field inputBuffers:[Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private nativeHandle:J

.field outputBuffers:[Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sliceHeight:I

.field private stride:I

.field private supportCodecs:I

.field private supportInstances:I

.field private surface:Landroid/view/Surface;

.field private useAsyncMode:Z

.field private useSurface:Z

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 8
    .line 9
    const-string v0, "OMX.Intel."

    .line 10
    .line 11
    const-string v1, "OMX.qcom."

    .line 12
    .line 13
    const-string v2, "OMX.Nvidia."

    .line 14
    .line 15
    const-string v3, "OMX.Exynos."

    .line 16
    .line 17
    .line 18
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "OMX.qcom."

    .line 30
    .line 31
    const-string v2, "OMX.Exynos."

    .line 32
    .line 33
    const-string v3, "OMX.rk."

    .line 34
    .line 35
    const-string v4, "OMX.sprd."

    .line 36
    .line 37
    const-string v5, "OMX.amlogic."

    .line 38
    .line 39
    const-string v6, "OMX.IMG.TOPAZ."

    .line 40
    .line 41
    const-string v7, "OMX.IMG.MSVDX."

    .line 42
    .line 43
    const-string v8, "OMX.hisi."

    .line 44
    .line 45
    const-string v9, "OMX.k3."

    .line 46
    .line 47
    const-string v10, "OMX.allwinner."

    .line 48
    .line 49
    const-string v11, "OMX.MTK."

    .line 50
    .line 51
    const-string v12, "OMX.Nvidia."

    .line 52
    .line 53
    const-string v13, "OMX.Intel."

    .line 54
    .line 55
    const-string v14, "OMX.MS."

    .line 56
    .line 57
    .line 58
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "OMX.qcom."

    .line 64
    .line 65
    const-string v2, "OMX.Exynos."

    .line 66
    .line 67
    const-string v3, "OMX.rk."

    .line 68
    .line 69
    const-string v4, "OMX.sprd."

    .line 70
    .line 71
    const-string v5, "OMX.amlogic."

    .line 72
    .line 73
    const-string v6, "OMX.IMG.TOPAZ."

    .line 74
    .line 75
    const-string v7, "OMX.IMG.MSVDX."

    .line 76
    .line 77
    const-string v8, "OMX.hisi."

    .line 78
    .line 79
    const-string v9, "OMX.k3."

    .line 80
    .line 81
    const-string v10, "OMX.allwinner."

    .line 82
    .line 83
    const-string v11, "OMX.MTK."

    .line 84
    .line 85
    const-string v12, "OMX.Nvidia."

    .line 86
    .line 87
    const-string v13, "OMX.Intel."

    .line 88
    .line 89
    const-string v14, "OMX.MS."

    .line 90
    .line 91
    const-string v15, "OMX.google."

    .line 92
    .line 93
    .line 94
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x4

    .line 99
    .line 100
    new-array v0, v0, [Ljava/lang/Integer;

    .line 101
    .line 102
    const/16 v1, 0x13

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v1

    .line 107
    const/4 v2, 0x0

    .line 108
    .line 109
    aput-object v1, v0, v2

    .line 110
    .line 111
    const/16 v1, 0x15

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v1

    .line 116
    const/4 v3, 0x1

    .line 117
    .line 118
    aput-object v1, v0, v3

    .line 119
    .line 120
    .line 121
    const v1, 0x7fa30c00

    .line 122
    .line 123
    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v1

    .line 126
    const/4 v3, 0x2

    .line 127
    .line 128
    aput-object v1, v0, v3

    .line 129
    .line 130
    .line 131
    const v1, 0x7fa30c04

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v1

    .line 136
    const/4 v3, 0x3

    .line 137
    .line 138
    aput-object v1, v0, v3

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedColorList:Ljava/util/List;

    .line 145
    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 150
    .line 151
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->currentInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    .line 153
    sput-boolean v2, Lio/agora/rtc/video/MediaCodecVideoDecoder;->preferGoogleSoftwareDecoder:Z

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useAsyncMode:Z

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportInstances:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    .line 20
    .line 21
    new-instance v0, Ljava/util/LinkedList;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .line 26
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/video/MediaCodecVideoDecoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lio/agora/rtc/video/MediaCodecVideoDecoder;)Ljava/util/Queue;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lio/agora/rtc/video/MediaCodecVideoDecoder;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 3
    return p1
.end method

.method static synthetic access$600(Lio/agora/rtc/video/MediaCodecVideoDecoder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->nativeHandle:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$700(Lio/agora/rtc/video/MediaCodecVideoDecoder;Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->deliverOutputBufferReady(Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;J)V

    .line 4
    return-void
.end method

.method static synthetic access$800(Lio/agora/rtc/video/MediaCodecVideoDecoder;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->handleOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 4
    return-void
.end method

.method private checkOnMediaCodecThread()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    return-void
.end method

.method private native deliverOutputBufferReady(Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "decodedOutputBuffer",
            "nativeVideoEncoder"
        }
    .end annotation
.end method

.method private dequeueInputBuffer()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 6
    .line 7
    .line 8
    const-wide/32 v1, 0x186a0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .line 16
    const-string v1, "MediaCodecVideoDecoder"

    .line 17
    .line 18
    const-string v2, "dequeueIntputBuffer failed"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    const/4 v0, -0x2

    .line 23
    return v0
.end method

.method private dequeueInputBufferAvailable()Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 3
    .line 4
    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 8
    .line 9
    iget-object v1, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string v1, "MediaCodecVideoDecoder"

    .line 23
    .line 24
    const-string v2, "no input buffer available"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;

    .line 30
    const/4 v2, -0x1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;-><init>(ILjava/nio/ByteBuffer;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    :try_start_1
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    new-instance v4, Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;

    .line 58
    .line 59
    .line 60
    invoke-direct {v4, v2, v1}, Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;-><init>(ILjava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    move-object v1, v4

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .line 65
    :try_start_2
    const-string v2, "MediaCodecVideoDecoder"

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v5, "codec exception: "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;

    .line 92
    const/4 v2, -0x2

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoDecoder$InputBufferInfo;-><init>(ILjava/nio/ByteBuffer;)V

    .line 96
    :goto_0
    monitor-exit v0

    .line 97
    return-object v1

    .line 98
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw v1
.end method

.method private dequeueOutputBuffer(I)Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dequeueTimeoutMs"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 6
    .line 7
    iget-object v1, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    return-object v2

    .line 16
    .line 17
    :cond_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 21
    .line 22
    :goto_0
    iget-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 23
    .line 24
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    move/from16 v5, p1

    .line 27
    int-to-long v6, v5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 31
    move-result-wide v6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 35
    move-result v9

    .line 36
    const/4 v3, -0x3

    .line 37
    .line 38
    const-string v4, "MediaCodecVideoDecoder"

    .line 39
    .line 40
    if-eq v9, v3, :cond_4

    .line 41
    const/4 v3, -0x2

    .line 42
    .line 43
    if-eq v9, v3, :cond_3

    .line 44
    const/4 v3, -0x1

    .line 45
    .line 46
    if-eq v9, v3, :cond_2

    .line 47
    const/4 v2, 0x1

    .line 48
    .line 49
    iput-boolean v2, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 50
    .line 51
    iget-object v2, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 55
    move-result v2

    .line 56
    int-to-long v2, v2

    .line 57
    .line 58
    iget-object v5, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 59
    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    check-cast v5, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    move-result-wide v6

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->access$100(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J

    .line 72
    move-result-wide v10

    .line 73
    sub-long/2addr v6, v10

    .line 74
    .line 75
    const-wide/16 v10, 0x7d0

    .line 76
    .line 77
    cmp-long v8, v6, v10

    .line 78
    .line 79
    if-lez v8, :cond_1

    .line 80
    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string v12, "Very high decode time: "

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v6, "ms."

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    .line 104
    invoke-static {v4, v6}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    move-wide/from16 v19, v10

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_1
    move-wide/from16 v19, v6

    .line 110
    .line 111
    :goto_1
    new-instance v4, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;

    .line 112
    move-object v8, v4

    .line 113
    .line 114
    iget-object v6, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 115
    .line 116
    aget-object v10, v6, v9

    .line 117
    .line 118
    iget v11, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 119
    .line 120
    iget v12, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 121
    .line 122
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 123
    .line 124
    iget-wide v13, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 128
    move-result-wide v13

    .line 129
    .line 130
    .line 131
    invoke-static {v5}, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->access$200(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J

    .line 132
    move-result-wide v15

    .line 133
    .line 134
    .line 135
    invoke-static {v5}, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;->access$300(Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;)J

    .line 136
    move-result-wide v17

    .line 137
    .line 138
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 140
    move-result-wide v21

    .line 141
    .line 142
    move-wide/from16 v23, v2

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v8 .. v24}, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecodedOutputBuffer;-><init>(ILjava/nio/ByteBuffer;IIJJJJJJ)V

    .line 146
    return-object v4

    .line 147
    :cond_2
    return-object v2

    .line 148
    .line 149
    :cond_3
    iget-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 153
    move-result-object v3

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v3}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->handleOutputFormatChanged(Landroid/media/MediaFormat;)V

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_4
    iget-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    iput-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 167
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    const-string v6, "Decoder output buffers changed: "

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    iget-object v6, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 179
    array-length v6, v6

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    iget-boolean v3, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 192
    .line 193
    if-nez v3, :cond_5

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    .line 198
    .line 199
    const-string v2, "Unexpected output buffer change event."

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 203
    throw v1
.end method

.method public static disableH264HwCodec()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoDecoder"

    .line 3
    .line 4
    const-string v1, "H.264 decoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 10
    .line 11
    const-string v1, "video/avc"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public static disableH265HwCodec()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoDecoder"

    .line 3
    .line 4
    const-string v1, "H.265 decoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 10
    .line 11
    const-string v1, "video/hevc"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoDecoder"

    .line 3
    .line 4
    const-string v1, "VP8 decoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 10
    .line 11
    const-string v1, "video/x-vnd.on2.vp8"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoDecoder"

    .line 3
    .line 4
    const-string v1, "VP9 decoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 10
    .line 11
    const-string v1, "video/x-vnd.on2.vp9"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method private static findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mime",
            "supportedCodecPrefixes"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Trying to find HW decoder for mime "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "MediaCodecVideoDecoder"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    .line 24
    move v2, v0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    if-ge v2, v3, :cond_b

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 35
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v3

    .line 38
    .line 39
    const-string v5, "Cannot retrieve decoder codec info"

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v5, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    move-object v3, v4

    .line 44
    .line 45
    :goto_1
    if-eqz v3, :cond_a

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 49
    move-result v5

    .line 50
    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 58
    array-length v6, v5

    .line 59
    move v7, v0

    .line 60
    .line 61
    :goto_2
    if-ge v7, v6, :cond_2

    .line 62
    .line 63
    aget-object v8, v5, v7

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v8

    .line 68
    .line 69
    if-eqz v8, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 73
    move-result-object v4

    .line 74
    goto :goto_3

    .line 75
    .line 76
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_2
    :goto_3
    if-nez v4, :cond_3

    .line 80
    .line 81
    goto/16 :goto_8

    .line 82
    .line 83
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v6, "Found candidate decoder: "

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v5}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    sget-boolean v5, Lio/agora/rtc/video/MediaCodecVideoDecoder;->preferGoogleSoftwareDecoder:Z

    .line 104
    .line 105
    if-eqz v5, :cond_4

    .line 106
    .line 107
    const-string v5, "OMX.google."

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    move-result v5

    .line 112
    .line 113
    if-eqz v5, :cond_a

    .line 114
    goto :goto_5

    .line 115
    :cond_4
    array-length v5, p1

    .line 116
    move v6, v0

    .line 117
    .line 118
    :goto_4
    if-ge v6, v5, :cond_a

    .line 119
    .line 120
    aget-object v7, p1, v6

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    move-result v7

    .line 125
    .line 126
    if-eqz v7, :cond_9

    .line 127
    .line 128
    .line 129
    :goto_5
    invoke-virtual {v3, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    iget-object v5, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 133
    array-length v6, v5

    .line 134
    move v7, v0

    .line 135
    .line 136
    :goto_6
    if-ge v7, v6, :cond_5

    .line 137
    .line 138
    aget v8, v5, v7

    .line 139
    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    const-string v10, "   Color: 0x"

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 152
    move-result-object v8

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object v8

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v8}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    add-int/lit8 v7, v7, 0x1

    .line 165
    goto :goto_6

    .line 166
    .line 167
    :cond_5
    const-string v5, "OMX.rk."

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 171
    move-result v5

    .line 172
    .line 173
    if-eqz v5, :cond_6

    .line 174
    .line 175
    new-instance p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;

    .line 176
    .line 177
    const/16 p1, 0x15

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v4, p1}, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;-><init>(Ljava/lang/String;I)V

    .line 181
    return-object p0

    .line 182
    .line 183
    :cond_6
    sget-object v5, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedColorList:Ljava/util/List;

    .line 184
    .line 185
    .line 186
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    move-result-object v5

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    move-result v6

    .line 192
    .line 193
    if-eqz v6, :cond_a

    .line 194
    .line 195
    .line 196
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    move-result-object v6

    .line 198
    .line 199
    check-cast v6, Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 203
    move-result v6

    .line 204
    .line 205
    iget-object v7, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 206
    array-length v8, v7

    .line 207
    move v9, v0

    .line 208
    .line 209
    :goto_7
    if-ge v9, v8, :cond_7

    .line 210
    .line 211
    aget v10, v7, v9

    .line 212
    .line 213
    if-ne v10, v6, :cond_8

    .line 214
    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    const-string p1, "Found target decoder "

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string p1, ". Color: 0x"

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p0

    .line 243
    .line 244
    .line 245
    invoke-static {v1, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    new-instance p0, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, v4, v10}, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;-><init>(Ljava/lang/String;I)V

    .line 251
    return-object p0

    .line 252
    .line 253
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 254
    goto :goto_7

    .line 255
    .line 256
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 257
    .line 258
    goto/16 :goto_4

    .line 259
    .line 260
    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    const-string v0, "No HW decoder found for mime "

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    move-result-object p0

    .line 280
    .line 281
    .line 282
    invoke-static {v1, p0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-object v4
.end method

.method private getDecoderProperties(I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codec"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "video/x-vnd.on2.vp8"

    .line 3
    .line 4
    const-string v1, "video/x-vnd.on2.vp9"

    .line 5
    .line 6
    const-string v2, "video/avc"

    .line 7
    .line 8
    const-string v3, "video/hevc"

    .line 9
    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    iput v4, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportCodecs:I

    .line 16
    const/4 v5, 0x0

    .line 17
    move v6, v4

    .line 18
    move-object v7, v5

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 22
    move-result v8

    .line 23
    .line 24
    if-ge v6, v8, :cond_6

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 28
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v8

    .line 31
    .line 32
    const-string v9, "MediaCodecVideoDecoder"

    .line 33
    .line 34
    const-string v10, "Cannot retrieve decoder codec info"

    .line 35
    .line 36
    .line 37
    invoke-static {v9, v10, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    move-object v8, v5

    .line 39
    .line 40
    :goto_1
    if-eqz v8, :cond_5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 44
    move-result v9

    .line 45
    .line 46
    if-eqz v9, :cond_0

    .line 47
    goto :goto_4

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 51
    move-result-object v9

    .line 52
    array-length v10, v9

    .line 53
    move v11, v4

    .line 54
    .line 55
    :goto_2
    if-ge v11, v10, :cond_5

    .line 56
    .line 57
    aget-object v12, v9, v11

    .line 58
    .line 59
    .line 60
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v13

    .line 62
    .line 63
    if-eqz v13, :cond_1

    .line 64
    .line 65
    iget v13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportCodecs:I

    .line 66
    .line 67
    or-int/lit8 v13, v13, 0x1

    .line 68
    .line 69
    iput v13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportCodecs:I

    .line 70
    goto :goto_3

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v13

    .line 75
    .line 76
    if-eqz v13, :cond_2

    .line 77
    .line 78
    iget v13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportCodecs:I

    .line 79
    .line 80
    or-int/lit8 v13, v13, 0x2

    .line 81
    .line 82
    iput v13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportCodecs:I

    .line 83
    goto :goto_3

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v13

    .line 88
    .line 89
    if-eqz v13, :cond_3

    .line 90
    .line 91
    iget v13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportCodecs:I

    .line 92
    .line 93
    or-int/lit8 v13, v13, 0x4

    .line 94
    .line 95
    iput v13, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportCodecs:I

    .line 96
    .line 97
    :cond_3
    :goto_3
    if-nez v7, :cond_4

    .line 98
    .line 99
    aget-object v13, v1, p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v12

    .line 104
    .line 105
    if-eqz v12, :cond_4

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 110
    .line 111
    iput-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->codecName:Ljava/lang/String;

    .line 112
    .line 113
    aget-object v12, v1, p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 117
    move-result-object v12

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    .line 121
    move-result v12

    .line 122
    .line 123
    iput v12, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportInstances:I

    .line 124
    .line 125
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    return-void
.end method

.method private handleOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Decoder format changed: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "MediaCodecVideoDecoder"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    const-string/jumbo v0, "width"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 32
    move-result v2

    .line 33
    .line 34
    const-string v3, "height"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 38
    move-result v4

    .line 39
    .line 40
    iget-boolean v5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget v5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->width:I

    .line 45
    .line 46
    if-ne v2, v5, :cond_0

    .line 47
    .line 48
    iget v5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->height:I

    .line 49
    .line 50
    if-eq v4, v5, :cond_1

    .line 51
    .line 52
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v6, "Decoder format changed. Configured "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget v6, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->width:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v6, "*"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget v7, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->height:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v7, ". New "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 100
    move-result v0

    .line 101
    .line 102
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->width:I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 106
    move-result v0

    .line 107
    .line 108
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->height:I

    .line 109
    .line 110
    const-string v0, "stride"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 114
    move-result v2

    .line 115
    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 120
    move-result v0

    .line 121
    .line 122
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->stride:I

    .line 123
    .line 124
    :cond_2
    const-string v0, "slice-height"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 128
    move-result v2

    .line 129
    .line 130
    if-eqz v2, :cond_3

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 134
    move-result v0

    .line 135
    .line 136
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->sliceHeight:I

    .line 137
    .line 138
    :cond_3
    const-string v0, "crop-left"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 142
    move-result v2

    .line 143
    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    const-string v2, "crop-right"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 150
    move-result v3

    .line 151
    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 156
    move-result v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 160
    move-result v0

    .line 161
    sub-int/2addr v2, v0

    .line 162
    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropWidth:I

    .line 166
    goto :goto_0

    .line 167
    .line 168
    :cond_4
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->width:I

    .line 169
    .line 170
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropWidth:I

    .line 171
    .line 172
    :goto_0
    const-string v0, "crop-bottom"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 176
    move-result v2

    .line 177
    .line 178
    if-eqz v2, :cond_5

    .line 179
    .line 180
    const-string v2, "crop-top"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 184
    move-result v3

    .line 185
    .line 186
    if-eqz v3, :cond_5

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 190
    move-result v0

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 194
    move-result p1

    .line 195
    sub-int/2addr v0, p1

    .line 196
    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 198
    .line 199
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropHeight:I

    .line 200
    goto :goto_1

    .line 201
    .line 202
    :cond_5
    iget p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->height:I

    .line 203
    .line 204
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropHeight:I

    .line 205
    .line 206
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    const-string v0, "Frame stride and slice height: "

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->stride:I

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v0, " x "

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    iget v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->sliceHeight:I

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    .line 236
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    const-string v2, "Crop width and height: "

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    iget v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropWidth:I

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropHeight:I

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    .line 266
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    iget p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->width:I

    .line 269
    .line 270
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->stride:I

    .line 271
    .line 272
    .line 273
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 274
    move-result p1

    .line 275
    .line 276
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->stride:I

    .line 277
    .line 278
    iget p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->height:I

    .line 279
    .line 280
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->sliceHeight:I

    .line 281
    .line 282
    .line 283
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 284
    move-result p1

    .line 285
    .line 286
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->sliceHeight:I

    .line 287
    return-void
.end method

.method private initDecode(IIILio/agora/rtc/video/MediaCodecVideoDecoder$SurfaceTextureHelper;ZLandroid/os/Looper;J)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "codec",
            "width",
            "height",
            "surfaceTextureHelper",
            "useAsyncMode",
            "callbackLooper",
            "nativeHandle"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 3
    .line 4
    if-nez v0, :cond_c

    .line 5
    .line 6
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->currentInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportInstances:I

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    return v2

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->currentInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    if-eqz p4, :cond_1

    .line 25
    move p4, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p4, v2

    .line 28
    .line 29
    :goto_0
    iput-boolean p4, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useSurface:Z

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;->values()[Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;

    .line 33
    move-result-object p4

    .line 34
    .line 35
    aget-object p1, p4, p1

    .line 36
    .line 37
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP8:Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;

    .line 38
    .line 39
    if-ne p1, p4, :cond_2

    .line 40
    .line 41
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "video/x-vnd.on2.vp8"

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_2
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_VP9:Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;

    .line 47
    .line 48
    if-ne p1, p4, :cond_3

    .line 49
    .line 50
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "video/x-vnd.on2.vp9"

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_3
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;

    .line 56
    .line 57
    if-ne p1, p4, :cond_4

    .line 58
    .line 59
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 60
    .line 61
    const-string v1, "video/avc"

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_4
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;->VIDEO_CODEC_H265:Lio/agora/rtc/video/MediaCodecVideoDecoder$VideoCodecType;

    .line 65
    .line 66
    if-ne p1, p4, :cond_b

    .line 67
    .line 68
    sget-object p4, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    .line 69
    .line 70
    const-string v1, "video/hevc"

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-static {v1, p4}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;

    .line 74
    move-result-object p4

    .line 75
    .line 76
    if-eqz p4, :cond_a

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string v4, "Java initDecode: "

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p1, " : "

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p1, " x "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string p1, ". Color: 0x"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    iget p1, p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p1, ". Use Surface: "

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    iget-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useSurface:Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string p1, ". Use async mode: "

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string p1, ". nativeHandle: "

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    const-string v3, "MediaCodecVideoDecoder"

    .line 152
    .line 153
    .line 154
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    sput-object p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 163
    .line 164
    :try_start_0
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->width:I

    .line 165
    .line 166
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->height:I

    .line 167
    .line 168
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->stride:I

    .line 169
    .line 170
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->sliceHeight:I

    .line 171
    .line 172
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropWidth:I

    .line 173
    .line 174
    iput p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->cropHeight:I

    .line 175
    .line 176
    .line 177
    invoke-static {v1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    iget-boolean p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useSurface:Z

    .line 181
    .line 182
    if-nez p2, :cond_5

    .line 183
    .line 184
    const-string p2, "color-format"

    .line 185
    .line 186
    iget p3, p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 190
    goto :goto_2

    .line 191
    :catch_0
    move-exception p1

    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_5
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    const-string p3, "  Format: "

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p2

    .line 211
    .line 212
    .line 213
    invoke-static {v3, p2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    iget-object p2, p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;->codecName:Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    invoke-static {p2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 219
    move-result-object p2

    .line 220
    .line 221
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 222
    .line 223
    if-nez p2, :cond_6

    .line 224
    .line 225
    const-string p1, "Can not create media decoder"

    .line 226
    .line 227
    .line 228
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return v2

    .line 230
    .line 231
    :cond_6
    iput-wide p7, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->nativeHandle:J

    .line 232
    .line 233
    iput-boolean p5, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useAsyncMode:Z

    .line 234
    .line 235
    if-eqz p5, :cond_8

    .line 236
    .line 237
    new-instance p2, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 238
    .line 239
    .line 240
    invoke-direct {p2, p0}, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;-><init>(Lio/agora/rtc/video/MediaCodecVideoDecoder;)V

    .line 241
    .line 242
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 243
    .line 244
    if-nez p6, :cond_7

    .line 245
    .line 246
    new-instance p2, Landroid/os/HandlerThread;

    .line 247
    .line 248
    const-string p3, "decoderAsyncHandler"

    .line 249
    .line 250
    .line 251
    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 257
    .line 258
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 262
    move-result-object p6

    .line 263
    .line 264
    :cond_7
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 265
    .line 266
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 267
    .line 268
    new-instance p7, Landroid/os/Handler;

    .line 269
    .line 270
    .line 271
    invoke-direct {p7, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, p3, p7}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 275
    .line 276
    :cond_8
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 277
    .line 278
    iget-object p3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->surface:Landroid/view/Surface;

    .line 279
    const/4 p6, 0x0

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, p1, p3, p6, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 283
    .line 284
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 288
    .line 289
    const-string p1, "MediaCodec started"

    .line 290
    .line 291
    .line 292
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    iget p1, p4, Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;->colorFormat:I

    .line 295
    .line 296
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->colorFormat:I

    .line 297
    .line 298
    if-nez p5, :cond_9

    .line 299
    .line 300
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 304
    move-result-object p1

    .line 305
    .line 306
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 312
    move-result-object p1

    .line 313
    .line 314
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 315
    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    const-string p2, "Input buffers: "

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 327
    array-length p2, p2

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string p2, ". Output buffers: "

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 338
    array-length p2, p2

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object p1

    .line 346
    .line 347
    .line 348
    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    :cond_9
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 351
    .line 352
    .line 353
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 354
    .line 355
    iput-boolean v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 356
    .line 357
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    .line 358
    .line 359
    .line 360
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 361
    .line 362
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->droppedFrames:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    return v0

    .line 364
    .line 365
    :goto_3
    const-string p2, "initDecode failed"

    .line 366
    .line 367
    .line 368
    invoke-static {v3, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    return v2

    .line 370
    .line 371
    :cond_a
    new-instance p2, Ljava/lang/RuntimeException;

    .line 372
    .line 373
    new-instance p3, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    const-string p4, "Cannot find HW decoder for "

    .line 379
    .line 380
    .line 381
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object p1

    .line 389
    .line 390
    .line 391
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 392
    throw p2

    .line 393
    .line 394
    :cond_b
    new-instance p2, Ljava/lang/RuntimeException;

    .line 395
    .line 396
    new-instance p3, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    const-string p4, "initDecode: Non-supported codec "

    .line 402
    .line 403
    .line 404
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object p1

    .line 412
    .line 413
    .line 414
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 415
    throw p2

    .line 416
    .line 417
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 418
    .line 419
    const-string p2, "initDecode: Forgot to release()?"

    .line 420
    .line 421
    .line 422
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 423
    throw p1
.end method

.method public static isAsyncModeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isH264HwSupported()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 3
    .line 4
    const-string v1, "video/avc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static isH265HwSupported()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 3
    .line 4
    const-string v1, "video/hevc"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static isVp8HwSupported()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 3
    .line 4
    const-string v1, "video/x-vnd.on2.vp8"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static isVp9HwSupported()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hwDecoderDisabledTypes:Ljava/util/Set;

    .line 3
    .line 4
    const-string v1, "video/x-vnd.on2.vp9"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->findDecoder(Ljava/lang/String;[Ljava/lang/String;)Lio/agora/rtc/video/MediaCodecVideoDecoder$DecoderProperties;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static printStackTrace()V
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "MediaCodecVideoDecoder stacks trace:"

    .line 18
    .line 19
    const-string v2, "MediaCodecVideoDecoder"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    array-length v1, v0

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    :goto_0
    if-ge v3, v1, :cond_0

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private queueInputBuffer(IIJJJ)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputBufferIndex",
            "size",
            "presentationTimeStamUs",
            "timeStampMs",
            "ntpTimeStamp"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 6
    const/4 v9, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-boolean v0, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useAsyncMode:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    aget-object v0, v0, p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    .line 19
    iget-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    aget-object v0, v0, p1

    .line 22
    .line 23
    move/from16 v5, p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    move/from16 v5, p2

    .line 32
    .line 33
    :goto_0
    iget-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 34
    .line 35
    new-instance v2, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    move-result-wide v11

    .line 40
    move-object v10, v2

    .line 41
    .line 42
    move-wide/from16 v13, p5

    .line 43
    .line 44
    move-wide/from16 v15, p7

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v10 .. v16}, Lio/agora/rtc/video/MediaCodecVideoDecoder$TimeStamps;-><init>(JJJ)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    .line 56
    move/from16 v3, p1

    .line 57
    .line 58
    move/from16 v5, p2

    .line 59
    .line 60
    move-wide/from16 v6, p3

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v0, 0x1

    .line 65
    return v0

    .line 66
    .line 67
    :goto_1
    const-string v2, "MediaCodecVideoDecoder"

    .line 68
    .line 69
    const-string v3, "decode failed"

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return v9
.end method

.method private release()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoDecoder"

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Java releaseDecoder. Total number of dropped frames: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->droppedFrames:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 28
    .line 29
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useAsyncMode:Z

    .line 30
    const/4 v1, 0x1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 41
    .line 42
    iput-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 45
    monitor-enter v0

    .line 46
    .line 47
    :try_start_0
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 48
    .line 49
    iput-boolean v1, v3, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->isObsolete:Z

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    iput-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v1

    .line 57
    .line 58
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 62
    .line 63
    new-instance v3, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, p0, v0}, Lio/agora/rtc/video/MediaCodecVideoDecoder$1;-><init>(Lio/agora/rtc/video/MediaCodecVideoDecoder;Ljava/util/concurrent/CountDownLatch;)V

    .line 67
    .line 68
    new-instance v4, Ljava/lang/Thread;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 75
    .line 76
    const-wide/16 v3, 0x1388

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v3, v4}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    const-string v0, "MediaCodecVideoDecoder"

    .line 85
    .line 86
    const-string v3, "Media decoder release timeout"

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v3}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    sget v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->codecErrors:I

    .line 92
    add-int/2addr v0, v1

    .line 93
    .line 94
    sput v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->codecErrors:I

    .line 95
    .line 96
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    const-string v0, "MediaCodecVideoDecoder"

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v3, "Invoke codec error callback. Errors: "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    sget v3, Lio/agora/rtc/video/MediaCodecVideoDecoder;->codecErrors:I

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    .line 125
    .line 126
    sget v1, Lio/agora/rtc/video/MediaCodecVideoDecoder;->codecErrors:I

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v1}, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;->onMediaCodecVideoDecoderCriticalError(I)V

    .line 130
    .line 131
    :cond_2
    iput-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 132
    .line 133
    iput-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 134
    .line 135
    sput-object v2, Lio/agora/rtc/video/MediaCodecVideoDecoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoDecoder;

    .line 136
    .line 137
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->currentInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 141
    .line 142
    const-string v0, "MediaCodecVideoDecoder"

    .line 143
    .line 144
    const-string v1, "Java releaseDecoder done"

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private reset(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "MediaCodecVideoDecoder"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "Java reset: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, " x "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useAsyncMode:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 48
    .line 49
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 50
    .line 51
    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 52
    monitor-enter v0

    .line 53
    .line 54
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decoderCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;

    .line 55
    .line 56
    iget-object v1, v1, Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecDecoderCallback;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 66
    .line 67
    const-string v0, "MediaCodecVideoDecoder"

    .line 68
    .line 69
    const-string v1, "MediaCodec restarted"

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p1

    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 82
    .line 83
    :goto_0
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->width:I

    .line 84
    .line 85
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->height:I

    .line 86
    .line 87
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->decodeStartTimeMs:Ljava/util/Queue;

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 91
    .line 92
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->dequeuedSurfaceOutputBuffers:Ljava/util/Queue;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 96
    const/4 p1, 0x0

    .line 97
    .line 98
    iput-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->hasDecodedFirstFrame:Z

    .line 99
    .line 100
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->droppedFrames:I

    .line 101
    return-void

    .line 102
    .line 103
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    const-string p2, "Incorrect reset call for non-initialized decoder."

    .line 106
    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p1
.end method

.method private returnDecodedOutputBuffer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/media/MediaCodec$CodecException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoDecoder;->checkOnMediaCodecThread()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->useSurface:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "returnDecodedOutputBuffer() called for surface decoding."

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1
.end method

.method public static setErrorCallback(Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCallback"
        }
    .end annotation

    sput-object p0, Lio/agora/rtc/video/MediaCodecVideoDecoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoDecoder$MediaCodecVideoDecoderErrorCallback;

    return-void
.end method
