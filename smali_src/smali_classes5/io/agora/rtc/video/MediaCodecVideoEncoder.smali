.class public Lio/agora/rtc/video/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;,
        Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;
    }
.end annotation


# static fields
.field private static final BASE_FRAME_RATE_FOR_AMLOGIC:I = 0x1e

.field private static final BASE_FRAME_RATE_FOR_EXYNOS:I = 0x1e

.field private static final BASE_FRAME_RATE_FOR_HIS_HISI:I = 0x1e

.field private static final BASE_FRAME_RATE_FOR_HIS_K3:I = 0x1e

.field private static final BASE_FRAME_RATE_FOR_HIS_TOPAZ:I = 0x1e

.field private static final BASE_FRAME_RATE_FOR_MTK:I = 0x1e

.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final DEQUEUE_TIMEOUT:I = 0x0

.field private static final ENABLE_VERBOSE_LOG:Z = false

.field private static final H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H264_HW_QCOM_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final H265_HW_EXCEPTION_HARDWARES:[Ljava/lang/String;

.field private static final H265_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H265_MIME_TYPE:Ljava/lang/String; = "video/hevc"

.field private static final INTERVAL_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final INT_INTERVAL_UPPER_LIMIT:I = 0x64

.field private static final INT_SETTING_INTERVAL_VALUE:I = 0xa

.field private static final KBPS_TO_BPS_FACTOR:I = 0x384

.field private static final KBPS_TO_BPS_FACTOR_QCOM:I = 0x3b6

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0xbb8

.field private static final MTK_NO_ADJUSTMENT_MODELS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoEncoder"

.field private static final VIDEO_ControlRateConstant:I = 0x2

.field private static final VIDEO_ControlRateVariable:I = 0x1

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static codecErrors:I

.field private static codecOmxName:Ljava/lang/String;

.field private static errorCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

.field private static hwEncoderDisabledTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mH264SupportProfileHigh:I

.field private static runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field private static final supportedColorList:[I

.field private static final supportedH264HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedH265HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedSurfaceColorList:[I

.field private static final supportedVp8HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp9HwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private SDKVer:I

.field private asyncEncoderCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;

.field private asyncEncoderHandler:Landroid/os/Handler;

.field private asyncHandlerThread:Landroid/os/HandlerThread;

.field private final availableInputIndexes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitrateAdjustmentType:I

.field private bitrateMode:I

.field private chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

.field private codecName:Ljava/lang/String;

.field private colorFormat:I

.field private configData:Ljava/nio/ByteBuffer;

.field private converted_bps:I

.field private cpuModel:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private drawer:Lio/agora/rtc/gl/GlRectDrawer;

.field private eglBase:Lio/agora/rtc/gl/EglBase;

.field private fos:Ljava/io/FileOutputStream;

.field private height:I

.field private heightAlignment:I

.field private final inputBufferLock:Ljava/lang/Object;

.field private inputSurface:Landroid/view/Surface;

.field private isInitialized:Z

.field private keyFrameIntervalInMsec:I

.field private lastKeyFrameTimeMs:J

.field private lastResetForQcomTimeMs:J

.field private lastSetFps:I

.field private maxSupportedBitrate:I

.field private maxSupportedHeight:I

.field private maxSupportedWidth:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private memoryType:I

.field private minSupportedBitrate:I

.field private minSupportedHeight:I

.field private minSupportedWidth:I

.field private nativeHandle:J

.field private outputBuffers:[Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private outputFrameRotation:I

.field private profile:I

.field private qcomExceptionModel:Z

.field private final rotateMatrix:Landroid/graphics/Matrix;

.field private settingAdjustmentConfs:Ljava/lang/String;

.field private settingAdjustmentReset:I

.field private settingBitrateAdjustmentType:I

.field private settingBitrateBaseFPS:I

.field private settingBitrateFactor:I

.field private settingBitrateMode:I

.field private settingCodecParameterForExynos:I

.field private settingHighProfile:I

.field private settingInitConfs:Ljava/lang/String;

.field private settingMaxFPS:I

.field private settingMaxHeight:I

.field private settingMaxWidth:I

.field private supportCodecs:I

.field private type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

.field private useAsyncMode:Z

.field private width:I

.field private widthAlignment:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "OMX.Intel."

    .line 13
    .line 14
    const-string v1, "OMX.qcom."

    .line 15
    .line 16
    .line 17
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    filled-new-array {v1}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "OMX.qcom."

    .line 29
    .line 30
    const-string v2, "OMX.Exynos."

    .line 31
    .line 32
    const-string v3, "OMX.MTK."

    .line 33
    .line 34
    const-string v4, "OMX.IMG.TOPAZ."

    .line 35
    .line 36
    const-string v5, "OMX.hisi."

    .line 37
    .line 38
    const-string v6, "OMX.k3."

    .line 39
    .line 40
    const-string v7, "OMX.amlogic."

    .line 41
    .line 42
    const-string v8, "OMX.rk."

    .line 43
    .line 44
    const-string v9, "OMX.MS."

    .line 45
    .line 46
    .line 47
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "OMX.qcom."

    .line 53
    .line 54
    const-string v2, "OMX.Exynos."

    .line 55
    .line 56
    const-string v3, "OMX.MTK."

    .line 57
    .line 58
    const-string v4, "OMX.IMG.TOPAZ."

    .line 59
    .line 60
    const-string v5, "OMX.hisi."

    .line 61
    .line 62
    const-string v6, "OMX.k3."

    .line 63
    .line 64
    const-string v7, "OMX.amlogic."

    .line 65
    .line 66
    const-string v8, "OMX.rk."

    .line 67
    .line 68
    .line 69
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "SAMSUNG-SGH-I337"

    .line 75
    .line 76
    const-string v2, "Nexus 7"

    .line 77
    .line 78
    const-string v3, "Nexus 4"

    .line 79
    .line 80
    const-string v4, "P6-C00"

    .line 81
    .line 82
    const-string v5, "HM 2A"

    .line 83
    .line 84
    const-string v6, "XT105"

    .line 85
    .line 86
    const-string v7, "XT109"

    .line 87
    .line 88
    const-string v8, "XT1060"

    .line 89
    .line 90
    .line 91
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 95
    .line 96
    const-string v1, "mi note lte"

    .line 97
    .line 98
    const-string v2, "redmi note 4x"

    .line 99
    .line 100
    const-string v3, "1605-a01"

    .line 101
    .line 102
    const-string v4, "aosp on hammerhead"

    .line 103
    .line 104
    const-string v5, "lm-x210"

    .line 105
    .line 106
    const-string v6, "oppo r9s"

    .line 107
    .line 108
    .line 109
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_QCOM_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 113
    .line 114
    const-string v0, "vivo x21i"

    .line 115
    .line 116
    const-string v1, "vivo X21i A"

    .line 117
    .line 118
    const-string v2, "vivo y83a"

    .line 119
    .line 120
    .line 121
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->MTK_NO_ADJUSTMENT_MODELS:[Ljava/lang/String;

    .line 125
    .line 126
    const-string v0, "MI 8"

    .line 127
    .line 128
    const-string v1, "MI 6"

    .line 129
    .line 130
    const-string v2, "vivo X21A"

    .line 131
    .line 132
    .line 133
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->INTERVAL_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    .line 138
    .line 139
    new-array v1, v0, [Ljava/lang/String;

    .line 140
    .line 141
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H265_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 142
    .line 143
    const-string v1, "mt6771"

    .line 144
    .line 145
    const-string v2, "mt6762"

    .line 146
    .line 147
    .line 148
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H265_HW_EXCEPTION_HARDWARES:[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    const v1, 0x7fa30c00

    .line 155
    .line 156
    .line 157
    const v2, 0x7fa30c04

    .line 158
    .line 159
    const/16 v3, 0x13

    .line 160
    .line 161
    const/16 v4, 0x15

    .line 162
    .line 163
    .line 164
    filled-new-array {v3, v4, v1, v2}, [I

    .line 165
    move-result-object v1

    .line 166
    .line 167
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 168
    .line 169
    .line 170
    const v1, 0x7f000789

    .line 171
    .line 172
    .line 173
    filled-new-array {v1}, [I

    .line 174
    move-result-object v1

    .line 175
    .line 176
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 177
    .line 178
    sput v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mH264SupportProfileHigh:I

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    .line 16
    .line 17
    new-instance v1, Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputBufferLock:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .line 29
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    iput-wide v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 37
    .line 38
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    .line 39
    .line 40
    iput-wide v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    .line 41
    .line 42
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 43
    .line 44
    const/16 v2, 0x42

    .line 45
    .line 46
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->profile:I

    .line 47
    .line 48
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 49
    .line 50
    .line 51
    const v2, 0x8000

    .line 52
    .line 53
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedWidth:I

    .line 54
    .line 55
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedHeight:I

    .line 56
    const/4 v2, 0x2

    .line 57
    .line 58
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedWidth:I

    .line 59
    .line 60
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedHeight:I

    .line 61
    .line 62
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedBitrate:I

    .line 63
    .line 64
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedBitrate:I

    .line 65
    .line 66
    const/16 v3, 0x10

    .line 67
    .line 68
    iput v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->widthAlignment:I

    .line 69
    const/4 v3, 0x4

    .line 70
    .line 71
    iput v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->heightAlignment:I

    .line 72
    .line 73
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->memoryType:I

    .line 74
    .line 75
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->bitrateMode:I

    .line 76
    const/4 v0, -0x1

    .line 77
    .line 78
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingMaxWidth:I

    .line 79
    .line 80
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingMaxHeight:I

    .line 81
    .line 82
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingMaxFPS:I

    .line 83
    .line 84
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingHighProfile:I

    .line 85
    .line 86
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateMode:I

    .line 87
    .line 88
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateAdjustmentType:I

    .line 89
    .line 90
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateBaseFPS:I

    .line 91
    .line 92
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateFactor:I

    .line 93
    .line 94
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingAdjustmentReset:I

    .line 95
    .line 96
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingInitConfs:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingAdjustmentConfs:Ljava/lang/String;

    .line 99
    .line 100
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingCodecParameterForExynos:I

    .line 101
    .line 102
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 103
    .line 104
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->initEncoderWithRetryIfNeeded(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->nativeHandle:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$1000(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputBufferLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lio/agora/rtc/video/MediaCodecVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lio/agora/rtc/video/MediaCodecVideoEncoder;Landroid/media/MediaCodec$BufferInfo;ILjava/nio/ByteBuffer;)Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createOutputBufferInfo(Landroid/media/MediaCodec$BufferInfo;ILjava/nio/ByteBuffer;)Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->onAsyncInitEncoderResult(JZ)V

    .line 4
    return-void
.end method

.method static synthetic access$400(Lio/agora/rtc/video/MediaCodecVideoEncoder;JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->onAsyncEncodeFrameResult(JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V

    .line 4
    return-void
.end method

.method static synthetic access$500(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->releaseEncoderTask()V

    .line 4
    return-void
.end method

.method static synthetic access$600(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lio/agora/rtc/video/MediaCodecVideoEncoder;II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->setRates(II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$800(Lio/agora/rtc/video/MediaCodecVideoEncoder;JI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->onAsyncSetRatesResult(JI)V

    .line 4
    return-void
.end method

.method static synthetic access$900(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    .line 3
    return p0
.end method

.method private static checkMinSDKVersion(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chipName",
            "isTexture"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    const-string p1, "OMX.qcom."

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    return v0

    .line 14
    .line 15
    :cond_1
    const-string p1, "OMX.MTK."

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    return v0

    .line 23
    .line 24
    :cond_2
    const-string p1, "OMX.Exynos."

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    return v0

    .line 32
    .line 33
    :cond_3
    const-string p1, "OMX.IMG.TOPAZ."

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    return v0

    .line 41
    .line 42
    :cond_4
    const-string p1, "OMX.k3."

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    return v0
.end method

.method private checkOnMediaCodecThread()V
    .locals 0

    return-void
.end method

.method private convertBitRate(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Kbps",
            "fps"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 3
    .line 4
    iget-object v1, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 5
    .line 6
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget v1, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->baseFrameRate:I

    .line 11
    mul-int/2addr p1, v1

    .line 12
    div-int/2addr p1, p2

    .line 13
    .line 14
    :cond_0
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateFactor:I

    .line 15
    .line 16
    if-lez p2, :cond_1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    iget-object p2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "OMX.rk."

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    move-result p2

    .line 26
    .line 27
    if-nez p2, :cond_4

    .line 28
    .line 29
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 30
    .line 31
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H265:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 32
    .line 33
    if-ne p2, v0, :cond_2

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 37
    .line 38
    iget-object p2, p2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "OMX.qcom."

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    move-result p2

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    const/16 p2, 0x3b6

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_3
    const/16 p2, 0x384

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_4
    :goto_0
    const/16 p2, 0x3e8

    .line 55
    :goto_1
    mul-int/2addr p2, p1

    .line 56
    return p2
.end method

.method static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecName"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    .line 8
    const-string v0, "MediaCodecVideoEncoder"

    .line 9
    .line 10
    const-string v1, "create media encoder failed, "

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method private createEncoder(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
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
    const-string v1, "Java initEncode: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->toString()Ljava/lang/String;

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
    const-string v1, "MediaCodecVideoEncoder"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    iget v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->width:I

    .line 29
    .line 30
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    .line 31
    .line 32
    iget v2, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->height:I

    .line 33
    .line 34
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    .line 35
    .line 36
    iget v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedWidth:I

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    if-lt v0, v3, :cond_1d

    .line 40
    .line 41
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedHeight:I

    .line 42
    .line 43
    if-ge v2, v0, :cond_0

    .line 44
    .line 45
    goto/16 :goto_c

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 48
    .line 49
    if-nez v0, :cond_1c

    .line 50
    .line 51
    iget v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->fps:I

    .line 52
    const/4 v2, 0x1

    .line 53
    .line 54
    if-ge v0, v2, :cond_1

    .line 55
    .line 56
    iput v2, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->fps:I

    .line 57
    .line 58
    :cond_1
    iget v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 59
    .line 60
    if-ge v0, v2, :cond_2

    .line 61
    .line 62
    iput v2, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 63
    .line 64
    :cond_2
    iget v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->fps:I

    .line 65
    .line 66
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    .line 67
    .line 68
    iget v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 69
    .line 70
    mul-int/lit16 v0, v0, 0x3e8

    .line 71
    .line 72
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    .line 73
    .line 74
    const-wide/16 v5, 0x0

    .line 75
    .line 76
    iput-wide v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    move-result-wide v5

    .line 81
    .line 82
    iput-wide v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->values()[Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iget v3, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->codec:I

    .line 89
    .line 90
    aget-object v0, v0, v3

    .line 91
    .line 92
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 93
    .line 94
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 95
    const/4 v5, 0x0

    .line 96
    .line 97
    if-ne v0, v3, :cond_4

    .line 98
    .line 99
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->useSurface()Z

    .line 103
    move-result v3

    .line 104
    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_3
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 111
    .line 112
    :goto_0
    const-string v6, "video/x-vnd.on2.vp8"

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v0, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 116
    move-result-object v0

    .line 117
    goto :goto_4

    .line 118
    .line 119
    :cond_4
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP9:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 120
    .line 121
    if-ne v0, v3, :cond_6

    .line 122
    .line 123
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->useSurface()Z

    .line 127
    move-result v3

    .line 128
    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 132
    goto :goto_1

    .line 133
    .line 134
    :cond_5
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 135
    .line 136
    :goto_1
    const-string v6, "video/x-vnd.on2.vp9"

    .line 137
    .line 138
    .line 139
    invoke-static {v6, v0, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 140
    move-result-object v0

    .line 141
    goto :goto_4

    .line 142
    .line 143
    :cond_6
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 144
    .line 145
    if-ne v0, v3, :cond_8

    .line 146
    .line 147
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->useSurface()Z

    .line 151
    move-result v3

    .line 152
    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 156
    goto :goto_2

    .line 157
    .line 158
    :cond_7
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 159
    .line 160
    :goto_2
    const-string v6, "video/avc"

    .line 161
    .line 162
    .line 163
    invoke-static {v6, v0, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 164
    move-result-object v0

    .line 165
    goto :goto_4

    .line 166
    .line 167
    :cond_8
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H265:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 168
    .line 169
    if-ne v0, v3, :cond_a

    .line 170
    .line 171
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->useSurface()Z

    .line 175
    move-result v3

    .line 176
    .line 177
    if-eqz v3, :cond_9

    .line 178
    .line 179
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 180
    goto :goto_3

    .line 181
    .line 182
    :cond_9
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 183
    .line 184
    :goto_3
    const-string v6, "video/hevc"

    .line 185
    .line 186
    .line 187
    invoke-static {v6, v0, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 188
    move-result-object v0

    .line 189
    goto :goto_4

    .line 190
    :cond_a
    move-object v0, v5

    .line 191
    move-object v6, v0

    .line 192
    .line 193
    :goto_4
    if-eqz v0, :cond_1b

    .line 194
    .line 195
    sput-object p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 196
    .line 197
    iget-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    .line 198
    .line 199
    iget v7, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->fps:I

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, v3, v7}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->getChipProperties(Ljava/lang/String;I)Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 203
    move-result-object v3

    .line 204
    .line 205
    iput-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 206
    .line 207
    iget v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateAdjustmentType:I

    .line 208
    .line 209
    if-lez v7, :cond_b

    .line 210
    .line 211
    .line 212
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->values()[Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 213
    move-result-object v7

    .line 214
    .line 215
    iget v8, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateAdjustmentType:I

    .line 216
    .line 217
    aget-object v7, v7, v8

    .line 218
    .line 219
    iput-object v7, v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 220
    .line 221
    :cond_b
    iget v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateBaseFPS:I

    .line 222
    .line 223
    if-lez v3, :cond_c

    .line 224
    .line 225
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 226
    .line 227
    iput v3, v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->baseFrameRate:I

    .line 228
    .line 229
    iput v3, v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->initFrameRate:I

    .line 230
    .line 231
    :cond_c
    iget v3, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->bitrateKbps:I

    .line 232
    .line 233
    iget v7, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->fps:I

    .line 234
    .line 235
    .line 236
    invoke-direct {p0, v3, v7}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->convertBitRate(II)I

    .line 237
    move-result v3

    .line 238
    .line 239
    iput v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 240
    .line 241
    .line 242
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 243
    move-result-object v3

    .line 244
    .line 245
    iput-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 246
    .line 247
    iget v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    .line 248
    .line 249
    iget v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    .line 250
    .line 251
    .line 252
    invoke-static {v6, v3, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 253
    move-result-object v3

    .line 254
    .line 255
    iget v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingHighProfile:I

    .line 256
    .line 257
    const/16 v7, 0x64

    .line 258
    .line 259
    if-gtz v6, :cond_d

    .line 260
    .line 261
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 262
    .line 263
    iget-object v8, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 264
    .line 265
    iget v8, v8, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->highProfileMinSdkVersion:I

    .line 266
    .line 267
    if-lt v6, v8, :cond_10

    .line 268
    .line 269
    :cond_d
    iget v6, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->profile:I

    .line 270
    .line 271
    if-ne v6, v7, :cond_10

    .line 272
    .line 273
    const-string v6, "Set high profile and level"

    .line 274
    .line 275
    .line 276
    invoke-static {v1, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    iget-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 279
    .line 280
    sget-object v8, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 281
    .line 282
    const-string v9, "level"

    .line 283
    .line 284
    const-string v10, "profile"

    .line 285
    .line 286
    if-ne v6, v8, :cond_e

    .line 287
    .line 288
    const/16 v6, 0x8

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 292
    .line 293
    const/16 v6, 0x200

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v9, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 297
    goto :goto_5

    .line 298
    .line 299
    :cond_e
    sget-object v8, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H265:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 300
    .line 301
    if-ne v6, v8, :cond_f

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v10, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 305
    .line 306
    const/16 v6, 0x100

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v9, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 310
    .line 311
    :cond_f
    :goto_5
    iput v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->profile:I

    .line 312
    goto :goto_6

    .line 313
    .line 314
    :cond_10
    const/16 v6, 0x42

    .line 315
    .line 316
    iput v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->profile:I

    .line 317
    .line 318
    :goto_6
    const-string v6, "bitrate"

    .line 319
    .line 320
    iget v8, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 324
    .line 325
    iget v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingBitrateMode:I

    .line 326
    .line 327
    if-lez v6, :cond_11

    .line 328
    .line 329
    iput v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->bitrateMode:I

    .line 330
    goto :goto_8

    .line 331
    .line 332
    :cond_11
    iget-object v6, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    .line 333
    .line 334
    const-string v8, "OMX.rk."

    .line 335
    .line 336
    .line 337
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 338
    move-result v6

    .line 339
    .line 340
    if-nez v6, :cond_13

    .line 341
    .line 342
    iget-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 343
    .line 344
    sget-object v8, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H265:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 345
    .line 346
    if-ne v6, v8, :cond_12

    .line 347
    goto :goto_7

    .line 348
    .line 349
    :cond_12
    iget-boolean v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 350
    .line 351
    if-nez v6, :cond_14

    .line 352
    .line 353
    iput v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->bitrateMode:I

    .line 354
    goto :goto_8

    .line 355
    :cond_13
    :goto_7
    const/4 v6, 0x2

    .line 356
    .line 357
    iput v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->bitrateMode:I

    .line 358
    .line 359
    :cond_14
    :goto_8
    const-string v6, "bitrate-mode"

    .line 360
    .line 361
    iget v8, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->bitrateMode:I

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 365
    .line 366
    const-string v6, "color-format"

    .line 367
    .line 368
    iget v8, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 372
    .line 373
    iget-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 374
    .line 375
    iget-object v8, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 376
    .line 377
    sget-object v9, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 378
    .line 379
    const-string v10, "frame-rate"

    .line 380
    .line 381
    if-ne v8, v9, :cond_15

    .line 382
    .line 383
    iget v6, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->init_fps:I

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 387
    goto :goto_9

    .line 388
    .line 389
    :cond_15
    iget v6, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->initFrameRate:I

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 393
    .line 394
    :goto_9
    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder;->INTERVAL_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 398
    move-result-object v6

    .line 399
    .line 400
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 404
    move-result v6

    .line 405
    .line 406
    if-eqz v6, :cond_16

    .line 407
    .line 408
    iget v6, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 409
    .line 410
    if-lt v6, v7, :cond_16

    .line 411
    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    const-string v7, "keyInterval: "

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    iget v7, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v6

    .line 430
    .line 431
    .line 432
    invoke-static {v1, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    const-string v7, "Model: "

    .line 440
    .line 441
    .line 442
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v7, " ,need to modify interval."

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v6

    .line 455
    .line 456
    .line 457
    invoke-static {v1, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    const/16 v6, 0xa

    .line 460
    .line 461
    iput v6, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 462
    .line 463
    :cond_16
    iget-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 464
    .line 465
    iget-object v6, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 466
    .line 467
    sget-object v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 468
    .line 469
    const-string v8, "i-frame-interval"

    .line 470
    .line 471
    if-ne v6, v7, :cond_17

    .line 472
    .line 473
    iget v6, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v8, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 477
    goto :goto_a

    .line 478
    .line 479
    :cond_17
    iget v6, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->keyInterval:I

    .line 480
    add-int/2addr v6, v2

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3, v8, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 484
    .line 485
    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    const-string v7, "  Format: "

    .line 491
    .line 492
    .line 493
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    move-result-object v6

    .line 501
    .line 502
    .line 503
    invoke-static {v1, v6}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    iget-object v6, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    invoke-static {v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 509
    move-result-object v6

    .line 510
    .line 511
    iput-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 512
    .line 513
    if-eqz v6, :cond_1a

    .line 514
    .line 515
    iget-boolean v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    .line 516
    .line 517
    if-eqz v6, :cond_18

    .line 518
    .line 519
    new-instance v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;

    .line 520
    .line 521
    .line 522
    invoke-direct {v6, p0, v5}, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$1;)V

    .line 523
    .line 524
    iput-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;

    .line 525
    .line 526
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 527
    .line 528
    new-instance v8, Landroid/os/Handler;

    .line 529
    .line 530
    iget-object v9, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 534
    move-result-object v9

    .line 535
    .line 536
    .line 537
    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v7, v6, v8}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 541
    .line 542
    :cond_18
    iget-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6, v3, v5, v5, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 546
    .line 547
    iget-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    .line 548
    .line 549
    iput-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    .line 550
    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .line 556
    const-string v5, "codecName: "

    .line 557
    .line 558
    .line 559
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    iget-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    move-result-object v3

    .line 569
    .line 570
    .line 571
    invoke-static {v1, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    iget v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    .line 574
    .line 575
    iput v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->colorFormat:I

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->useSurface()Z

    .line 579
    move-result p1

    .line 580
    .line 581
    if-eqz p1, :cond_19

    .line 582
    .line 583
    const/16 p1, 0xb

    .line 584
    .line 585
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->memoryType:I

    .line 586
    goto :goto_b

    .line 587
    .line 588
    :cond_19
    iput v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->memoryType:I

    .line 589
    .line 590
    :goto_b
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 591
    .line 592
    iget-object p1, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 593
    .line 594
    .line 595
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 596
    move-result p1

    .line 597
    .line 598
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->bitrateAdjustmentType:I

    .line 599
    return v2

    .line 600
    .line 601
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 602
    .line 603
    const-string v0, "Can not create media encoder"

    .line 604
    .line 605
    .line 606
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 607
    throw p1

    .line 608
    .line 609
    :cond_1b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 610
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .line 616
    const-string v1, "Can not find HW encoder for "

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    move-result-object v0

    .line 629
    .line 630
    .line 631
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 632
    throw p1

    .line 633
    .line 634
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    .line 635
    .line 636
    const-string v0, "Forgot to release()?"

    .line 637
    .line 638
    .line 639
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 640
    throw p1

    .line 641
    .line 642
    :cond_1d
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .line 647
    const-string v0, "Not supported size:"

    .line 648
    .line 649
    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    .line 653
    .line 654
    .line 655
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    const-string v0, "x"

    .line 658
    .line 659
    .line 660
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    .line 663
    .line 664
    .line 665
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    move-result-object p1

    .line 670
    .line 671
    .line 672
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return v4
.end method

.method private createOutputBufferInfo(Landroid/media/MediaCodec$BufferInfo;ILjava/nio/ByteBuffer;)Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "index",
            "outputBuffer"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    .line 7
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 8
    .line 9
    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 10
    add-int/2addr v0, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    .line 15
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 16
    const/4 v1, 0x1

    .line 17
    and-int/2addr v0, v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    move v6, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v6, v2

    .line 24
    .line 25
    :goto_0
    const-string v0, "MediaCodecVideoEncoder"

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    const-string v1, "Sync frame generated"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    :cond_1
    if-eqz v6, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 37
    .line 38
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 39
    .line 40
    if-eq v1, v3, :cond_2

    .line 41
    .line 42
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H265:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 43
    .line 44
    if-ne v1, v3, :cond_3

    .line 45
    .line 46
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v3, "Appending config frame of size "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, " to output buffer with offset "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, ", size "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 96
    move-result v0

    .line 97
    .line 98
    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 99
    add-int/2addr v0, v1

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 109
    .line 110
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    .line 121
    new-instance p3, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 122
    .line 123
    iget-wide v7, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 124
    .line 125
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 126
    .line 127
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 131
    move-result v0

    .line 132
    .line 133
    add-int v9, p1, v0

    .line 134
    move-object v3, p3

    .line 135
    move v4, p2

    .line 136
    .line 137
    .line 138
    invoke-direct/range {v3 .. v9}, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJI)V

    .line 139
    return-object p3

    .line 140
    .line 141
    :cond_3
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 145
    move-result-object v5

    .line 146
    .line 147
    iget-wide v7, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 148
    .line 149
    iget v9, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 150
    move-object v3, v0

    .line 151
    move v4, p2

    .line 152
    .line 153
    .line 154
    invoke-direct/range {v3 .. v9}, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJI)V

    .line 155
    return-object v0
.end method

.method public static disableH264HwCodec()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "H.264 encoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "H.265 encoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "VP8 encoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "VP9 encoding is disabled by application."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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

.method private static do_findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mime",
            "supportedHwCodecPrefixes",
            "colorList"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget v3, v1, v2

    .line 8
    .line 9
    .line 10
    const v4, 0x7f000789

    .line 11
    const/4 v5, 0x1

    .line 12
    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    move v3, v5

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    .line 18
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v7, "Model: "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    .line 37
    const-string v9, "MediaCodecVideoEncoder"

    .line 38
    .line 39
    .line 40
    invoke-static {v9, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v10, "hardware: "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    sget-object v10, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    .line 62
    invoke-static {v9, v6}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    const-string v6, "video/avc"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v11

    .line 69
    const/4 v12, 0x0

    .line 70
    .line 71
    if-eqz v11, :cond_2

    .line 72
    .line 73
    sget-object v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    move-result-object v11

    .line 78
    .line 79
    .line 80
    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result v11

    .line 82
    .line 83
    if-eqz v11, :cond_1

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, " has black listed H.264 encoder."

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-static {v9, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v12

    .line 108
    .line 109
    :cond_1
    const-string v7, "kirin970"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 113
    move-result v7

    .line 114
    .line 115
    if-eqz v7, :cond_3

    .line 116
    .line 117
    if-nez v3, :cond_3

    .line 118
    return-object v12

    .line 119
    .line 120
    :cond_2
    const-string v7, "video/hevc"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v7

    .line 125
    .line 126
    if-eqz v7, :cond_3

    .line 127
    .line 128
    sget-object v7, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H265_HW_EXCEPTION_HARDWARES:[Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 132
    move-result-object v7

    .line 133
    .line 134
    .line 135
    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 136
    move-result v7

    .line 137
    .line 138
    if-eqz v7, :cond_3

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    const-string v1, "Hardware: "

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v1, " has black listed H.265 encoder."

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-static {v9, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v12

    .line 165
    :cond_3
    move v7, v2

    .line 166
    .line 167
    .line 168
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 169
    move-result v8

    .line 170
    .line 171
    if-ge v7, v8, :cond_15

    .line 172
    .line 173
    .line 174
    invoke-static {v7}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 175
    move-result-object v8

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 179
    move-result v10

    .line 180
    .line 181
    if-nez v10, :cond_4

    .line 182
    .line 183
    :goto_2
    move/from16 v16, v5

    .line 184
    .line 185
    goto/16 :goto_9

    .line 186
    .line 187
    .line 188
    :cond_4
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 189
    move-result-object v10

    .line 190
    array-length v11, v10

    .line 191
    move v13, v2

    .line 192
    .line 193
    :goto_3
    if-ge v13, v11, :cond_6

    .line 194
    .line 195
    aget-object v14, v10, v13

    .line 196
    .line 197
    .line 198
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    move-result v14

    .line 200
    .line 201
    if-eqz v14, :cond_5

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 205
    move-result-object v10

    .line 206
    goto :goto_4

    .line 207
    .line 208
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 209
    goto :goto_3

    .line 210
    :cond_6
    move-object v10, v12

    .line 211
    .line 212
    :goto_4
    if-nez v10, :cond_7

    .line 213
    goto :goto_2

    .line 214
    .line 215
    .line 216
    :cond_7
    invoke-static {v10, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkMinSDKVersion(Ljava/lang/String;Z)Z

    .line 217
    move-result v11

    .line 218
    .line 219
    if-nez v11, :cond_8

    .line 220
    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    const-string v11, "Check min sdk version failed, "

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v8

    .line 237
    .line 238
    .line 239
    invoke-static {v9, v8}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    goto :goto_2

    .line 241
    .line 242
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    const-string v13, "Found candidate encoder "

    .line 248
    .line 249
    .line 250
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v11

    .line 258
    .line 259
    .line 260
    invoke-static {v9, v11}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    const-string v11, "OMX."

    .line 263
    .line 264
    .line 265
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 266
    move-result v11

    .line 267
    .line 268
    if-nez v11, :cond_9

    .line 269
    .line 270
    if-nez v3, :cond_9

    .line 271
    goto :goto_2

    .line 272
    .line 273
    :cond_9
    sput-object v10, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v8, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 277
    move-result-object v8

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result v11

    .line 282
    .line 283
    if-eqz v11, :cond_b

    .line 284
    .line 285
    iget-object v11, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 286
    array-length v13, v11

    .line 287
    move v14, v2

    .line 288
    .line 289
    :goto_5
    if-ge v14, v13, :cond_b

    .line 290
    .line 291
    aget-object v15, v11, v14

    .line 292
    .line 293
    iget v15, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 294
    .line 295
    const/16 v2, 0x8

    .line 296
    .line 297
    if-ne v15, v2, :cond_a

    .line 298
    .line 299
    sput v5, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mH264SupportProfileHigh:I

    .line 300
    .line 301
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 302
    const/4 v2, 0x0

    .line 303
    goto :goto_5

    .line 304
    .line 305
    :cond_b
    const-string v2, "OMX.amlogic."

    .line 306
    .line 307
    .line 308
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 309
    move-result v2

    .line 310
    .line 311
    const/16 v11, 0x13

    .line 312
    .line 313
    if-eqz v2, :cond_d

    .line 314
    .line 315
    if-eqz v3, :cond_c

    .line 316
    .line 317
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 318
    .line 319
    .line 320
    invoke-direct {v0, v10, v4, v5}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    .line 321
    return-object v0

    .line 322
    .line 323
    :cond_c
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 324
    .line 325
    .line 326
    invoke-direct {v0, v10, v11, v5}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    .line 327
    return-object v0

    .line 328
    .line 329
    :cond_d
    iget-object v2, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 330
    array-length v13, v2

    .line 331
    const/4 v14, 0x0

    .line 332
    const/4 v15, 0x0

    .line 333
    .line 334
    :goto_6
    const/16 v4, 0x15

    .line 335
    .line 336
    if-ge v14, v13, :cond_f

    .line 337
    .line 338
    aget v12, v2, v14

    .line 339
    .line 340
    if-ne v4, v12, :cond_e

    .line 341
    move v15, v5

    .line 342
    .line 343
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    const-string v5, "   Color: 0x"

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 355
    move-result-object v5

    .line 356
    .line 357
    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    move-result-object v4

    .line 363
    .line 364
    .line 365
    invoke-static {v9, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    add-int/lit8 v14, v14, 0x1

    .line 368
    const/4 v5, 0x1

    .line 369
    const/4 v12, 0x0

    .line 370
    goto :goto_6

    .line 371
    :cond_f
    array-length v2, v1

    .line 372
    const/4 v5, 0x0

    .line 373
    .line 374
    :goto_7
    if-ge v5, v2, :cond_14

    .line 375
    .line 376
    aget v12, v1, v5

    .line 377
    .line 378
    iget-object v13, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 379
    array-length v14, v13

    .line 380
    const/4 v4, 0x0

    .line 381
    .line 382
    :goto_8
    if-ge v4, v14, :cond_13

    .line 383
    .line 384
    aget v11, v13, v4

    .line 385
    .line 386
    if-ne v11, v12, :cond_12

    .line 387
    .line 388
    const-string v1, ". Color: 0x"

    .line 389
    .line 390
    const-string v2, " : "

    .line 391
    .line 392
    const-string v3, "Found target encoder for mime "

    .line 393
    .line 394
    const/16 v4, 0x13

    .line 395
    .line 396
    if-ne v11, v4, :cond_11

    .line 397
    const/4 v4, 0x1

    .line 398
    .line 399
    if-ne v15, v4, :cond_11

    .line 400
    .line 401
    const-string v4, "OMX.IMG.TOPAZ."

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 405
    move-result v4

    .line 406
    .line 407
    if-nez v4, :cond_10

    .line 408
    .line 409
    const-string v4, "OMX.hisi."

    .line 410
    .line 411
    .line 412
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 413
    move-result v4

    .line 414
    .line 415
    if-nez v4, :cond_10

    .line 416
    .line 417
    const-string v4, "OMX.k3."

    .line 418
    .line 419
    .line 420
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 421
    move-result v4

    .line 422
    .line 423
    if-eqz v4, :cond_11

    .line 424
    .line 425
    :cond_10
    const-string v4, "TOPAZ,force use COLOR_FormatYUV420SemiPlanar"

    .line 426
    .line 427
    .line 428
    invoke-static {v9, v4}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    const/16 v11, 0x15

    .line 451
    .line 452
    .line 453
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 454
    move-result-object v0

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    move-result-object v0

    .line 462
    .line 463
    .line 464
    invoke-static {v9, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 467
    const/4 v1, 0x1

    .line 468
    .line 469
    .line 470
    invoke-direct {v0, v10, v11, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    .line 471
    return-object v0

    .line 472
    .line 473
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 495
    move-result-object v0

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    move-result-object v0

    .line 503
    .line 504
    .line 505
    invoke-static {v9, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 508
    const/4 v1, 0x1

    .line 509
    .line 510
    .line 511
    invoke-direct {v0, v10, v11, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    .line 512
    return-object v0

    .line 513
    .line 514
    :cond_12
    const/16 v11, 0x15

    .line 515
    .line 516
    const/16 v16, 0x1

    .line 517
    .line 518
    const/16 v17, 0x13

    .line 519
    .line 520
    add-int/lit8 v4, v4, 0x1

    .line 521
    .line 522
    move/from16 v11, v17

    .line 523
    .line 524
    goto/16 :goto_8

    .line 525
    .line 526
    :cond_13
    move/from16 v17, v11

    .line 527
    .line 528
    const/16 v11, 0x15

    .line 529
    .line 530
    const/16 v16, 0x1

    .line 531
    .line 532
    add-int/lit8 v5, v5, 0x1

    .line 533
    move v4, v11

    .line 534
    .line 535
    move/from16 v11, v17

    .line 536
    .line 537
    goto/16 :goto_7

    .line 538
    .line 539
    :cond_14
    const/16 v16, 0x1

    .line 540
    .line 541
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 542
    .line 543
    move/from16 v5, v16

    .line 544
    const/4 v2, 0x0

    .line 545
    .line 546
    .line 547
    const v4, 0x7f000789

    .line 548
    const/4 v12, 0x0

    .line 549
    .line 550
    goto/16 :goto_1

    .line 551
    :cond_15
    move-object v2, v12

    .line 552
    return-object v2
.end method

.method private static findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mime",
            "supportedHwCodecPrefixes",
            "colorList"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, p1, p2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->do_findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method private getChipProperties(Ljava/lang/String;I)Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chipName",
            "fps"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "OMX.qcom."

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const-string v2, "MediaCodecVideoEncoder"

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_QCOM_EXCEPTION_MODELS:[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v4, "Qcom Exception Model: "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 52
    .line 53
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 54
    .line 55
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 56
    const/4 v3, 0x1

    .line 57
    .line 58
    const/16 v6, 0x15

    .line 59
    move-object v0, v7

    .line 60
    move-object v1, p1

    .line 61
    move v4, p2

    .line 62
    move v5, p2

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 66
    return-object v7

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    .line 69
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 70
    .line 71
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 72
    .line 73
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 74
    const/4 v3, 0x0

    .line 75
    .line 76
    const/16 v6, 0x15

    .line 77
    move-object v0, v7

    .line 78
    move-object v1, p1

    .line 79
    move v4, p2

    .line 80
    move v5, p2

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 84
    return-object v7

    .line 85
    .line 86
    :cond_1
    const-string v0, "OMX.MTK."

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    move-result v0

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    const-string v4, "MTK hardware: "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    const-string v2, "mt6763"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 120
    move-result v2

    .line 121
    .line 122
    if-nez v2, :cond_5

    .line 123
    .line 124
    const-string v2, "mt6763t"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 128
    move-result v2

    .line 129
    .line 130
    if-eqz v2, :cond_2

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_2
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->MTK_NO_ADJUSTMENT_MODELS:[Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    move-result-object v2

    .line 138
    .line 139
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 143
    move-result v2

    .line 144
    .line 145
    if-eqz v2, :cond_3

    .line 146
    .line 147
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 148
    .line 149
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 150
    const/4 v3, 0x0

    .line 151
    .line 152
    const/16 v6, 0x15

    .line 153
    move-object v0, v7

    .line 154
    move-object v1, p1

    .line 155
    move v4, p2

    .line 156
    move v5, p2

    .line 157
    .line 158
    .line 159
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 160
    return-object v7

    .line 161
    .line 162
    :cond_3
    const-string v2, "mt6735"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 166
    move-result v0

    .line 167
    .line 168
    if-eqz v0, :cond_4

    .line 169
    .line 170
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 171
    .line 172
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 173
    const/4 v3, 0x0

    .line 174
    .line 175
    .line 176
    const v6, 0x7fffffff

    .line 177
    move-object v0, v7

    .line 178
    move-object v1, p1

    .line 179
    move v4, p2

    .line 180
    move v5, p2

    .line 181
    .line 182
    .line 183
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 184
    return-object v7

    .line 185
    .line 186
    :cond_4
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 187
    .line 188
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 189
    const/4 v3, 0x0

    .line 190
    .line 191
    const/16 v6, 0x15

    .line 192
    move-object v0, v7

    .line 193
    move-object v1, p1

    .line 194
    move v4, p2

    .line 195
    move v5, p2

    .line 196
    .line 197
    .line 198
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 199
    return-object v7

    .line 200
    .line 201
    :cond_5
    :goto_0
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 202
    .line 203
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 204
    const/4 v3, 0x0

    .line 205
    .line 206
    const/16 v6, 0x15

    .line 207
    move-object v0, v7

    .line 208
    move-object v1, p1

    .line 209
    move v4, p2

    .line 210
    move v5, p2

    .line 211
    .line 212
    .line 213
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 214
    return-object v7

    .line 215
    .line 216
    :cond_6
    const-string v0, "OMX.Exynos."

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 220
    move-result v0

    .line 221
    .line 222
    if-eqz v0, :cond_a

    .line 223
    .line 224
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 225
    .line 226
    const-string v2, "MX4 Pro"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 230
    move-result v2

    .line 231
    .line 232
    if-eqz v2, :cond_7

    .line 233
    .line 234
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 235
    .line 236
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 237
    const/4 v3, 0x0

    .line 238
    .line 239
    .line 240
    const v6, 0x7fffffff

    .line 241
    move-object v0, v7

    .line 242
    move-object v1, p1

    .line 243
    move v4, p2

    .line 244
    move v5, p2

    .line 245
    .line 246
    .line 247
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 248
    return-object v7

    .line 249
    .line 250
    :cond_7
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 251
    .line 252
    const-string v3, "vivo"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    move-result v2

    .line 257
    .line 258
    if-eqz v2, :cond_8

    .line 259
    .line 260
    const-string v2, "V1938CT"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 264
    move-result v0

    .line 265
    .line 266
    if-eqz v0, :cond_8

    .line 267
    .line 268
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 269
    .line 270
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 271
    const/4 v3, 0x0

    .line 272
    .line 273
    const/16 v6, 0x15

    .line 274
    move-object v0, v7

    .line 275
    move-object v1, p1

    .line 276
    move v4, p2

    .line 277
    move v5, p2

    .line 278
    .line 279
    .line 280
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 281
    return-object v7

    .line 282
    .line 283
    :cond_8
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingCodecParameterForExynos:I

    .line 284
    .line 285
    if-lez v0, :cond_9

    .line 286
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 288
    .line 289
    const/16 v2, 0x1c

    .line 290
    .line 291
    if-le v0, v2, :cond_9

    .line 292
    .line 293
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 294
    .line 295
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 296
    const/4 v3, 0x0

    .line 297
    .line 298
    const/16 v6, 0x15

    .line 299
    move-object v0, v7

    .line 300
    move-object v1, p1

    .line 301
    move v4, p2

    .line 302
    move v5, p2

    .line 303
    .line 304
    .line 305
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 306
    return-object v7

    .line 307
    .line 308
    :cond_9
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 309
    .line 310
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 311
    const/4 v3, 0x0

    .line 312
    .line 313
    const/16 v4, 0x1e

    .line 314
    .line 315
    const/16 v5, 0x1e

    .line 316
    .line 317
    const/16 v6, 0x15

    .line 318
    move-object v0, v7

    .line 319
    move-object v1, p1

    .line 320
    .line 321
    .line 322
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 323
    return-object v7

    .line 324
    .line 325
    :cond_a
    const-string v0, "OMX.IMG.TOPAZ."

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 329
    move-result v0

    .line 330
    .line 331
    if-eqz v0, :cond_c

    .line 332
    .line 333
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 334
    .line 335
    const-string v2, "hi6250"

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 339
    move-result v0

    .line 340
    .line 341
    if-eqz v0, :cond_b

    .line 342
    .line 343
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 344
    .line 345
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 346
    const/4 v3, 0x0

    .line 347
    .line 348
    .line 349
    const v6, 0x7fffffff

    .line 350
    move-object v0, v7

    .line 351
    move-object v1, p1

    .line 352
    move v4, p2

    .line 353
    move v5, p2

    .line 354
    .line 355
    .line 356
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 357
    return-object v7

    .line 358
    .line 359
    :cond_b
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 360
    .line 361
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 362
    const/4 v3, 0x0

    .line 363
    .line 364
    const/16 v4, 0x1e

    .line 365
    .line 366
    const/16 v5, 0x1e

    .line 367
    .line 368
    .line 369
    const v6, 0x7fffffff

    .line 370
    move-object v0, v7

    .line 371
    move-object v1, p1

    .line 372
    .line 373
    .line 374
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 375
    return-object v7

    .line 376
    .line 377
    :cond_c
    const-string v0, "OMX.hisi."

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 381
    move-result v0

    .line 382
    .line 383
    if-eqz v0, :cond_d

    .line 384
    .line 385
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 386
    .line 387
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 388
    const/4 v3, 0x0

    .line 389
    .line 390
    .line 391
    const v6, 0x7fffffff

    .line 392
    move-object v0, v7

    .line 393
    move-object v1, p1

    .line 394
    move v4, p2

    .line 395
    move v5, p2

    .line 396
    .line 397
    .line 398
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 399
    return-object v7

    .line 400
    .line 401
    :cond_d
    const-string v0, "OMX.k3."

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 405
    move-result v0

    .line 406
    .line 407
    if-eqz v0, :cond_e

    .line 408
    .line 409
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 410
    .line 411
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 412
    const/4 v3, 0x0

    .line 413
    .line 414
    const/16 v4, 0x1e

    .line 415
    .line 416
    const/16 v5, 0x1e

    .line 417
    .line 418
    const/16 v6, 0x15

    .line 419
    move-object v0, v7

    .line 420
    move-object v1, p1

    .line 421
    .line 422
    .line 423
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 424
    return-object v7

    .line 425
    .line 426
    :cond_e
    const-string v0, "OMX.amlogic."

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 430
    move-result v0

    .line 431
    .line 432
    if-eqz v0, :cond_f

    .line 433
    .line 434
    const-string v0, "getChipProperties for amlogic"

    .line 435
    .line 436
    .line 437
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 440
    .line 441
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 442
    const/4 v3, 0x0

    .line 443
    .line 444
    const/16 v4, 0x1e

    .line 445
    .line 446
    const/16 v5, 0x1e

    .line 447
    .line 448
    .line 449
    const v6, 0x7fffffff

    .line 450
    move-object v0, v7

    .line 451
    move-object v1, p1

    .line 452
    .line 453
    .line 454
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 455
    return-object v7

    .line 456
    .line 457
    :cond_f
    const-string v0, "OMX.rk."

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 461
    move-result v0

    .line 462
    .line 463
    if-eqz v0, :cond_10

    .line 464
    .line 465
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 466
    .line 467
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 468
    const/4 v3, 0x0

    .line 469
    .line 470
    const/16 v4, 0x1e

    .line 471
    .line 472
    const/16 v5, 0x1e

    .line 473
    .line 474
    .line 475
    const v6, 0x7fffffff

    .line 476
    move-object v0, v7

    .line 477
    move-object v1, p1

    .line 478
    .line 479
    .line 480
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 481
    return-object v7

    .line 482
    .line 483
    :cond_10
    const-string v0, "getChipProperties from unsupported chip list"

    .line 484
    .line 485
    .line 486
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .line 488
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 489
    .line 490
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 491
    const/4 v3, 0x0

    .line 492
    .line 493
    const/16 v6, 0x17

    .line 494
    move-object v0, v7

    .line 495
    move-object v1, p1

    .line 496
    move v4, p2

    .line 497
    move v5, p2

    .line 498
    .line 499
    .line 500
    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    .line 501
    return-object v7
.end method

.method private getEncoderProperties(I)V
    .locals 16
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "video/x-vnd.on2.vp8"

    .line 5
    .line 6
    const-string v2, "video/x-vnd.on2.vp9"

    .line 7
    .line 8
    const-string v3, "video/avc"

    .line 9
    .line 10
    const-string v4, "video/hevc"

    .line 11
    .line 12
    .line 13
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    iput v5, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 18
    const/4 v6, 0x0

    .line 19
    move v7, v5

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    .line 23
    move-result v8

    .line 24
    .line 25
    if-ge v7, v8, :cond_6

    .line 26
    .line 27
    .line 28
    invoke-static {v7}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    .line 29
    move-result-object v8

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 33
    move-result v9

    .line 34
    .line 35
    if-nez v9, :cond_0

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 41
    move-result-object v9

    .line 42
    array-length v10, v9

    .line 43
    move v11, v5

    .line 44
    .line 45
    :goto_1
    if-ge v11, v10, :cond_5

    .line 46
    .line 47
    aget-object v12, v9, v11

    .line 48
    .line 49
    .line 50
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v13

    .line 52
    .line 53
    if-eqz v13, :cond_1

    .line 54
    .line 55
    iget v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 56
    .line 57
    or-int/lit8 v13, v13, 0x1

    .line 58
    .line 59
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 60
    goto :goto_2

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v13

    .line 65
    .line 66
    if-eqz v13, :cond_2

    .line 67
    .line 68
    iget v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 69
    .line 70
    or-int/lit8 v13, v13, 0x2

    .line 71
    .line 72
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 73
    goto :goto_2

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v13

    .line 78
    .line 79
    if-eqz v13, :cond_3

    .line 80
    .line 81
    iget v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 82
    .line 83
    or-int/lit8 v13, v13, 0x4

    .line 84
    .line 85
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportCodecs:I

    .line 86
    .line 87
    :cond_3
    :goto_2
    if-nez v6, :cond_4

    .line 88
    .line 89
    aget-object v13, v2, p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v12

    .line 94
    .line 95
    if-eqz v12, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    .line 101
    aget-object v12, v2, p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v8, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 105
    move-result-object v12

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isA50OrHigher()Z

    .line 109
    move-result v13

    .line 110
    .line 111
    if-eqz v13, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 115
    move-result-object v12

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    .line 119
    move-result-object v13

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    .line 123
    move-result-object v14

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 127
    move-result-object v15

    .line 128
    .line 129
    check-cast v15, Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 133
    move-result v15

    .line 134
    .line 135
    iput v15, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedWidth:I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 139
    move-result-object v15

    .line 140
    .line 141
    check-cast v15, Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 145
    move-result v15

    .line 146
    .line 147
    iput v15, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedHeight:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 151
    move-result-object v13

    .line 152
    .line 153
    check-cast v13, Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 157
    move-result v13

    .line 158
    .line 159
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedWidth:I

    .line 160
    .line 161
    .line 162
    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 163
    move-result-object v13

    .line 164
    .line 165
    check-cast v13, Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 169
    move-result v13

    .line 170
    .line 171
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedHeight:I

    .line 172
    .line 173
    .line 174
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 175
    move-result v13

    .line 176
    .line 177
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->widthAlignment:I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 181
    move-result v13

    .line 182
    .line 183
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->heightAlignment:I

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    .line 187
    move-result-object v12

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 191
    move-result-object v13

    .line 192
    .line 193
    check-cast v13, Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 197
    move-result v13

    .line 198
    .line 199
    iput v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedBitrate:I

    .line 200
    .line 201
    .line 202
    invoke-virtual {v12}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 203
    move-result-object v12

    .line 204
    .line 205
    check-cast v12, Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result v12

    .line 210
    .line 211
    iput v12, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedBitrate:I

    .line 212
    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    const-string v13, "max supported size:"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    iget v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedWidth:I

    .line 224
    .line 225
    .line 226
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v13, "x"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    iget v14, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedHeight:I

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v14, " min supported size:"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    iget v14, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedWidth:I

    .line 244
    .line 245
    .line 246
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    iget v14, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedHeight:I

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    const-string v14, " align size: "

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    iget v14, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->widthAlignment:I

    .line 262
    .line 263
    .line 264
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    iget v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->heightAlignment:I

    .line 270
    .line 271
    .line 272
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v13, " bitrate range: "

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    iget v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->maxSupportedBitrate:I

    .line 280
    .line 281
    .line 282
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v13, " -> "

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    iget v13, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->minSupportedBitrate:I

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v12

    .line 297
    .line 298
    const-string v13, "MediaCodecVideoEncoder"

    .line 299
    .line 300
    .line 301
    invoke-static {v13, v12}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 312
    .line 313
    iput v1, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->SDKVer:I

    .line 314
    .line 315
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 316
    .line 317
    iput-object v1, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->deviceModel:Ljava/lang/String;

    .line 318
    .line 319
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 320
    .line 321
    iput-object v1, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->cpuModel:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public static getHWEncoderManufactor()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "OMX.qcom."

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "OMX.MTK."

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    .line 26
    :cond_1
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "OMX.Exynos."

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    const/4 v0, 0x2

    .line 36
    return v0

    .line 37
    .line 38
    :cond_2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "OMX.IMG.TOPAZ."

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    const/4 v0, 0x3

    .line 48
    return v0

    .line 49
    .line 50
    :cond_3
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "OMX.k3."

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    const/4 v0, 0x4

    .line 60
    return v0

    .line 61
    .line 62
    :cond_4
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "OMX.hisi."

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    const/4 v0, 0x5

    .line 72
    return v0

    .line 73
    .line 74
    :cond_5
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 75
    .line 76
    const-string v1, "OMX.amlogic."

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    const/4 v0, 0x6

    .line 84
    return v0

    .line 85
    .line 86
    :cond_6
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "OMX.rk."

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    const/4 v0, 0x7

    .line 96
    return v0

    .line 97
    :cond_7
    const/4 v0, -0x1

    .line 98
    return v0
.end method

.method private initEglForEncoderIfNeeded(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParams"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->useSurface()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->sharedEgl14Context:Landroid/opengl/EGLContext;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance p1, Lio/agora/rtc/gl/EglBase14$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Lio/agora/rtc/gl/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    .line 17
    .line 18
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    .line 19
    .line 20
    sget-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_RECORDABLE:[I

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    .line 24
    .line 25
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object p1, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->sharedEgl10Context:Ljavax/microedition/khronos/egl/EGLContext;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    new-instance v0, Lio/agora/rtc/gl/EglBase10$Context;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p1}, Lio/agora/rtc/gl/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 36
    .line 37
    new-instance p1, Lio/agora/rtc/gl/EglBase10;

    .line 38
    .line 39
    sget-object v1, Lio/agora/rtc/gl/EglBase;->CONFIG_RECORDABLE:[I

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0, v1}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    .line 43
    .line 44
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 45
    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 57
    .line 58
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 62
    .line 63
    new-instance p1, Lio/agora/rtc/gl/GlRectDrawer;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    .line 67
    .line 68
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 69
    :cond_3
    return-void
.end method

.method private initEncoderTask(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParams"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const-string v2, "MediaCodecVideoEncoder"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "already initialized!"

    .line 10
    .line 11
    .line 12
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return v1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createEncoder(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z

    .line 18
    move-result v3

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    const-string p1, "failed to create hardware encoder!!"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return v0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->initEglForEncoderIfNeeded(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)V

    .line 32
    .line 33
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 37
    .line 38
    iget-boolean p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v3, "Output buffers: "

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 61
    array-length v3, v3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    :cond_2
    iput-boolean v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return v1

    .line 75
    .line 76
    :goto_0
    const-string v1, "failed to create hardware encoder,"

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-virtual {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    goto :goto_1

    .line 84
    :catch_1
    move-exception p1

    .line 85
    .line 86
    const-string v1, "failed to release hardware encoder,"

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_1
    return v0
.end method

.method private initEncoderWithRetryIfNeeded(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initParams"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->initEncoderTask(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "MediaCodecVideoEncoder"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v2, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->fallbackToBaselineProfile:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x42

    .line 15
    .line 16
    iput v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->profile:I

    .line 17
    .line 18
    const-string v0, "Init encoder: retry with baseline profile"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->initEncoderTask(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "Init encoder done: "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v2, "success"

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    const-string v2, "failed"

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return v0
.end method

.method private static isA50OrHigher()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAsyncModeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isH264HwHighProfileSupported()I
    .locals 1

    sget v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mH264SupportProfileHigh:I

    return v0
.end method

.method public static isH264HwSupported()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "video/avc"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 14
    .line 15
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1

    .line 24
    .line 25
    :catch_0
    const-string v0, "MediaCodecVideoEncoder"

    .line 26
    .line 27
    const-string v2, "isH264HwSupported failed!"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return v1
.end method

.method public static isH264HwSupportedUsingTextures()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "video/avc"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    .line 14
    .line 15
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1

    .line 24
    .line 25
    :catch_0
    const-string v0, "MediaCodecVideoEncoder"

    .line 26
    .line 27
    const-string v2, "isH264HwSupportedUsingTextures failed!"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return v1
.end method

.method public static isH265HwSupported()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "video/hevc"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    .line 14
    .line 15
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1

    .line 24
    .line 25
    :catch_0
    const-string v0, "MediaCodecVideoEncoder"

    .line 26
    .line 27
    const-string v2, "isH265HwSupported failed!"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return v1
.end method

.method public static isH265HwSupportedUsingTextures()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "video/hevc"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    .line 14
    .line 15
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1

    .line 24
    .line 25
    :catch_0
    const-string v0, "MediaCodecVideoEncoder"

    .line 26
    .line 27
    const-string v2, "isH265HwSupportedUsingTextures failed!"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return v1
.end method

.method private isOnAsyncHandlerThread()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static isQcomHWEncoder()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "MediaCodecVideoEncoder"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "OMX.qcom."

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Qualcomm HW encoder false"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    .line 23
    :cond_0
    const-string v0, "Qualcomm HW encoder true"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public static isVp8HwSupported()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static isVp8HwSupportedUsingTextures()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static isVp9HwSupported()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public static isVp9HwSupportedUsingTextures()Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

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
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    .line 13
    .line 14
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method private native onAsyncEncodeFrameResult(JZLio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "success",
            "outputBufferInfo"
        }
    .end annotation
.end method

.method private native onAsyncInitEncoderResult(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "success"
        }
    .end annotation
.end method

.method private native onAsyncSetRatesResult(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "ret"
        }
    .end annotation
.end method

.method public static printStackTrace()V
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

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
    const-string v1, "MediaCodecVideoEncoder stacks trace:"

    .line 18
    .line 19
    const-string v2, "MediaCodecVideoEncoder"

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

.method private releaseEncoderTask()V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    .line 3
    .line 4
    const-string v1, "MediaCodecVideoEncoder"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "releaseEncoderTask: encoder is not initialized!"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V

    .line 18
    .line 19
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 30
    .line 31
    new-instance v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;

    .line 32
    .line 33
    .line 34
    invoke-direct {v6, p0, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder$5;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V

    .line 35
    .line 36
    new-instance v7, Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    invoke-direct {v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 43
    .line 44
    const-wide/16 v6, 0xbb8

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v6, v7}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    const-string v2, "Media encoder release timeout"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    move v2, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v2, v3

    .line 59
    .line 60
    :goto_0
    iput-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move v2, v3

    .line 63
    .line 64
    :goto_1
    iput-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 65
    .line 66
    iput-boolean v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    .line 67
    .line 68
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 69
    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lio/agora/rtc/gl/GlRectDrawer;->release()V

    .line 74
    .line 75
    iput-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 76
    .line 77
    :cond_3
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 83
    .line 84
    iput-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 85
    .line 86
    :cond_4
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 92
    .line 93
    iput-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 94
    .line 95
    :cond_5
    sput-object v5, Lio/agora/rtc/video/MediaCodecVideoEncoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 96
    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    sget v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    .line 100
    add-int/2addr v0, v4

    .line 101
    .line 102
    sput v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    .line 103
    .line 104
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string v2, "Invoke codec error callback. Errors: "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    sget v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 131
    .line 132
    sget v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;->onMediaCodecVideoEncoderCriticalError(I)V

    .line 136
    .line 137
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 138
    .line 139
    const-string v1, "Media encoder release timeout."

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 143
    throw v0

    .line 144
    .line 145
    :cond_7
    iget-object v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 146
    .line 147
    if-nez v2, :cond_8

    .line 148
    .line 149
    const-string v0, "Java releaseEncoder done"

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void

    .line 154
    .line 155
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 156
    .line 157
    iget-object v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 158
    .line 159
    .line 160
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 161
    .line 162
    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v2}, Lio/agora/rtc/utils/ThreadUtils;->concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 178
    throw v1
.end method

.method public static setErrorCallback(Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCallback"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "Set error callback"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    .line 10
    return-void
.end method

.method private setRates(II)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "Kbps",
            "fps"
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
    const-string v1, "Bwe setRates: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, " Kbps"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "MediaCodecVideoEncoder"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isOnAsyncHandlerThread()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderHandler:Landroid/os/Handler;

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-string p1, "setRates: null async handler, not initialized?"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return v3

    .line 50
    .line 51
    :cond_0
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p0, p1, p2}, Lio/agora/rtc/video/MediaCodecVideoEncoder$6;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return v2

    .line 59
    .line 60
    :cond_1
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    const-string p1, "setRates: encoder is not initialized!"

    .line 65
    .line 66
    .line 67
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return v3

    .line 69
    .line 70
    :cond_2
    if-lez p2, :cond_3

    .line 71
    .line 72
    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    .line 73
    .line 74
    if-eq p2, v0, :cond_3

    .line 75
    move v0, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move v0, v3

    .line 78
    .line 79
    :goto_0
    if-lez p2, :cond_4

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_4
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    .line 83
    .line 84
    :goto_1
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->convertBitRate(II)I

    .line 88
    move-result p1

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    :try_start_0
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->settingAdjustmentReset:I

    .line 93
    .line 94
    if-gtz p2, :cond_5

    .line 95
    .line 96
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 97
    .line 98
    iget-object p2, p2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 99
    .line 100
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 101
    .line 102
    if-ne p2, v0, :cond_6

    .line 103
    goto :goto_2

    .line 104
    :catch_0
    move-exception p1

    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_5
    :goto_2
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 109
    return v3

    .line 110
    .line 111
    :cond_6
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    const-string v0, " fps"

    .line 114
    .line 115
    const-string v4, " bps(converted) "

    .line 116
    .line 117
    const-string v5, "video-bitrate"

    .line 118
    .line 119
    if-le p1, p2, :cond_7

    .line 120
    .line 121
    :try_start_1
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 122
    .line 123
    new-instance p1, Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 127
    .line 128
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v5, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 137
    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    const-string p2, "setRates up to : "

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    .line 168
    .line 169
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return v2

    .line 171
    .line 172
    :cond_7
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 173
    .line 174
    iget-object p2, p2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    .line 175
    .line 176
    const-string v6, "OMX.qcom."

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    move-result p2

    .line 181
    .line 182
    if-eqz p2, :cond_a

    .line 183
    .line 184
    iget-boolean p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 185
    .line 186
    const/16 v6, 0x61a8

    .line 187
    .line 188
    if-eqz p2, :cond_8

    .line 189
    goto :goto_3

    .line 190
    .line 191
    :cond_8
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 192
    .line 193
    .line 194
    const v7, 0x30d40

    .line 195
    .line 196
    if-le p2, v7, :cond_9

    .line 197
    goto :goto_3

    .line 198
    .line 199
    :cond_9
    const/16 v6, 0x3a98

    .line 200
    goto :goto_3

    .line 201
    :cond_a
    move v6, v3

    .line 202
    .line 203
    :goto_3
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 204
    sub-int/2addr p2, v6

    .line 205
    .line 206
    if-ge p1, p2, :cond_d

    .line 207
    .line 208
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 209
    .line 210
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 211
    .line 212
    iget-boolean p1, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->isNeedResetWhenDownBps:Z

    .line 213
    .line 214
    if-eqz p1, :cond_c

    .line 215
    .line 216
    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 218
    move-result-wide p1

    .line 219
    .line 220
    iget-wide v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    .line 221
    .line 222
    sub-long v4, p1, v4

    .line 223
    .line 224
    const-wide/16 v6, 0x7d0

    .line 225
    .line 226
    cmp-long v0, v4, v6

    .line 227
    .line 228
    if-ltz v0, :cond_b

    .line 229
    .line 230
    iput-wide p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    .line 231
    return v3

    .line 232
    :cond_b
    const/4 p1, 0x2

    .line 233
    return p1

    .line 234
    .line 235
    :cond_c
    new-instance p1, Landroid/os/Bundle;

    .line 236
    .line 237
    .line 238
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 239
    .line 240
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v5, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 244
    .line 245
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 249
    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    const-string p2, "setRates down to : "

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object p1

    .line 279
    .line 280
    .line 281
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    :cond_d
    return v2

    .line 283
    .line 284
    :goto_4
    const-string p2, "setRates failed"

    .line 285
    .line 286
    .line 287
    invoke-static {v1, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    return v3
.end method

.method private supportedEncoderConfig(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "fps",
            "bitrate"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method dequeueInputBuffer()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    .line 12
    const-string v1, "MediaCodecVideoEncoder"

    .line 13
    .line 14
    const-string v2, "dequeueIntputBuffer failed"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    const/4 v0, -0x2

    .line 19
    return v0
.end method

.method dequeueInputBufferAvailable()Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputBufferLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string v1, "MediaCodecVideoEncoder"

    .line 19
    .line 20
    const-string v2, "no input buffer available"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;

    .line 26
    const/4 v2, -0x1

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;-><init>(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 46
    .line 47
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    new-instance v4, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, v2, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;-><init>(ILjava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    move-object v1, v4

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .line 61
    :try_start_2
    const-string v2, "MediaCodecVideoEncoder"

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    const-string v5, "codec exception: "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;

    .line 88
    const/4 v2, -0x2

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder$InputBufferInfo;-><init>(ILjava/nio/ByteBuffer;)V

    .line 92
    :goto_0
    monitor-exit v0

    .line 93
    return-object v1

    .line 94
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    throw v1
.end method

.method dequeueOutputBuffer()Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 8
    .line 9
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 15
    move-result v2

    .line 16
    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 20
    .line 21
    and-int/lit8 v5, v5, 0x2

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v6, "Config frame generated. Offset: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v6, ". Size: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v5}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 58
    .line 59
    .line 60
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 61
    move-result-object v5

    .line 62
    .line 63
    iput-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    iget-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    aget-object v5, v5, v2

    .line 68
    .line 69
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    .line 74
    iget-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    aget-object v5, v5, v2

    .line 77
    .line 78
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 79
    .line 80
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 81
    add-int/2addr v6, v7

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    .line 86
    iget-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    iget-object v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    aget-object v6, v6, v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    iget-object v5, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 96
    const/4 v6, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 100
    .line 101
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 105
    move-result v2

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_0
    :goto_0
    if-ltz v2, :cond_1

    .line 111
    .line 112
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    aget-object v3, v3, v2

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v1, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createOutputBufferInfo(Landroid/media/MediaCodec$BufferInfo;ILjava/nio/ByteBuffer;)Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 122
    move-result-object v0

    .line 123
    return-object v0

    .line 124
    :cond_1
    const/4 v1, -0x3

    .line 125
    .line 126
    if-ne v2, v1, :cond_2

    .line 127
    .line 128
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :cond_2
    const/4 v1, -0x2

    .line 141
    .line 142
    if-ne v2, v1, :cond_3

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 146
    move-result-object v0

    .line 147
    return-object v0

    .line 148
    :cond_3
    const/4 v1, -0x1

    .line 149
    .line 150
    if-ne v2, v1, :cond_4

    .line 151
    const/4 v0, 0x0

    .line 152
    return-object v0

    .line 153
    .line 154
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    const-string v4, "dequeueOutputBuffer: "

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v2

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 175
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    :goto_1
    const-string v2, "dequeueOutputBuffer failed"

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .line 182
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    .line 183
    const/4 v4, -0x1

    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v6, 0x0

    .line 186
    .line 187
    const-wide/16 v7, -0x1

    .line 188
    const/4 v9, 0x0

    .line 189
    move-object v3, v0

    .line 190
    .line 191
    .line 192
    invoke-direct/range {v3 .. v9}, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJI)V

    .line 193
    return-object v0
.end method

.method dumpIntoFile(Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "type"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;

    .line 3
    .line 4
    const-string v1, "MediaCodecVideoEncoder"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    :try_start_0
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 11
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    .line 14
    if-ne p2, v3, :cond_0

    .line 15
    .line 16
    const-string p2, "/sdcard/java_dump_video_%d_%d.h264"

    .line 17
    .line 18
    new-array v3, v4, [Ljava/lang/Object;

    .line 19
    .line 20
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    aput-object v4, v3, v2

    .line 27
    .line 28
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    .line 29
    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    aput-object v4, v3, v5

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    :goto_0
    move-object v0, p2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_0
    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H265:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 43
    .line 44
    if-ne p2, v3, :cond_1

    .line 45
    .line 46
    const-string p2, "/sdcard/java_dump_video_%d_%d.h265"

    .line 47
    .line 48
    new-array v3, v4, [Ljava/lang/Object;

    .line 49
    .line 50
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    .line 51
    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    aput-object v4, v3, v2

    .line 57
    .line 58
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    aput-object v4, v3, v5

    .line 65
    .line 66
    .line 67
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_1
    const-string p2, "/sdcard/java_dump_video_%d_%d.raw"

    .line 72
    .line 73
    new-array v3, v4, [Ljava/lang/Object;

    .line 74
    .line 75
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    aput-object v4, v3, v2

    .line 82
    .line 83
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    .line 84
    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    aput-object v4, v3, v5

    .line 90
    .line 91
    .line 92
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :goto_1
    new-instance p2, Ljava/io/FileOutputStream;

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 100
    .line 101
    iput-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    const-string p2, "dumpIntoFile: failed to open "

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 124
    .line 125
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 126
    .line 127
    iget p2, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->index:I

    .line 128
    .line 129
    if-ltz p2, :cond_3

    .line 130
    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    const-string v0, "Dump nal: "

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    iget-object v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    .line 151
    invoke-static {v1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    :try_start_1
    iget-object p2, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 157
    move-result p2

    .line 158
    .line 159
    new-array p2, p2, [B

    .line 160
    .line 161
    iget-object v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 165
    .line 166
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;

    .line 167
    .line 168
    iget p1, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->size:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p2, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    goto :goto_3

    .line 173
    :catch_1
    move-exception p1

    .line 174
    .line 175
    const-string p2, "Run: 4.1 Exception "

    .line 176
    .line 177
    .line 178
    invoke-static {v1, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :cond_3
    :goto_3
    return-void
.end method

.method encodeBuffer(ZIIIJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "isKeyframe",
            "inputBuffer",
            "size",
            "rotation",
            "presentationTimestampUs"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v9, p0

    .line 3
    .line 4
    iget-boolean v0, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    .line 5
    const/4 v10, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    const-string v2, "MediaCodecVideoEncoder"

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isOnAsyncHandlerThread()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderHandler:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string v0, "encodeBuffer: null async handler, not initialized?"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return v1

    .line 27
    .line 28
    :cond_0
    new-instance v11, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;

    .line 29
    move-object v1, v11

    .line 30
    .line 31
    move-object/from16 v2, p0

    .line 32
    .line 33
    move/from16 v3, p1

    .line 34
    .line 35
    move/from16 v4, p2

    .line 36
    .line 37
    move/from16 v5, p3

    .line 38
    .line 39
    move/from16 v6, p4

    .line 40
    .line 41
    move-wide/from16 v7, p5

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v1 .. v8}, Lio/agora/rtc/video/MediaCodecVideoEncoder$2;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;ZIIIJ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return v10

    .line 49
    .line 50
    :cond_1
    iget-boolean v0, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    .line 51
    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    const-string v0, "encodeBuffer: encoder is not initialized!"

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return v1

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    iget-wide v5, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 65
    .line 66
    const-wide/16 v7, 0x0

    .line 67
    .line 68
    cmp-long v0, v5, v7

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    iput-wide v3, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 73
    .line 74
    :cond_3
    move/from16 v0, p4

    .line 75
    .line 76
    iput v0, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputFrameRotation:I

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    :try_start_0
    iget-object v0, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 81
    .line 82
    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 83
    .line 84
    sget-object v5, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    .line 85
    .line 86
    if-eq v0, v5, :cond_6

    .line 87
    .line 88
    iget-wide v5, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 89
    .line 90
    sub-long v5, v3, v5

    .line 91
    .line 92
    iget v0, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    .line 93
    int-to-long v7, v0

    .line 94
    .line 95
    cmp-long v0, v5, v7

    .line 96
    .line 97
    if-ltz v0, :cond_6

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 103
    .line 104
    const-string v0, "Sync frame request"

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .line 114
    const-string v5, "request-sync"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    iget-object v5, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 123
    .line 124
    iput-wide v3, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 125
    .line 126
    :cond_6
    iget-object v11, v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 127
    const/4 v13, 0x0

    .line 128
    .line 129
    const/16 v17, 0x0

    .line 130
    .line 131
    move/from16 v12, p2

    .line 132
    .line 133
    move/from16 v14, p3

    .line 134
    .line 135
    move-wide/from16 v15, p5

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return v10

    .line 140
    .line 141
    :goto_1
    const-string v3, "encodeBuffer failed"

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v3, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    return v1
.end method

.method encodeTexture(ZII[FIIIIIJ)Z
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "isKeyframe",
            "oesTextureId",
            "textureType",
            "transformationMatrix",
            "textureWidth",
            "textureHeight",
            "actual_width",
            "actual_height",
            "rotation",
            "presentationTimestampUs"
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v0, p9

    const-string v1, "x"

    iget-boolean v2, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    const/4 v3, 0x0

    const-string v4, "MediaCodecVideoEncoder"

    if-eqz v2, :cond_1

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isOnAsyncHandlerThread()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v12, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderHandler:Landroid/os/Handler;

    if-nez v12, :cond_0

    const-string v0, "encodeTexture: null async handler, not initialized?"

    .line 2
    invoke-static {v4, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 3
    :cond_0
    new-instance v13, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object v0, v12

    move-object v15, v13

    move-wide/from16 v12, p10

    invoke-direct/range {v1 .. v13}, Lio/agora/rtc/video/MediaCodecVideoEncoder$3;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;ZII[FIIIIIJ)V

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-boolean v2, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->isInitialized:Z

    if-nez v2, :cond_2

    const-string v0, "encodeTexture: encoder is not initialized!"

    .line 4
    invoke-static {v4, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 5
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_3

    iput-wide v5, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    :cond_3
    if-nez p1, :cond_4

    :try_start_0
    iget-object v2, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 6
    iget-object v2, v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-eq v2, v7, :cond_6

    iget-wide v7, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    sub-long v7, v5, v7

    iget v2, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-ltz v2, :cond_6

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    const-string v2, "Sync frame request"

    .line 7
    invoke-static {v4, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v7, "request-sync"

    .line 9
    invoke-virtual {v2, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 10
    invoke-virtual {v7, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    iput-wide v5, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 11
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter encodeTexture:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 12
    invoke-virtual {v1}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V

    const/16 v1, 0x4000

    .line 13
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_7

    goto :goto_1

    :cond_7
    move/from16 v19, v5

    move/from16 v20, v6

    goto :goto_2

    :cond_8
    :goto_1
    move/from16 v20, v5

    move/from16 v19, v6

    :goto_2
    iget-object v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 15
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    .line 16
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v0, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x41000000    # -0.5f

    .line 17
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 18
    invoke-static/range {p4 .. p4}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 20
    invoke-static {v0}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v18

    const/16 v0, 0xa

    move/from16 v1, p3

    if-ne v1, v0, :cond_9

    iput v0, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->memoryType:I

    iget-object v0, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    iget v2, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    move-object/from16 v16, v0

    move/from16 v17, p2

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, p7

    move/from16 v26, p8

    .line 21
    invoke-virtual/range {v16 .. v26}, Lio/agora/rtc/gl/GlRectDrawer;->drawRgb(I[FIIIIIIII)V

    goto :goto_3

    :cond_9
    const/16 v0, 0xb

    iput v0, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->memoryType:I

    iget-object v0, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget v1, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    iget v2, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    move-object/from16 v16, v0

    move/from16 v17, p2

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, p7

    move/from16 v26, p8

    .line 22
    invoke-virtual/range {v16 .. v26}, Lio/agora/rtc/gl/GlRectDrawer;->drawOes(I[FIIIIIIII)V

    :goto_3
    iput v3, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputFrameRotation:I

    iget-object v0, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 23
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V

    iget-object v0, v14, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 24
    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->detachCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :goto_4
    const-string v1, "encodeTexture failed"

    .line 25
    invoke-static {v4, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, "Input buffers: "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    array-length v2, v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const-string v2, "MediaCodecVideoEncoder"

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method getOutputFrameRotation()I
    .locals 1

    iget v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputFrameRotation:I

    return v0
.end method

.method initEncoder(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initParams"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;->useAsyncMode:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "MediaCodecVideoEncoder"

    .line 9
    .line 10
    const-string v1, "Init encoder start, in caller thread"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->initEncoderWithRetryIfNeeded(Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)Z

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    .line 25
    .line 26
    const-string v1, "encoderAsyncHandler"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    .line 36
    :cond_1
    new-instance v0, Landroid/os/Handler;

    .line 37
    .line 38
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, p1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$InitParameters;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    const/4 p1, 0x1

    .line 57
    return p1
.end method

.method nativeCreate(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 1
    .line 2
    iput-wide p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->nativeHandle:J

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "nativeCreate handle: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "MediaCodecVideoEncoder"

    .line 22
    .line 23
    .line 24
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method nativeDestroy()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "nativeDestroy"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 16
    .line 17
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncHandlerThread:Landroid/os/HandlerThread;

    .line 18
    .line 19
    :cond_0
    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderHandler:Landroid/os/Handler;

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->nativeHandle:J

    .line 24
    return-void
.end method

.method release()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoEncoder"

    .line 3
    .line 4
    const-string v1, "Java releaseEncoder"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->useAsyncMode:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->releaseEncoderTask()V

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputBufferLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    .line 20
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->availableInputIndexes:Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 24
    .line 25
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    iput-boolean v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecEncoderCallback;->stale:Z

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->asyncEncoderHandler:Landroid/os/Handler;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    const-string v0, "MediaCodecVideoEncoder"

    .line 41
    .line 42
    const-string v1, "release: null async handler, not initialized?"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    .line 48
    :cond_2
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder$4;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :goto_1
    return-void

    .line 56
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw v1
.end method

.method releaseOutputBuffer(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :catch_0
    move-exception p1

    .line 10
    .line 11
    const-string v1, "MediaCodecVideoEncoder"

    .line 12
    .line 13
    const-string v2, "releaseOutputBuffer failed"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return v0
.end method
