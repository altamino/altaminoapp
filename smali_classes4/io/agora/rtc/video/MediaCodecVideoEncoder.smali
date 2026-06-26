.class public Lio/agora/rtc/video/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source "MediaCodecVideoEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;,
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

.field private static final H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H264_HW_QCOM_EXCEPTION_MODELS:[Ljava/lang/String;

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

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

.field private static runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

.field private static final supportedColorList:[I

.field private static final supportedH264HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedSurfaceColorList:[I

.field private static final supportedVp8HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp9HwCodecPrefixes:[Ljava/lang/String;


# instance fields
.field private chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

.field private colorFormat:I

.field private configData:Ljava/nio/ByteBuffer;

.field private converted_bps:I

.field private drawer:Lio/agora/rtc/gl/GlRectDrawer;

.field private eglBase:Lio/agora/rtc/gl/EglBase;

.field private fos:Ljava/io/FileOutputStream;

.field private height:I

.field private inputSurface:Landroid/view/Surface;

.field private keyFrameIntervalInMsec:I

.field private lastKeyFrameTimeMs:J

.field private lastResetForQcomTimeMs:J

.field private lastSetFps:I

.field private mediaCodec:Landroid/media/MediaCodec;

.field private mediaCodecThread:Ljava/lang/Thread;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private qcomExceptionModel:Z

.field private final rotateMatrix:Landroid/graphics/Matrix;

.field private type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "OMX.qcom."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-string v5, "OMX.Intel."

    aput-object v5, v1, v4

    .line 89
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    aput-object v2, v1, v3

    .line 92
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v5, v1, [Ljava/lang/String;

    aput-object v2, v5, v3

    const-string v2, "OMX.Exynos."

    aput-object v2, v5, v4

    const-string v2, "OMX.MTK."

    aput-object v2, v5, v0

    const/4 v2, 0x3

    const-string v6, "OMX.IMG.TOPAZ."

    aput-object v6, v5, v2

    const/4 v6, 0x4

    const-string v7, "OMX.hisi."

    aput-object v7, v5, v6

    const/4 v7, 0x5

    const-string v8, "OMX.k3."

    aput-object v8, v5, v7

    const/4 v8, 0x6

    const-string v9, "OMX.amlogic."

    aput-object v9, v5, v8

    const/4 v9, 0x7

    const-string v10, "OMX.rk."

    aput-object v10, v5, v9

    .line 95
    sput-object v5, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "SAMSUNG-SGH-I337"

    aput-object v5, v1, v3

    const-string v5, "Nexus 7"

    aput-object v5, v1, v4

    const-string v5, "Nexus 4"

    aput-object v5, v1, v0

    const-string v5, "P6-C00"

    aput-object v5, v1, v2

    const-string v5, "HM 2A"

    aput-object v5, v1, v6

    const-string v5, "XT105"

    aput-object v5, v1, v7

    const-string v5, "XT109"

    aput-object v5, v1, v8

    const-string v5, "XT1060"

    aput-object v5, v1, v9

    .line 98
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v5, "mi note lte"

    aput-object v5, v1, v3

    const-string v5, "redmi note 4x"

    aput-object v5, v1, v4

    const-string v5, "1605-a01"

    aput-object v5, v1, v0

    const-string v5, "aosp on hammerhead"

    aput-object v5, v1, v2

    const-string v5, "lm-x210"

    aput-object v5, v1, v6

    const-string v5, "oppo r9s"

    aput-object v5, v1, v7

    .line 110
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_QCOM_EXCEPTION_MODELS:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "vivo y83a"

    aput-object v2, v1, v3

    const-string v2, "vivo x21i"

    aput-object v2, v1, v4

    const-string v2, "vivo X21i A"

    aput-object v2, v1, v0

    .line 118
    sput-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->MTK_NO_ADJUSTMENT_MODELS:[Ljava/lang/String;

    new-array v0, v6, [I

    .line 133
    fill-array-data v0, :array_0

    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    new-array v0, v4, [I

    const v1, 0x7f000789

    aput v1, v0, v3

    .line 139
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    return-void

    :array_0
    .array-data 4
        0x13
        0x15
        0x7fa30c00
        0x7fa30c04
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    .line 148
    iput-wide v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    const/4 v3, 0x0

    .line 149
    iput v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    .line 150
    iput-wide v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    .line 153
    iput-boolean v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 420
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 1014
    iput-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;

    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/video/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 49
    iget-object p0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method private static checkMinSDKVersion(Ljava/lang/String;Z)Z
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 754
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-string p1, "OMX.qcom."

    .line 756
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 757
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    const-string p1, "OMX.MTK."

    .line 758
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x15

    if-eqz p1, :cond_5

    .line 759
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_5
    const-string p1, "OMX.Exynos."

    .line 760
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 761
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_7
    const-string p1, "OMX.IMG.TOPAZ."

    .line 762
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 763
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_9
    const-string p1, "OMX.k3."

    .line 764
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 765
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 767
    :cond_b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_c

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method private checkOnMediaCodecThread()V
    .locals 0

    return-void
.end method

.method private convertBitRate(II)I
    .locals 3

    .line 831
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-object v1, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne v1, v2, :cond_1

    .line 832
    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    const-string v1, "OMX.rk."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    .line 833
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->baseFrameRate:I

    mul-int p1, p1, v0

    div-int/2addr p1, p2

    return p1

    :cond_0
    mul-int/lit16 p1, p1, 0x384

    .line 835
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->baseFrameRate:I

    mul-int p1, p1, v0

    div-int/2addr p1, p2

    return p1

    .line 837
    :cond_1
    iget-object p2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    const-string v0, "OMX.qcom."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    mul-int/lit16 p1, p1, 0x3b6

    return p1

    :cond_2
    mul-int/lit16 p1, p1, 0x384

    return p1
.end method

.method static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    .line 426
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createEncoder(IIIIIIIIZ)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p9

    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Java initEncode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->values()[Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    move-result-object v8

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Kbps. Fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " key interval: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "s. Encode from texture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MediaCodecVideoEncoder"

    invoke-static {v8, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iput v1, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    .line 492
    iput v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    .line 493
    iget-object v7, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-nez v7, :cond_f

    const/4 v7, 0x1

    if-ge v4, v7, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-ge v5, v7, :cond_1

    const/4 v5, 0x1

    .line 503
    :cond_1
    iput v4, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    mul-int/lit16 v9, v5, 0x3e8

    .line 504
    iput v9, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    const-wide/16 v9, 0x0

    .line 505
    iput-wide v9, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    .line 507
    invoke-static {}, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->values()[Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    move-result-object v9

    aget-object v9, v9, p1

    .line 508
    sget-object v10, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP8:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    const-string v11, "video/avc"

    const-string v12, "video/x-vnd.on2.vp9"

    const-string v13, "video/x-vnd.on2.vp8"

    const/4 v14, 0x0

    if-ne v9, v10, :cond_3

    .line 510
    sget-object v10, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    if-eqz v6, :cond_2

    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    goto :goto_0

    :cond_2
    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    :goto_0
    invoke-static {v13, v10, v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v6

    move-object v11, v13

    goto :goto_3

    .line 512
    :cond_3
    sget-object v10, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_VP9:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    if-ne v9, v10, :cond_5

    .line 514
    sget-object v10, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    goto :goto_1

    :cond_4
    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    :goto_1
    invoke-static {v12, v10, v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v6

    move-object v11, v12

    goto :goto_3

    .line 516
    :cond_5
    sget-object v10, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    if-ne v9, v10, :cond_7

    .line 518
    sget-object v10, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    if-eqz v6, :cond_6

    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    goto :goto_2

    :cond_6
    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    :goto_2
    invoke-static {v11, v10, v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v14

    move-object v11, v6

    :goto_3
    if-eqz v6, :cond_e

    .line 525
    sput-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    .line 526
    iget v10, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    iput v10, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->colorFormat:I

    .line 527
    iget-object v10, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-direct {p0, v10, v4}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->getChipProperties(Ljava/lang/String;I)Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    move-result-object v10

    iput-object v10, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    .line 528
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Color format: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->colorFormat:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0, v3, v4}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->convertBitRate(II)I

    move-result v3

    iput v3, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 530
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 531
    invoke-static {v11, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 532
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget v3, v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->highProfileMinSdkVersion:I

    if-lt v2, v3, :cond_8

    const/16 v2, 0x64

    move/from16 v3, p8

    if-ne v3, v2, :cond_8

    const-string v2, "Set high profile and level"

    .line 533
    invoke-static {v8, v2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    const-string v3, "profile"

    .line 534
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x200

    const-string v3, "level"

    .line 535
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 537
    :cond_8
    iget v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    const-string v3, "bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 538
    iget-object v2, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    const-string v3, "OMX.rk."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "bitrate-mode"

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    .line 539
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_4

    .line 540
    :cond_9
    iget-boolean v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    if-nez v2, :cond_a

    .line 541
    invoke-virtual {v1, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 543
    :cond_a
    :goto_4
    iget v2, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->colorFormat:I

    const-string v3, "color-format"

    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 544
    iget-object v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-object v3, v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v4, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const-string v10, "frame-rate"

    if-ne v3, v4, :cond_b

    move/from16 v3, p6

    .line 545
    invoke-virtual {v1, v10, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_5

    .line 547
    :cond_b
    iget v2, v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->initFrameRate:I

    invoke-virtual {v1, v10, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 549
    :goto_5
    iget-object v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-object v2, v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const-string v4, "i-frame-interval"

    if-ne v2, v3, :cond_c

    .line 550
    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_6

    :cond_c
    add-int/2addr v5, v7

    .line 552
    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 562
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v2, v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;->codecName:Ljava/lang/String;

    invoke-static {v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 564
    iput-object v9, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    .line 565
    iget-object v2, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_d

    .line 568
    invoke-virtual {v2, v1, v14, v14, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return v7

    .line 566
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can not create media encoder"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find HW encoder for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Forgot to release()?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static disableH264HwCodec()V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "H.264 encoding is disabled by application."

    .line 189
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/avc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "VP8 encoding is disabled by application."

    .line 179
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "VP9 encoding is disabled by application."

    .line 184
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static distance(FFFF)I
    .locals 2

    sub-float/2addr p2, p0

    float-to-double v0, p2

    sub-float/2addr p3, p1

    float-to-double p0, p3

    .line 678
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static do_findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 270
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    return-object v5

    :cond_0
    const/4 v3, 0x0

    .line 275
    aget v6, v2, v3

    const v7, 0x7f000789

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const-string v9, "video/avc"

    .line 278
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Model: "

    const-string v11, "MediaCodecVideoEncoder"

    if-eqz v9, :cond_2

    .line 279
    sget-object v9, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 280
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has black listed H.264 encoder."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 285
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hardware: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v9, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v10, "kirin970"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v6, :cond_3

    return-object v5

    :cond_3
    const/4 v9, 0x0

    .line 291
    :goto_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v10

    if-ge v9, v10, :cond_15

    .line 292
    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v10

    .line 293
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    :goto_2
    const/16 v16, 0x13

    const/16 v17, 0x1

    goto/16 :goto_a

    .line 297
    :cond_5
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    .line 298
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 299
    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_7
    move-object v12, v5

    :goto_4
    if-nez v12, :cond_8

    goto :goto_2

    .line 306
    :cond_8
    invoke-static {v12, v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkMinSDKVersion(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_9

    .line 307
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Check min sdk version failed, "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 311
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found candidate encoder "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    array-length v13, v1

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_b

    aget-object v15, v1, v14

    .line 316
    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_c

    if-nez v6, :cond_c

    goto :goto_2

    .line 325
    :cond_c
    sput-object v12, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    const-string v14, "OMX.amlogic."

    .line 327
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    if-eqz v6, :cond_d

    .line 329
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v0, v12, v7, v8}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    return-object v0

    .line 331
    :cond_d
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v0, v12, v4, v8}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    return-object v0

    .line 334
    :cond_e
    invoke-virtual {v10, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    .line 337
    iget-object v14, v10, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v15, v14

    const/4 v7, 0x0

    :goto_7
    const/16 v5, 0x15

    if-ge v3, v15, :cond_10

    aget v8, v14, v3

    if-ne v5, v8, :cond_f

    const/4 v7, 0x1

    .line 340
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Color: 0x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x13

    const/4 v8, 0x1

    goto :goto_7

    .line 343
    :cond_10
    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_4

    aget v8, v2, v4

    .line 344
    iget-object v14, v10, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v15, v14

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v15, :cond_14

    aget v1, v14, v5

    if-ne v1, v8, :cond_13

    const-string v2, ". Color: 0x"

    const-string v3, " : "

    const-string v4, "Found target encoder for mime "

    const/16 v5, 0x13

    if-ne v1, v5, :cond_12

    const/4 v5, 0x1

    if-ne v7, v5, :cond_12

    const-string v5, "OMX.IMG.TOPAZ."

    .line 349
    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "OMX.hisi."

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "OMX.k3."

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    const-string v1, "TOPAZ,force use COLOR_FormatYUV420SemiPlanar"

    .line 350
    invoke-static {v11, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x15

    .line 352
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v11, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v1, v12, v0, v13}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    return-object v1

    .line 356
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v11, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    invoke-direct {v0, v12, v1, v13}, Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;-><init>(Ljava/lang/String;IZ)V

    return-object v0

    :cond_13
    const/16 v1, 0x15

    const/16 v16, 0x13

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_9

    :cond_14
    const/16 v1, 0x15

    const/16 v16, 0x13

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    const/16 v5, 0x15

    goto/16 :goto_8

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    const/16 v4, 0x13

    const/4 v5, 0x0

    const v7, 0x7f000789

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_15
    move-object v1, v5

    return-object v1
.end method

.method private static findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;
    .locals 0

    .line 259
    :try_start_0
    invoke-static {p0, p1, p2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->do_findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChipProperties(Ljava/lang/String;I)Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;
    .locals 8

    const-string v0, "OMX.qcom."

    .line 771
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "MediaCodecVideoEncoder"

    if-eqz v0, :cond_1

    .line 773
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->H264_HW_QCOM_EXCEPTION_MODELS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 774
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Qcom Exception Model: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 777
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x1

    const/16 v6, 0x15

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_0
    const/4 v0, 0x0

    .line 779
    iput-boolean v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    .line 780
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v6, 0x15

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_1
    const-string v0, "OMX.MTK."

    .line 781
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 782
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MTK hardware: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mt6763"

    .line 784
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "mt6763t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 788
    :cond_2
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->MTK_NO_ADJUSTMENT_MODELS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 789
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 790
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v6, 0x15

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_3
    const-string v2, "mt6735"

    .line 792
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 794
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const v6, 0x7fffffff

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    .line 796
    :cond_4
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v6, 0x15

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    .line 786
    :cond_5
    :goto_0
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v6, 0x15

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_6
    const-string v0, "OMX.Exynos."

    .line 798
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 800
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MX4 Pro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 801
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const v6, 0x7fffffff

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    .line 803
    :cond_7
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/16 v6, 0x15

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_8
    const-string v0, "OMX.IMG.TOPAZ."

    .line 804
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 807
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "hi6250"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 808
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const v6, 0x7fffffff

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    .line 810
    :cond_9
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const v6, 0x7fffffff

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_a
    const-string v0, "OMX.hisi."

    .line 811
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 814
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const v6, 0x7fffffff

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_b
    const-string v0, "OMX.k3."

    .line 815
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 817
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/16 v6, 0x15

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_c
    const-string v0, "OMX.amlogic."

    .line 818
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "getChipProperties for amlogic"

    .line 820
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const v6, 0x7fffffff

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_d
    const-string v0, "OMX.rk."

    .line 822
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 823
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const v6, 0x7fffffff

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7

    :cond_e
    const-string v0, "getChipProperties from unsupported chip list"

    .line 825
    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    new-instance v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->NO_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    const/4 v3, 0x0

    const/16 v6, 0x17

    move-object v0, v7

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;-><init>(Ljava/lang/String;Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;ZIII)V

    return-object v7
.end method

.method public static isH264HwSupported()Z
    .locals 4

    const-string v0, "video/avc"

    const/4 v1, 0x0

    .line 206
    :try_start_0
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 207
    invoke-static {v0, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    const-string v0, "MediaCodecVideoEncoder"

    const-string v2, "isH264HwSupported failed!"

    .line 209
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isH264HwSupportedUsingTextures()Z
    .locals 4

    const-string v0, "video/avc"

    const/4 v1, 0x0

    .line 226
    :try_start_0
    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    invoke-static {v0, v2, v3}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    const-string v0, "MediaCodecVideoEncoder"

    const-string v2, "isH264HwSupportedUsingTextures failed!"

    .line 229
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isQcomHWEncoder()Z
    .locals 3

    .line 235
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecOmxName:Ljava/lang/String;

    const-string v1, "MediaCodecVideoEncoder"

    if-eqz v0, :cond_0

    const-string v2, "OMX.qcom."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Qualcomm HW encoder false"

    .line 236
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "Qualcomm HW encoder true"

    .line 239
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static isVp8HwSupported()Z
    .locals 3

    .line 195
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 196
    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVp8HwSupportedUsingTextures()Z
    .locals 3

    .line 215
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVp9HwSupported()Z
    .locals 3

    .line 200
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedColorList:[I

    .line 201
    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVp9HwSupportedUsingTextures()Z
    .locals 3

    .line 220
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    sget-object v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    invoke-static {v1, v0, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[I)Lio/agora/rtc/video/MediaCodecVideoEncoder$EncoderProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static printStackTrace()V
    .locals 5

    .line 375
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 377
    array-length v1, v0

    if-lez v1, :cond_0

    const-string v1, "MediaCodecVideoEncoder"

    const-string v2, "MediaCodecVideoEncoder stacks trace:"

    .line 378
    invoke-static {v1, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 380
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setErrorCallback(Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;)V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "Set error callback"

    .line 172
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sput-object p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    return-void
.end method

.method private setRates(II)I
    .locals 8

    .line 846
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bwe setRates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Kbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoEncoder"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_0

    .line 848
    iget v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    if-eq p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-lez p2, :cond_1

    goto :goto_1

    .line 849
    :cond_1
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    :goto_1
    iput p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    .line 850
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->convertBitRate(II)I

    move-result p1

    if-eqz v3, :cond_2

    .line 852
    :try_start_0
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-object p2, p2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v3, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-ne p2, v3, :cond_2

    .line 853
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    return v2

    .line 856
    :cond_2
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " fps"

    const-string v4, " bps(converted) "

    const-string v5, "video-bitrate"

    if-le p1, p2, :cond_3

    .line 857
    :try_start_1
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 858
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 859
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setRates up to : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 865
    :cond_3
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-object p2, p2, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->chipName:Ljava/lang/String;

    const-string v6, "OMX.qcom."

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v6, 0x61a8

    if-eqz p2, :cond_6

    .line 866
    iget-boolean p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->qcomExceptionModel:Z

    if-eqz p2, :cond_4

    :goto_2
    const/16 p2, 0x61a8

    goto :goto_3

    .line 869
    :cond_4
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    const v7, 0x30d40

    if-le p2, v7, :cond_5

    goto :goto_2

    :cond_5
    const/16 p2, 0x3a98

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 872
    :goto_3
    iget v6, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    sub-int/2addr v6, p2

    if-ge p1, v6, :cond_9

    .line 873
    iput p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    .line 875
    iget-object p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-boolean p1, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->isNeedResetWhenDownBps:Z

    if-eqz p1, :cond_8

    .line 876
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 877
    iget-wide v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    sub-long v3, p1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_7

    .line 878
    iput-wide p1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastResetForQcomTimeMs:J

    return v2

    :cond_7
    const/4 p1, 0x2

    return p1

    .line 885
    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 886
    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    invoke-virtual {p1, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 887
    iget-object p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 888
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setRates down to : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->converted_bps:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastSetFps:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return v0

    :catch_0
    move-exception p1

    const-string p2, "setRates failed"

    .line 892
    invoke-static {v1, p2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method


# virtual methods
.method dequeueInputBuffer()I
    .locals 3

    .line 900
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 902
    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecVideoEncoder"

    const-string v2, "dequeueIntputBuffer failed"

    .line 904
    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x2

    return v0
.end method

.method dequeueOutputBuffer()Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;
    .locals 10

    const-string v0, "MediaCodecVideoEncoder"

    .line 931
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 933
    :try_start_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 934
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v2, :cond_1

    .line 937
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 940
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config frame generated. Offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 943
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v2

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 944
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v7, v2

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 945
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 947
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v7, v2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 949
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    :cond_1
    move v3, v2

    if-ltz v3, :cond_5

    .line 956
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 957
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 958
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 960
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    const-string v4, "Sync frame generated"

    .line 963
    invoke-static {v0, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 965
    iget-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->type:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    sget-object v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;->VIDEO_CODEC_H264:Lio/agora/rtc/video/MediaCodecVideoEncoder$VideoCodecType;

    if-ne v4, v7, :cond_4

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Appending config frame of size "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to output buffer with offset "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 971
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v7

    .line 970
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 972
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 973
    iget-object v7, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 974
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 975
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 976
    new-instance v9, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->configData:Ljava/nio/ByteBuffer;

    .line 977
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int v8, v1, v2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJI)V

    return-object v9

    .line 981
    :cond_4
    new-instance v9, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJI)V

    return-object v9

    :cond_5
    const/4 v1, -0x3

    if-ne v3, v1, :cond_6

    .line 987
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 988
    invoke-virtual {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v1, -0x2

    if-ne v3, v1, :cond_7

    .line 990
    invoke-virtual {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->dequeueOutputBuffer()Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v1, -0x1

    if-ne v3, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 994
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dequeueOutputBuffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "dequeueOutputBuffer failed"

    .line 996
    invoke-static {v0, v2, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 997
    new-instance v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;-><init>(ILjava/nio/ByteBuffer;ZJI)V

    return-object v0
.end method

.method dumpIntoFile(Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;)V
    .locals 6

    .line 1017
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    const-string v2, "MediaCodecVideoEncoder"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "/sdcard/java_dump_video_%d_%d.h264"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1019
    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "dumpIntoFile: failed to open java_dump_video.h264"

    .line 1022
    invoke-static {v2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1027
    iget v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->index:I

    if-ltz v0, :cond_1

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump nal: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :try_start_1
    iget-object v0, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 1031
    iget-object v3, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1032
    iget-object v3, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->fos:Ljava/io/FileOutputStream;

    iget p1, p1, Lio/agora/rtc/video/MediaCodecVideoEncoder$OutputBufferInfo;->size:I

    invoke-virtual {v3, v0, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Run: 4.1 Exception "

    .line 1034
    invoke-static {v2, v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method encodeBuffer(ZIIJ)Z
    .locals 14

    move-object v1, p0

    .line 581
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 583
    iget-wide v4, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 584
    iput-wide v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    :cond_0
    const/4 v4, 0x0

    const-string v5, "MediaCodecVideoEncoder"

    if-nez p1, :cond_1

    .line 588
    :try_start_0
    iget-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-object v0, v0, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-eq v0, v6, :cond_3

    iget-wide v6, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    sub-long v6, v2, v6

    iget v0, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "Sync frame request"

    .line 594
    invoke-static {v5, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v6, "request-sync"

    .line 597
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    iget-object v6, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v6, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 599
    iput-wide v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 601
    :cond_3
    iget-object v7, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    const/4 v13, 0x0

    move/from16 v8, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :goto_1
    const-string v2, "encodeBuffer failed"

    .line 605
    invoke-static {v5, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4
.end method

.method encodeTexture(ZII[FIIIIIJ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p9

    const-string v2, "x"

    .line 615
    invoke-direct/range {p0 .. p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 617
    iget-wide v5, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 618
    iput-wide v3, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    :cond_0
    const/4 v5, 0x0

    const-string v6, "MediaCodecVideoEncoder"

    if-nez p1, :cond_1

    .line 621
    :try_start_0
    iget-object v7, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->chipProperties:Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;

    iget-object v7, v7, Lio/agora/rtc/video/MediaCodecVideoEncoder$ChipProperties;->bitrateAdjustmentType:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    sget-object v8, Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;->ACTUAL_FRAMERATE_ADJUSTMENT:Lio/agora/rtc/video/MediaCodecVideoEncoder$BitrateAdjustmentType;

    if-eq v7, v8, :cond_3

    iget-wide v7, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    sub-long v7, v3, v7

    iget v9, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->keyFrameIntervalInMsec:I

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_3

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string v7, "Sync frame request"

    .line 623
    invoke-static {v6, v7}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :cond_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "request-sync"

    .line 626
    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    iget-object v8, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8, v7}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 628
    iput-wide v3, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->lastKeyFrameTimeMs:J

    .line 630
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter encodeTexture:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "->"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v2}, Lio/agora/rtc/gl/EglBase;->makeCurrent()V

    const/16 v2, 0x4000

    .line 634
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_5

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v10, v4

    move v11, v7

    goto :goto_2

    :cond_5
    :goto_1
    move v11, v4

    move v10, v7

    .line 654
    :goto_2
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 655
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 656
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 657
    iget-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 659
    invoke-static/range {p4 .. p4}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 660
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->rotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 661
    invoke-static {v0}, Lio/agora/rtc/gl/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v9

    const/16 v0, 0xa

    move/from16 v2, p3

    if-ne v2, v0, :cond_6

    .line 664
    iget-object v7, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    iget v15, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    move/from16 v8, p2

    move/from16 v16, p7

    move/from16 v17, p8

    invoke-virtual/range {v7 .. v17}, Lio/agora/rtc/gl/GlRectDrawer;->drawRgb(I[FIIIIIIII)V

    goto :goto_3

    .line 666
    :cond_6
    iget-object v7, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->width:I

    iget v15, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->height:I

    move/from16 v8, p2

    move/from16 v16, p7

    move/from16 v17, p8

    invoke-virtual/range {v7 .. v17}, Lio/agora/rtc/gl/GlRectDrawer;->drawOes(I[FIIIIIIII)V

    .line 670
    :goto_3
    iget-object v0, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    invoke-virtual {v0}, Lio/agora/rtc/gl/EglBase;->swapBuffers()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :goto_4
    const-string v2, "encodeTexture failed"

    .line 673
    invoke-static {v6, v2, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method

.method getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 3

    .line 573
    iget-object v0, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input buffers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaCodecVideoEncoder"

    invoke-static {v2, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method initEncode(IIIIIIIILandroid/opengl/EGLContext;)Z
    .locals 15

    move-object v11, p0

    move-object/from16 v0, p9

    const-string v12, "MediaCodecVideoEncoder"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 435
    :try_start_0
    invoke-direct/range {v1 .. v10}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createEncoder(IIIIIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 437
    new-instance v1, Lio/agora/rtc/gl/EglBase14$Context;

    invoke-direct {v1, v0}, Lio/agora/rtc/gl/EglBase14$Context;-><init>(Landroid/opengl/EGLContext;)V

    .line 438
    new-instance v0, Lio/agora/rtc/gl/EglBase14;

    sget-object v2, Lio/agora/rtc/gl/EglBase;->CONFIG_RECORDABLE:[I

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/gl/EglBase14;-><init>(Lio/agora/rtc/gl/EglBase14$Context;[I)V

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 440
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 441
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    iget-object v1, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 442
    new-instance v0, Lio/agora/rtc/gl/GlRectDrawer;

    invoke-direct {v0}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 444
    :cond_1
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 445
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output buffers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_2
    const-string v0, "failed to create hardware encoder!!"

    .line 449
    invoke-static {v12, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v14

    :catch_0
    move-exception v0

    const-string v1, "failed to create hardware encoder,"

    .line 453
    invoke-static {v12, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    invoke-virtual {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->release()V

    return v14
.end method

.method initEncode(IIIIIIIILjavax/microedition/khronos/egl/EGLContext;)Z
    .locals 15

    move-object v11, p0

    move-object/from16 v0, p9

    const-string v12, "MediaCodecVideoEncoder"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 462
    :try_start_0
    invoke-direct/range {v1 .. v10}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->createEncoder(IIIIIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 464
    new-instance v1, Lio/agora/rtc/gl/EglBase10$Context;

    invoke-direct {v1, v0}, Lio/agora/rtc/gl/EglBase10$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 465
    new-instance v0, Lio/agora/rtc/gl/EglBase10;

    sget-object v2, Lio/agora/rtc/gl/EglBase;->CONFIG_RECORDABLE:[I

    invoke-direct {v0, v1, v2}, Lio/agora/rtc/gl/EglBase10;-><init>(Lio/agora/rtc/gl/EglBase10$Context;[I)V

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 467
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 468
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    iget-object v1, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lio/agora/rtc/gl/EglBase;->createSurface(Landroid/view/Surface;)V

    .line 469
    new-instance v0, Lio/agora/rtc/gl/GlRectDrawer;

    invoke-direct {v0}, Lio/agora/rtc/gl/GlRectDrawer;-><init>()V

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 471
    :cond_1
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 472
    iget-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output buffers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lio/agora/rtc/video/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_2
    const-string v0, "failed to create hardware encoder!!"

    .line 476
    invoke-static {v12, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v14

    :catch_0
    move-exception v0

    const-string v1, "failed to create hardware encoder,"

    .line 480
    invoke-static {v12, v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    invoke-virtual {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->release()V

    return v14
.end method

.method release()V
    .locals 8

    const-string v0, "MediaCodecVideoEncoder"

    const-string v1, "Java releaseEncoder"

    .line 681
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    .line 686
    new-instance v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;

    invoke-direct {v1, p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;)V

    .line 688
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 691
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 693
    new-instance v6, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;

    invoke-direct {v6, p0, v1, v2}, Lio/agora/rtc/video/MediaCodecVideoEncoder$1;-><init>(Lio/agora/rtc/video/MediaCodecVideoEncoder;Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V

    .line 712
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    const-wide/16 v6, 0xbb8

    .line 713
    invoke-static {v2, v6, v7}, Lio/agora/rtc/utils/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Media encoder release timeout"

    .line 714
    invoke-static {v0, v2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 717
    :cond_0
    iput-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    .line 719
    :cond_1
    iput-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    .line 720
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    if-eqz v2, :cond_2

    .line 721
    invoke-virtual {v2}, Lio/agora/rtc/gl/GlRectDrawer;->release()V

    .line 722
    iput-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->drawer:Lio/agora/rtc/gl/GlRectDrawer;

    .line 724
    :cond_2
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    if-eqz v2, :cond_3

    .line 725
    invoke-virtual {v2}, Lio/agora/rtc/gl/EglBase;->release()V

    .line 726
    iput-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->eglBase:Lio/agora/rtc/gl/EglBase;

    .line 728
    :cond_3
    iget-object v2, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    if-eqz v2, :cond_4

    .line 729
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 730
    iput-object v4, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    .line 732
    :cond_4
    sput-object v4, Lio/agora/rtc/video/MediaCodecVideoEncoder;->runningInstance:Lio/agora/rtc/video/MediaCodecVideoEncoder;

    if-eqz v5, :cond_6

    .line 734
    sget v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    add-int/2addr v1, v3

    sput v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    .line 735
    sget-object v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    if-eqz v1, :cond_5

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke codec error callback. Errors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    sget-object v0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->errorCallback:Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;

    sget v1, Lio/agora/rtc/video/MediaCodecVideoEncoder;->codecErrors:I

    invoke-interface {v0, v1}, Lio/agora/rtc/video/MediaCodecVideoEncoder$MediaCodecVideoEncoderErrorCallback;->onMediaCodecVideoEncoderCriticalError(I)V

    .line 739
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Media encoder release timeout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_6
    iget-object v2, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    if-nez v2, :cond_7

    const-string v1, "Java releaseEncoder done"

    .line 749
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 744
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 745
    iget-object v1, v1, Lio/agora/rtc/video/MediaCodecVideoEncoder$1CaughtException;->e:Ljava/lang/Exception;

    .line 746
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 745
    invoke-static {v1, v2}, Lio/agora/rtc/utils/ThreadUtils;->concatStackTraces([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 747
    throw v0
.end method

.method releaseOutputBuffer(I)Z
    .locals 3

    .line 1004
    invoke-direct {p0}, Lio/agora/rtc/video/MediaCodecVideoEncoder;->checkOnMediaCodecThread()V

    const/4 v0, 0x0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/video/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "MediaCodecVideoEncoder"

    const-string v2, "releaseOutputBuffer failed"

    .line 1009
    invoke-static {v1, v2, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
