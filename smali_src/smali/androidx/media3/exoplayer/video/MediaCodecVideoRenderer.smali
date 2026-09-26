.class public Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final HEVC_MAX_INPUT_SIZE_THRESHOLD:I = 0x200000

.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final TUNNELING_EOS_PRESENTATION_TIME_US:J = 0x7fffffffffffffffL

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private decodedVideoSize:Landroidx/media3/common/VideoSize;

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private displaySurface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field private haveReportedFirstFrameRenderedForCurrentSurface:Z

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastBufferPresentationTimeUs:J

.field private lastFrameReleaseTimeNs:J

.field private lastRenderRealtimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Landroidx/media3/common/VideoSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private scalingMode:I

.field private totalVideoFrameProcessingOffsetUs:J

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFrameProcessingOffsetCount:I

.field private final videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 11
    .param p7    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 5
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V
    .locals 7
    .param p7    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move/from16 v5, p10

    .line 6
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V

    move-wide v0, p4

    iput-wide v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    move/from16 v0, p9

    iput v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 8
    new-instance v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 9
    new-instance v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    move-object v2, p7

    move-object v3, p8

    invoke-direct {v0, p7, p8}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 10
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 11
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->w1()Z

    move-result v0

    iput-boolean v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x1

    iput v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 12
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    const/4 v0, 0x0

    iput v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 11
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    const/4 v6, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 11
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public static A1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 9

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    .line 3
    .line 4
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    .line 5
    const/4 v2, -0x1

    .line 6
    .line 7
    if-eq v0, v2, :cond_d

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v4, "video/dolby-vision"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    const-string/jumbo v5, "video/avc"

    .line 24
    const/4 v6, 0x1

    .line 25
    .line 26
    .line 27
    const-string/jumbo v7, "video/hevc"

    .line 28
    const/4 v8, 0x2

    .line 29
    .line 30
    if-eqz v4, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->r(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result p1

    .line 45
    .line 46
    const/16 v3, 0x200

    .line 47
    .line 48
    if-eq p1, v3, :cond_1

    .line 49
    .line 50
    if-eq p1, v6, :cond_1

    .line 51
    .line 52
    if-ne p1, v8, :cond_2

    .line 53
    :cond_1
    move-object v3, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move-object v3, v7

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 62
    move-result p1

    .line 63
    const/4 v4, 0x4

    .line 64
    .line 65
    .line 66
    sparse-switch p1, :sswitch_data_0

    .line 67
    :goto_1
    move v6, v2

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :sswitch_0
    const-string/jumbo p1, "video/x-vnd.on2.vp9"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/4 v6, 0x6

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :sswitch_1
    const-string/jumbo p1, "video/x-vnd.on2.vp8"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const/4 v6, 0x5

    .line 92
    goto :goto_2

    .line 93
    .line 94
    .line 95
    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p1

    .line 97
    .line 98
    if-nez p1, :cond_6

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    move v6, v4

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :sswitch_3
    const-string/jumbo p1, "video/mp4v-es"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p1

    .line 109
    .line 110
    if-nez p1, :cond_7

    .line 111
    goto :goto_1

    .line 112
    :cond_7
    const/4 v6, 0x3

    .line 113
    goto :goto_2

    .line 114
    .line 115
    .line 116
    :sswitch_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result p1

    .line 118
    .line 119
    if-nez p1, :cond_8

    .line 120
    goto :goto_1

    .line 121
    :cond_8
    move v6, v8

    .line 122
    goto :goto_2

    .line 123
    .line 124
    .line 125
    :sswitch_5
    const-string/jumbo p1, "video/av01"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result p1

    .line 130
    .line 131
    if-nez p1, :cond_a

    .line 132
    goto :goto_1

    .line 133
    .line 134
    .line 135
    :sswitch_6
    const-string/jumbo p1, "video/3gpp"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p1

    .line 140
    .line 141
    if-nez p1, :cond_9

    .line 142
    goto :goto_1

    .line 143
    :cond_9
    const/4 v6, 0x0

    .line 144
    .line 145
    .line 146
    :cond_a
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 147
    return v2

    .line 148
    :pswitch_0
    mul-int/2addr v0, v1

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1(II)I

    .line 152
    move-result p0

    .line 153
    return p0

    .line 154
    .line 155
    :pswitch_1
    sget-object p1, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 156
    .line 157
    const-string v3, "BRAVIA 4K 2015"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v3

    .line 162
    .line 163
    if-nez v3, :cond_c

    .line 164
    .line 165
    const-string v3, "Amazon"

    .line 166
    .line 167
    sget-object v4, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v3

    .line 172
    .line 173
    if-eqz v3, :cond_b

    .line 174
    .line 175
    const-string v3, "KFSOWI"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result v3

    .line 180
    .line 181
    if-nez v3, :cond_c

    .line 182
    .line 183
    const-string v3, "AFTS"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result p1

    .line 188
    .line 189
    if-eqz p1, :cond_b

    .line 190
    .line 191
    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    .line 192
    .line 193
    if-eqz p0, :cond_b

    .line 194
    goto :goto_3

    .line 195
    .line 196
    :cond_b
    const/16 p0, 0x10

    .line 197
    .line 198
    .line 199
    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->l(II)I

    .line 200
    move-result p1

    .line 201
    .line 202
    .line 203
    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->l(II)I

    .line 204
    move-result p0

    .line 205
    mul-int/2addr p1, p0

    .line 206
    .line 207
    mul-int/lit16 p1, p1, 0x100

    .line 208
    .line 209
    .line 210
    invoke-static {p1, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1(II)I

    .line 211
    move-result p0

    .line 212
    return p0

    .line 213
    :cond_c
    :goto_3
    return v2

    .line 214
    :pswitch_2
    mul-int/2addr v0, v1

    .line 215
    .line 216
    .line 217
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1(II)I

    .line 218
    move-result p0

    .line 219
    .line 220
    const/high16 p1, 0x200000

    .line 221
    .line 222
    .line 223
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 224
    move-result p0

    .line 225
    return p0

    .line 226
    :pswitch_3
    mul-int/2addr v0, v1

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->F1(II)I

    .line 230
    move-result p0

    .line 231
    return p0

    .line 232
    :cond_d
    :goto_4
    return v2

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static B1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)Landroid/graphics/Point;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    .line 3
    .line 4
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    const/4 v3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v2

    .line 11
    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    move v4, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v4, v1

    .line 16
    .line 17
    :goto_1
    if-eqz v3, :cond_2

    .line 18
    move v0, v1

    .line 19
    :cond_2
    int-to-float v1, v0

    .line 20
    int-to-float v5, v4

    .line 21
    div-float/2addr v1, v5

    .line 22
    .line 23
    sget-object v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    .line 24
    array-length v6, v5

    .line 25
    :goto_2
    const/4 v7, 0x0

    .line 26
    .line 27
    if-ge v2, v6, :cond_a

    .line 28
    .line 29
    aget v8, v5, v2

    .line 30
    int-to-float v9, v8

    .line 31
    mul-float/2addr v9, v1

    .line 32
    float-to-int v9, v9

    .line 33
    .line 34
    if-le v8, v4, :cond_a

    .line 35
    .line 36
    if-gt v9, v0, :cond_3

    .line 37
    goto :goto_7

    .line 38
    .line 39
    :cond_3
    sget v10, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 40
    .line 41
    const/16 v11, 0x15

    .line 42
    .line 43
    if-lt v10, v11, :cond_6

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    move v7, v9

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v7, v8

    .line 49
    .line 50
    :goto_3
    if-eqz v3, :cond_5

    .line 51
    goto :goto_4

    .line 52
    :cond_5
    move v8, v9

    .line 53
    .line 54
    .line 55
    :goto_4
    invoke-virtual {p0, v7, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->c(II)Landroid/graphics/Point;

    .line 56
    move-result-object v7

    .line 57
    .line 58
    iget v8, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 59
    .line 60
    iget v9, v7, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    iget v10, v7, Landroid/graphics/Point;->y:I

    .line 63
    float-to-double v11, v8

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v9, v10, v11, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->w(IID)Z

    .line 67
    move-result v8

    .line 68
    .line 69
    if-eqz v8, :cond_9

    .line 70
    return-object v7

    .line 71
    .line 72
    :cond_6
    const/16 v10, 0x10

    .line 73
    .line 74
    .line 75
    :try_start_0
    invoke-static {v8, v10}, Landroidx/media3/common/util/Util;->l(II)I

    .line 76
    move-result v8

    .line 77
    mul-int/2addr v8, v10

    .line 78
    .line 79
    .line 80
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->l(II)I

    .line 81
    move-result v9

    .line 82
    mul-int/2addr v9, v10

    .line 83
    .line 84
    mul-int v10, v8, v9

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->P()I

    .line 88
    move-result v11

    .line 89
    .line 90
    if-gt v10, v11, :cond_9

    .line 91
    .line 92
    new-instance p0, Landroid/graphics/Point;

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    move p1, v9

    .line 96
    goto :goto_5

    .line 97
    :cond_7
    move p1, v8

    .line 98
    .line 99
    :goto_5
    if-eqz v3, :cond_8

    .line 100
    goto :goto_6

    .line 101
    :cond_8
    move v8, v9

    .line 102
    .line 103
    .line 104
    :goto_6
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object p0

    .line 106
    .line 107
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_2

    .line 109
    :catch_0
    :cond_a
    :goto_7
    return-object v7
.end method

.method private static D1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
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
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    if-lt v1, v2, :cond_1

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "video/dolby-vision"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->a(Landroid/content/Context;)Z

    .line 28
    move-result p0

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->n(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    return-object p0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->v(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method protected static E1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    iget-object p0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    .line 15
    :goto_0
    if-ge v0, p0, :cond_0

    .line 16
    .line 17
    iget-object v2, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, [B

    .line 24
    array-length v2, v2

    .line 25
    add-int/2addr v1, v2

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget p0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    .line 31
    add-int/2addr p0, v1

    .line 32
    return p0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method private static F1(II)I
    .locals 0

    .line 1
    .line 2
    mul-int/lit8 p0, p0, 0x3

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    div-int/2addr p0, p1

    .line 6
    return p0
.end method

.method private static H1(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static I1(J)Z
    .locals 2

    .line 1
    const-wide/32 v0, -0x7a120

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private K1()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 11
    .line 12
    sub-long v2, v0, v2

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 15
    .line 16
    iget v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->n(IJ)V

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 23
    .line 24
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 25
    :cond_0
    return-void
.end method

.method private M1()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 7
    .line 8
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->B(JI)V

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 19
    :cond_0
    return-void
.end method

.method private N1(Landroidx/media3/common/VideoSize;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->D(Landroidx/media3/common/VideoSize;)V

    .line 24
    :cond_0
    return-void
.end method

.method private O1()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->A(Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void
.end method

.method private P1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->D(Landroidx/media3/common/VideoSize;)V

    .line 10
    :cond_0
    return-void
.end method

.method private Q1(JJLandroidx/media3/common/Format;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->f0()Landroid/media/MediaFormat;

    .line 8
    move-result-object v6

    .line 9
    move-wide v1, p1

    .line 10
    move-wide v3, p3

    .line 11
    move-object v5, p5

    .line 12
    .line 13
    .line 14
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->e(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 15
    :cond_0
    return-void
.end method

.method private S1()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->S0()V

    .line 4
    return-void
.end method

.method private T1()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    .line 13
    .line 14
    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 15
    return-void
.end method

.method private V1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/common/Format;IJZ)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p4, p5, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->d(JJ)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    const-wide/16 v2, 0x3e8

    .line 21
    mul-long/2addr v0, v2

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    :goto_0
    if-eqz p6, :cond_1

    .line 29
    move-object v2, p0

    .line 30
    move-wide v3, p4

    .line 31
    move-wide v5, v0

    .line 32
    move-object v7, p2

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1(JJLandroidx/media3/common/Format;)V

    .line 36
    .line 37
    :cond_1
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 38
    .line 39
    const/16 p6, 0x15

    .line 40
    .line 41
    if-lt p2, p6, :cond_2

    .line 42
    move-object v2, p0

    .line 43
    move-object v3, p1

    .line 44
    move v4, p3

    .line 45
    move-wide v5, p4

    .line 46
    move-wide v7, v0

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0, p1, p3, p4, p5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 54
    :goto_1
    return-void
.end method

.method private static X1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "hdr10-plus-info"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->b(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method

.method private Y1()V
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    .line 15
    add-long/2addr v0, v2

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    .line 23
    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 24
    return-void
.end method

.method private Z1(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Landroid/view/Surface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/view/Surface;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    :goto_0
    if-nez p1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    move-object p1, v0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f2(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 31
    .line 32
    iget-boolean v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->e(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 39
    .line 40
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 41
    .line 42
    if-eq v0, p1, :cond_7

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->m(Landroid/view/Surface;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .line 52
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 73
    .line 74
    const/16 v3, 0x17

    .line 75
    .line 76
    if-lt v2, v3, :cond_3

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 81
    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->a2(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    .line 86
    goto :goto_2

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t0()V

    .line 93
    .line 94
    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    .line 95
    .line 96
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 97
    .line 98
    if-eq p1, v1, :cond_6

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P1()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1()V

    .line 105
    const/4 v1, 0x2

    .line 106
    .line 107
    if-ne v0, v1, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y1()V

    .line 111
    .line 112
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 116
    move-result v0

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 121
    .line 122
    sget-object v1, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->p(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    .line 126
    goto :goto_3

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1()V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1()V

    .line 133
    .line 134
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 138
    move-result p1

    .line 139
    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->b()V

    .line 146
    goto :goto_3

    .line 147
    .line 148
    :cond_7
    if-eqz p1, :cond_8

    .line 149
    .line 150
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 151
    .line 152
    if-eq p1, v0, :cond_8

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->P1()V

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->O1()V

    .line 159
    :cond_8
    :goto_3
    return-void
.end method

.method private d2(JJ)Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    move v0, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    .line 14
    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    :goto_1
    move v1, v3

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    move-result-wide v4

    .line 37
    .line 38
    const-wide/16 v6, 0x3e8

    .line 39
    mul-long/2addr v4, v6

    .line 40
    .line 41
    iget-wide v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 42
    sub-long/2addr v4, v6

    .line 43
    .line 44
    iget-wide v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    cmp-long v6, v6, v8

    .line 52
    .line 53
    if-nez v6, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()J

    .line 57
    move-result-wide v6

    .line 58
    .line 59
    cmp-long p1, p1, v6

    .line 60
    .line 61
    if-ltz p1, :cond_5

    .line 62
    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p3, p4, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->e2(JJ)Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    :cond_4
    move v2, v3

    .line 73
    :cond_5
    return v2
.end method

.method static synthetic e1()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t1()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static synthetic f1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method private f2(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->c(Landroid/content/Context;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    :cond_0
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method static synthetic g1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->j(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic h1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJJJZ)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q1(JJJJZ)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic i1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d2(JJ)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic j1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 3
    return-wide v0
.end method

.method static synthetic k1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJLandroidx/media3/common/Format;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1(JJLandroidx/media3/common/Format;)V

    .line 4
    return-void
.end method

.method static synthetic l1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1(Landroidx/media3/common/VideoSize;)V

    .line 4
    return-void
.end method

.method static synthetic m1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 3
    return-wide p1
.end method

.method static synthetic n1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic o1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->S1()V

    .line 4
    return-void
.end method

.method static synthetic p1(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->T0(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 4
    return-void
.end method

.method private q1(JJJJZ)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->j0()F

    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    sub-long/2addr p7, p1

    .line 7
    long-to-double p1, p7

    .line 8
    div-double/2addr p1, v0

    .line 9
    double-to-long p1, p1

    .line 10
    .line 11
    if-eqz p9, :cond_0

    .line 12
    sub-long/2addr p5, p3

    .line 13
    sub-long/2addr p1, p5

    .line 14
    :cond_0
    return-wide p1
.end method

.method private r1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 4
    .line 5
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x17

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    .line 25
    .line 26
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 27
    :cond_0
    return-void
.end method

.method private s1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    return-void
.end method

.method private static t1()Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static v1(Landroid/media/MediaFormat;I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "tunneled-playback"

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 8
    .line 9
    const-string v0, "audio-session-id"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 13
    return-void
.end method

.method private static w1()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "NVIDIA"

    .line 3
    .line 4
    sget-object v1, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static y1()Z
    .locals 16

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, -0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v9, 0x1

    .line 12
    .line 13
    const/16 v10, 0x1c

    .line 14
    .line 15
    if-gt v0, v10, :cond_8

    .line 16
    .line 17
    sget-object v11, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 24
    move-result v12

    .line 25
    .line 26
    .line 27
    sparse-switch v12, :sswitch_data_0

    .line 28
    :goto_0
    move v11, v7

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_0
    const-string v12, "machuca"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v11

    .line 37
    .line 38
    if-nez v11, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v11, v1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :sswitch_1
    const-string/jumbo v12, "once"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v11

    .line 49
    .line 50
    if-nez v11, :cond_1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v11, v2

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :sswitch_2
    const-string v12, "magnolia"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v11

    .line 60
    .line 61
    if-nez v11, :cond_2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v11, v3

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :sswitch_3
    const-string v12, "aquaman"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v11

    .line 71
    .line 72
    if-nez v11, :cond_3

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    move v11, v4

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :sswitch_4
    const-string/jumbo v12, "oneday"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v11

    .line 83
    .line 84
    if-nez v11, :cond_4

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    move v11, v5

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :sswitch_5
    const-string v12, "dangalUHD"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v11

    .line 94
    .line 95
    if-nez v11, :cond_5

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    move v11, v6

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :sswitch_6
    const-string v12, "dangalFHD"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v11

    .line 105
    .line 106
    if-nez v11, :cond_6

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    move v11, v9

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :sswitch_7
    const-string v12, "dangal"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v11

    .line 116
    .line 117
    if-nez v11, :cond_7

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    move v11, v8

    .line 120
    .line 121
    .line 122
    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 123
    goto :goto_2

    .line 124
    :pswitch_0
    return v9

    .line 125
    .line 126
    :cond_8
    :goto_2
    const/16 v11, 0x1b

    .line 127
    .line 128
    if-gt v0, v11, :cond_9

    .line 129
    .line 130
    const-string v12, "HWEML"

    .line 131
    .line 132
    sget-object v13, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v12

    .line 137
    .line 138
    if-eqz v12, :cond_9

    .line 139
    return v9

    .line 140
    .line 141
    :cond_9
    sget-object v12, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 148
    move-result v13

    .line 149
    .line 150
    const/16 v14, 0x8

    .line 151
    .line 152
    .line 153
    sparse-switch v13, :sswitch_data_1

    .line 154
    :goto_3
    move v13, v7

    .line 155
    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :sswitch_8
    const-string v13, "AFTEUFF014"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v13

    .line 163
    .line 164
    if-nez v13, :cond_a

    .line 165
    goto :goto_3

    .line 166
    :cond_a
    move v13, v14

    .line 167
    .line 168
    goto/16 :goto_4

    .line 169
    .line 170
    :sswitch_9
    const-string v13, "AFTSO001"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v13

    .line 175
    .line 176
    if-nez v13, :cond_b

    .line 177
    goto :goto_3

    .line 178
    :cond_b
    move v13, v1

    .line 179
    goto :goto_4

    .line 180
    .line 181
    :sswitch_a
    const-string v13, "AFTEU014"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v13

    .line 186
    .line 187
    if-nez v13, :cond_c

    .line 188
    goto :goto_3

    .line 189
    :cond_c
    move v13, v2

    .line 190
    goto :goto_4

    .line 191
    .line 192
    :sswitch_b
    const-string v13, "AFTEU011"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v13

    .line 197
    .line 198
    if-nez v13, :cond_d

    .line 199
    goto :goto_3

    .line 200
    :cond_d
    move v13, v3

    .line 201
    goto :goto_4

    .line 202
    .line 203
    :sswitch_c
    const-string v13, "AFTR"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v13

    .line 208
    .line 209
    if-nez v13, :cond_e

    .line 210
    goto :goto_3

    .line 211
    :cond_e
    move v13, v4

    .line 212
    goto :goto_4

    .line 213
    .line 214
    :sswitch_d
    const-string v13, "AFTN"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v13

    .line 219
    .line 220
    if-nez v13, :cond_f

    .line 221
    goto :goto_3

    .line 222
    :cond_f
    move v13, v5

    .line 223
    goto :goto_4

    .line 224
    .line 225
    :sswitch_e
    const-string v13, "AFTA"

    .line 226
    .line 227
    .line 228
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v13

    .line 230
    .line 231
    if-nez v13, :cond_10

    .line 232
    goto :goto_3

    .line 233
    :cond_10
    move v13, v6

    .line 234
    goto :goto_4

    .line 235
    .line 236
    :sswitch_f
    const-string v13, "AFTKMST12"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v13

    .line 241
    .line 242
    if-nez v13, :cond_11

    .line 243
    goto :goto_3

    .line 244
    :cond_11
    move v13, v9

    .line 245
    goto :goto_4

    .line 246
    .line 247
    :sswitch_10
    const-string v13, "AFTJMST12"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v13

    .line 252
    .line 253
    if-nez v13, :cond_12

    .line 254
    goto :goto_3

    .line 255
    :cond_12
    move v13, v8

    .line 256
    .line 257
    .line 258
    :goto_4
    packed-switch v13, :pswitch_data_1

    .line 259
    .line 260
    const/16 v13, 0x1a

    .line 261
    .line 262
    if-gt v0, v13, :cond_a0

    .line 263
    .line 264
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 271
    move-result v15

    .line 272
    .line 273
    .line 274
    sparse-switch v15, :sswitch_data_2

    .line 275
    :goto_5
    move v1, v7

    .line 276
    .line 277
    goto/16 :goto_6

    .line 278
    .line 279
    :sswitch_11
    const-string v1, "HWWAS-H"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    move-result v0

    .line 284
    .line 285
    if-nez v0, :cond_13

    .line 286
    goto :goto_5

    .line 287
    .line 288
    :cond_13
    const/16 v1, 0x8b

    .line 289
    .line 290
    goto/16 :goto_6

    .line 291
    .line 292
    :sswitch_12
    const-string v1, "HWVNS-H"

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    move-result v0

    .line 297
    .line 298
    if-nez v0, :cond_14

    .line 299
    goto :goto_5

    .line 300
    .line 301
    :cond_14
    const/16 v1, 0x8a

    .line 302
    .line 303
    goto/16 :goto_6

    .line 304
    .line 305
    :sswitch_13
    const-string v1, "ELUGA_Prim"

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v0

    .line 310
    .line 311
    if-nez v0, :cond_15

    .line 312
    goto :goto_5

    .line 313
    .line 314
    :cond_15
    const/16 v1, 0x89

    .line 315
    .line 316
    goto/16 :goto_6

    .line 317
    .line 318
    :sswitch_14
    const-string v1, "ELUGA_Note"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result v0

    .line 323
    .line 324
    if-nez v0, :cond_16

    .line 325
    goto :goto_5

    .line 326
    .line 327
    :cond_16
    const/16 v1, 0x88

    .line 328
    .line 329
    goto/16 :goto_6

    .line 330
    .line 331
    :sswitch_15
    const-string v1, "ASUS_X00AD_2"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    move-result v0

    .line 336
    .line 337
    if-nez v0, :cond_17

    .line 338
    goto :goto_5

    .line 339
    .line 340
    :cond_17
    const/16 v1, 0x87

    .line 341
    .line 342
    goto/16 :goto_6

    .line 343
    .line 344
    :sswitch_16
    const-string v1, "HWCAM-H"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    move-result v0

    .line 349
    .line 350
    if-nez v0, :cond_18

    .line 351
    goto :goto_5

    .line 352
    .line 353
    :cond_18
    const/16 v1, 0x86

    .line 354
    .line 355
    goto/16 :goto_6

    .line 356
    .line 357
    :sswitch_17
    const-string v1, "HWBLN-H"

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    move-result v0

    .line 362
    .line 363
    if-nez v0, :cond_19

    .line 364
    goto :goto_5

    .line 365
    .line 366
    :cond_19
    const/16 v1, 0x85

    .line 367
    .line 368
    goto/16 :goto_6

    .line 369
    .line 370
    :sswitch_18
    const-string v1, "DM-01K"

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    move-result v0

    .line 375
    .line 376
    if-nez v0, :cond_1a

    .line 377
    goto :goto_5

    .line 378
    .line 379
    :cond_1a
    const/16 v1, 0x84

    .line 380
    .line 381
    goto/16 :goto_6

    .line 382
    .line 383
    :sswitch_19
    const-string v1, "BRAVIA_ATV3_4K"

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    move-result v0

    .line 388
    .line 389
    if-nez v0, :cond_1b

    .line 390
    goto :goto_5

    .line 391
    .line 392
    :cond_1b
    const/16 v1, 0x83

    .line 393
    .line 394
    goto/16 :goto_6

    .line 395
    .line 396
    :sswitch_1a
    const-string v1, "Infinix-X572"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    move-result v0

    .line 401
    .line 402
    if-nez v0, :cond_1c

    .line 403
    .line 404
    goto/16 :goto_5

    .line 405
    .line 406
    :cond_1c
    const/16 v1, 0x82

    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    :sswitch_1b
    const-string v1, "PB2-670M"

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    move-result v0

    .line 415
    .line 416
    if-nez v0, :cond_1d

    .line 417
    .line 418
    goto/16 :goto_5

    .line 419
    .line 420
    :cond_1d
    const/16 v1, 0x81

    .line 421
    .line 422
    goto/16 :goto_6

    .line 423
    .line 424
    .line 425
    :sswitch_1c
    const-string/jumbo v1, "santoni"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result v0

    .line 430
    .line 431
    if-nez v0, :cond_1e

    .line 432
    .line 433
    goto/16 :goto_5

    .line 434
    .line 435
    :cond_1e
    const/16 v1, 0x80

    .line 436
    .line 437
    goto/16 :goto_6

    .line 438
    .line 439
    :sswitch_1d
    const-string v1, "iball8735_9806"

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    move-result v0

    .line 444
    .line 445
    if-nez v0, :cond_1f

    .line 446
    .line 447
    goto/16 :goto_5

    .line 448
    .line 449
    :cond_1f
    const/16 v1, 0x7f

    .line 450
    .line 451
    goto/16 :goto_6

    .line 452
    .line 453
    :sswitch_1e
    const-string v1, "CPH1715"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    move-result v0

    .line 458
    .line 459
    if-nez v0, :cond_20

    .line 460
    .line 461
    goto/16 :goto_5

    .line 462
    .line 463
    :cond_20
    const/16 v1, 0x7e

    .line 464
    .line 465
    goto/16 :goto_6

    .line 466
    .line 467
    :sswitch_1f
    const-string v1, "CPH1609"

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v0

    .line 472
    .line 473
    if-nez v0, :cond_21

    .line 474
    .line 475
    goto/16 :goto_5

    .line 476
    .line 477
    :cond_21
    const/16 v1, 0x7d

    .line 478
    .line 479
    goto/16 :goto_6

    .line 480
    .line 481
    .line 482
    :sswitch_20
    const-string/jumbo v1, "woods_f"

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    move-result v0

    .line 487
    .line 488
    if-nez v0, :cond_22

    .line 489
    .line 490
    goto/16 :goto_5

    .line 491
    .line 492
    :cond_22
    const/16 v1, 0x7c

    .line 493
    .line 494
    goto/16 :goto_6

    .line 495
    .line 496
    :sswitch_21
    const-string v1, "htc_e56ml_dtul"

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    move-result v0

    .line 501
    .line 502
    if-nez v0, :cond_23

    .line 503
    .line 504
    goto/16 :goto_5

    .line 505
    .line 506
    :cond_23
    const/16 v1, 0x7b

    .line 507
    .line 508
    goto/16 :goto_6

    .line 509
    .line 510
    :sswitch_22
    const-string v1, "EverStar_S"

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    move-result v0

    .line 515
    .line 516
    if-nez v0, :cond_24

    .line 517
    .line 518
    goto/16 :goto_5

    .line 519
    .line 520
    :cond_24
    const/16 v1, 0x7a

    .line 521
    .line 522
    goto/16 :goto_6

    .line 523
    .line 524
    :sswitch_23
    const-string v1, "hwALE-H"

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    move-result v0

    .line 529
    .line 530
    if-nez v0, :cond_25

    .line 531
    .line 532
    goto/16 :goto_5

    .line 533
    .line 534
    :cond_25
    const/16 v1, 0x79

    .line 535
    .line 536
    goto/16 :goto_6

    .line 537
    .line 538
    :sswitch_24
    const-string v1, "itel_S41"

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    move-result v0

    .line 543
    .line 544
    if-nez v0, :cond_26

    .line 545
    .line 546
    goto/16 :goto_5

    .line 547
    .line 548
    :cond_26
    const/16 v1, 0x78

    .line 549
    .line 550
    goto/16 :goto_6

    .line 551
    .line 552
    :sswitch_25
    const-string v1, "LS-5017"

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    move-result v0

    .line 557
    .line 558
    if-nez v0, :cond_27

    .line 559
    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :cond_27
    const/16 v1, 0x77

    .line 563
    .line 564
    goto/16 :goto_6

    .line 565
    .line 566
    .line 567
    :sswitch_26
    const-string/jumbo v1, "panell_d"

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    move-result v0

    .line 572
    .line 573
    if-nez v0, :cond_28

    .line 574
    .line 575
    goto/16 :goto_5

    .line 576
    .line 577
    :cond_28
    const/16 v1, 0x76

    .line 578
    .line 579
    goto/16 :goto_6

    .line 580
    .line 581
    :sswitch_27
    const-string v1, "j2xlteins"

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 585
    move-result v0

    .line 586
    .line 587
    if-nez v0, :cond_29

    .line 588
    .line 589
    goto/16 :goto_5

    .line 590
    .line 591
    :cond_29
    const/16 v1, 0x75

    .line 592
    .line 593
    goto/16 :goto_6

    .line 594
    .line 595
    :sswitch_28
    const-string v1, "A7000plus"

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    move-result v0

    .line 600
    .line 601
    if-nez v0, :cond_2a

    .line 602
    .line 603
    goto/16 :goto_5

    .line 604
    .line 605
    :cond_2a
    const/16 v1, 0x74

    .line 606
    .line 607
    goto/16 :goto_6

    .line 608
    .line 609
    :sswitch_29
    const-string v1, "manning"

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    move-result v0

    .line 614
    .line 615
    if-nez v0, :cond_2b

    .line 616
    .line 617
    goto/16 :goto_5

    .line 618
    .line 619
    :cond_2b
    const/16 v1, 0x73

    .line 620
    .line 621
    goto/16 :goto_6

    .line 622
    .line 623
    :sswitch_2a
    const-string v1, "GIONEE_WBL7519"

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    move-result v0

    .line 628
    .line 629
    if-nez v0, :cond_2c

    .line 630
    .line 631
    goto/16 :goto_5

    .line 632
    .line 633
    :cond_2c
    const/16 v1, 0x72

    .line 634
    .line 635
    goto/16 :goto_6

    .line 636
    .line 637
    :sswitch_2b
    const-string v1, "GIONEE_WBL7365"

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    move-result v0

    .line 642
    .line 643
    if-nez v0, :cond_2d

    .line 644
    .line 645
    goto/16 :goto_5

    .line 646
    .line 647
    :cond_2d
    const/16 v1, 0x71

    .line 648
    .line 649
    goto/16 :goto_6

    .line 650
    .line 651
    :sswitch_2c
    const-string v1, "GIONEE_WBL5708"

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    move-result v0

    .line 656
    .line 657
    if-nez v0, :cond_2e

    .line 658
    .line 659
    goto/16 :goto_5

    .line 660
    .line 661
    :cond_2e
    const/16 v1, 0x70

    .line 662
    .line 663
    goto/16 :goto_6

    .line 664
    .line 665
    :sswitch_2d
    const-string v1, "QM16XE_U"

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    move-result v0

    .line 670
    .line 671
    if-nez v0, :cond_2f

    .line 672
    .line 673
    goto/16 :goto_5

    .line 674
    .line 675
    :cond_2f
    const/16 v1, 0x6f

    .line 676
    .line 677
    goto/16 :goto_6

    .line 678
    .line 679
    :sswitch_2e
    const-string v1, "Pixi5-10_4G"

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    move-result v0

    .line 684
    .line 685
    if-nez v0, :cond_30

    .line 686
    .line 687
    goto/16 :goto_5

    .line 688
    .line 689
    :cond_30
    const/16 v1, 0x6e

    .line 690
    .line 691
    goto/16 :goto_6

    .line 692
    .line 693
    :sswitch_2f
    const-string v1, "TB3-850M"

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    move-result v0

    .line 698
    .line 699
    if-nez v0, :cond_31

    .line 700
    .line 701
    goto/16 :goto_5

    .line 702
    .line 703
    :cond_31
    const/16 v1, 0x6d

    .line 704
    .line 705
    goto/16 :goto_6

    .line 706
    .line 707
    :sswitch_30
    const-string v1, "TB3-850F"

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    move-result v0

    .line 712
    .line 713
    if-nez v0, :cond_32

    .line 714
    .line 715
    goto/16 :goto_5

    .line 716
    .line 717
    :cond_32
    const/16 v1, 0x6c

    .line 718
    .line 719
    goto/16 :goto_6

    .line 720
    .line 721
    :sswitch_31
    const-string v1, "TB3-730X"

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    move-result v0

    .line 726
    .line 727
    if-nez v0, :cond_33

    .line 728
    .line 729
    goto/16 :goto_5

    .line 730
    .line 731
    :cond_33
    const/16 v1, 0x6b

    .line 732
    .line 733
    goto/16 :goto_6

    .line 734
    .line 735
    :sswitch_32
    const-string v1, "TB3-730F"

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    move-result v0

    .line 740
    .line 741
    if-nez v0, :cond_34

    .line 742
    .line 743
    goto/16 :goto_5

    .line 744
    .line 745
    :cond_34
    const/16 v1, 0x6a

    .line 746
    .line 747
    goto/16 :goto_6

    .line 748
    .line 749
    :sswitch_33
    const-string v1, "A7020a48"

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    move-result v0

    .line 754
    .line 755
    if-nez v0, :cond_35

    .line 756
    .line 757
    goto/16 :goto_5

    .line 758
    .line 759
    :cond_35
    const/16 v1, 0x69

    .line 760
    .line 761
    goto/16 :goto_6

    .line 762
    .line 763
    :sswitch_34
    const-string v1, "A7010a48"

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    move-result v0

    .line 768
    .line 769
    if-nez v0, :cond_36

    .line 770
    .line 771
    goto/16 :goto_5

    .line 772
    .line 773
    :cond_36
    const/16 v1, 0x68

    .line 774
    .line 775
    goto/16 :goto_6

    .line 776
    .line 777
    :sswitch_35
    const-string v1, "griffin"

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    move-result v0

    .line 782
    .line 783
    if-nez v0, :cond_37

    .line 784
    .line 785
    goto/16 :goto_5

    .line 786
    .line 787
    :cond_37
    const/16 v1, 0x67

    .line 788
    .line 789
    goto/16 :goto_6

    .line 790
    .line 791
    :sswitch_36
    const-string v1, "marino_f"

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 795
    move-result v0

    .line 796
    .line 797
    if-nez v0, :cond_38

    .line 798
    .line 799
    goto/16 :goto_5

    .line 800
    .line 801
    :cond_38
    const/16 v1, 0x66

    .line 802
    .line 803
    goto/16 :goto_6

    .line 804
    .line 805
    :sswitch_37
    const-string v1, "CPY83_I00"

    .line 806
    .line 807
    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 809
    move-result v0

    .line 810
    .line 811
    if-nez v0, :cond_39

    .line 812
    .line 813
    goto/16 :goto_5

    .line 814
    .line 815
    :cond_39
    const/16 v1, 0x65

    .line 816
    .line 817
    goto/16 :goto_6

    .line 818
    .line 819
    :sswitch_38
    const-string v1, "A2016a40"

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 823
    move-result v0

    .line 824
    .line 825
    if-nez v0, :cond_3a

    .line 826
    .line 827
    goto/16 :goto_5

    .line 828
    .line 829
    :cond_3a
    const/16 v1, 0x64

    .line 830
    .line 831
    goto/16 :goto_6

    .line 832
    .line 833
    :sswitch_39
    const-string v1, "le_x6"

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 837
    move-result v0

    .line 838
    .line 839
    if-nez v0, :cond_3b

    .line 840
    .line 841
    goto/16 :goto_5

    .line 842
    .line 843
    :cond_3b
    const/16 v1, 0x63

    .line 844
    .line 845
    goto/16 :goto_6

    .line 846
    .line 847
    :sswitch_3a
    const-string v1, "l5460"

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    move-result v0

    .line 852
    .line 853
    if-nez v0, :cond_3c

    .line 854
    .line 855
    goto/16 :goto_5

    .line 856
    .line 857
    :cond_3c
    const/16 v1, 0x62

    .line 858
    .line 859
    goto/16 :goto_6

    .line 860
    .line 861
    :sswitch_3b
    const-string v1, "i9031"

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    move-result v0

    .line 866
    .line 867
    if-nez v0, :cond_3d

    .line 868
    .line 869
    goto/16 :goto_5

    .line 870
    .line 871
    :cond_3d
    const/16 v1, 0x61

    .line 872
    .line 873
    goto/16 :goto_6

    .line 874
    .line 875
    :sswitch_3c
    const-string v1, "X3_HK"

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    move-result v0

    .line 880
    .line 881
    if-nez v0, :cond_3e

    .line 882
    .line 883
    goto/16 :goto_5

    .line 884
    .line 885
    :cond_3e
    const/16 v1, 0x60

    .line 886
    .line 887
    goto/16 :goto_6

    .line 888
    .line 889
    :sswitch_3d
    const-string v1, "V23GB"

    .line 890
    .line 891
    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 893
    move-result v0

    .line 894
    .line 895
    if-nez v0, :cond_3f

    .line 896
    .line 897
    goto/16 :goto_5

    .line 898
    .line 899
    :cond_3f
    const/16 v1, 0x5f

    .line 900
    .line 901
    goto/16 :goto_6

    .line 902
    .line 903
    :sswitch_3e
    const-string v1, "Q4310"

    .line 904
    .line 905
    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 907
    move-result v0

    .line 908
    .line 909
    if-nez v0, :cond_40

    .line 910
    .line 911
    goto/16 :goto_5

    .line 912
    .line 913
    :cond_40
    const/16 v1, 0x5e

    .line 914
    .line 915
    goto/16 :goto_6

    .line 916
    .line 917
    :sswitch_3f
    const-string v1, "Q4260"

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 921
    move-result v0

    .line 922
    .line 923
    if-nez v0, :cond_41

    .line 924
    .line 925
    goto/16 :goto_5

    .line 926
    .line 927
    :cond_41
    const/16 v1, 0x5d

    .line 928
    .line 929
    goto/16 :goto_6

    .line 930
    .line 931
    :sswitch_40
    const-string v1, "PRO7S"

    .line 932
    .line 933
    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 935
    move-result v0

    .line 936
    .line 937
    if-nez v0, :cond_42

    .line 938
    .line 939
    goto/16 :goto_5

    .line 940
    .line 941
    :cond_42
    const/16 v1, 0x5c

    .line 942
    .line 943
    goto/16 :goto_6

    .line 944
    .line 945
    :sswitch_41
    const-string v1, "F3311"

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 949
    move-result v0

    .line 950
    .line 951
    if-nez v0, :cond_43

    .line 952
    .line 953
    goto/16 :goto_5

    .line 954
    .line 955
    :cond_43
    const/16 v1, 0x5b

    .line 956
    .line 957
    goto/16 :goto_6

    .line 958
    .line 959
    :sswitch_42
    const-string v1, "F3215"

    .line 960
    .line 961
    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 963
    move-result v0

    .line 964
    .line 965
    if-nez v0, :cond_44

    .line 966
    .line 967
    goto/16 :goto_5

    .line 968
    .line 969
    :cond_44
    const/16 v1, 0x5a

    .line 970
    .line 971
    goto/16 :goto_6

    .line 972
    .line 973
    :sswitch_43
    const-string v1, "F3213"

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 977
    move-result v0

    .line 978
    .line 979
    if-nez v0, :cond_45

    .line 980
    .line 981
    goto/16 :goto_5

    .line 982
    .line 983
    :cond_45
    const/16 v1, 0x59

    .line 984
    .line 985
    goto/16 :goto_6

    .line 986
    .line 987
    :sswitch_44
    const-string v1, "F3211"

    .line 988
    .line 989
    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 991
    move-result v0

    .line 992
    .line 993
    if-nez v0, :cond_46

    .line 994
    .line 995
    goto/16 :goto_5

    .line 996
    .line 997
    :cond_46
    const/16 v1, 0x58

    .line 998
    .line 999
    goto/16 :goto_6

    .line 1000
    .line 1001
    :sswitch_45
    const-string v1, "F3116"

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1005
    move-result v0

    .line 1006
    .line 1007
    if-nez v0, :cond_47

    .line 1008
    .line 1009
    goto/16 :goto_5

    .line 1010
    .line 1011
    :cond_47
    const/16 v1, 0x57

    .line 1012
    .line 1013
    goto/16 :goto_6

    .line 1014
    .line 1015
    :sswitch_46
    const-string v1, "F3113"

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1019
    move-result v0

    .line 1020
    .line 1021
    if-nez v0, :cond_48

    .line 1022
    .line 1023
    goto/16 :goto_5

    .line 1024
    .line 1025
    :cond_48
    const/16 v1, 0x56

    .line 1026
    .line 1027
    goto/16 :goto_6

    .line 1028
    .line 1029
    :sswitch_47
    const-string v1, "F3111"

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1033
    move-result v0

    .line 1034
    .line 1035
    if-nez v0, :cond_49

    .line 1036
    .line 1037
    goto/16 :goto_5

    .line 1038
    .line 1039
    :cond_49
    const/16 v1, 0x55

    .line 1040
    .line 1041
    goto/16 :goto_6

    .line 1042
    .line 1043
    :sswitch_48
    const-string v1, "E5643"

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1047
    move-result v0

    .line 1048
    .line 1049
    if-nez v0, :cond_4a

    .line 1050
    .line 1051
    goto/16 :goto_5

    .line 1052
    .line 1053
    :cond_4a
    const/16 v1, 0x54

    .line 1054
    .line 1055
    goto/16 :goto_6

    .line 1056
    .line 1057
    :sswitch_49
    const-string v1, "A1601"

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1061
    move-result v0

    .line 1062
    .line 1063
    if-nez v0, :cond_4b

    .line 1064
    .line 1065
    goto/16 :goto_5

    .line 1066
    .line 1067
    :cond_4b
    const/16 v1, 0x53

    .line 1068
    .line 1069
    goto/16 :goto_6

    .line 1070
    .line 1071
    :sswitch_4a
    const-string v1, "Aura_Note_2"

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1075
    move-result v0

    .line 1076
    .line 1077
    if-nez v0, :cond_4c

    .line 1078
    .line 1079
    goto/16 :goto_5

    .line 1080
    .line 1081
    :cond_4c
    const/16 v1, 0x52

    .line 1082
    .line 1083
    goto/16 :goto_6

    .line 1084
    .line 1085
    :sswitch_4b
    const-string v1, "602LV"

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1089
    move-result v0

    .line 1090
    .line 1091
    if-nez v0, :cond_4d

    .line 1092
    .line 1093
    goto/16 :goto_5

    .line 1094
    .line 1095
    :cond_4d
    const/16 v1, 0x51

    .line 1096
    .line 1097
    goto/16 :goto_6

    .line 1098
    .line 1099
    :sswitch_4c
    const-string v1, "601LV"

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1103
    move-result v0

    .line 1104
    .line 1105
    if-nez v0, :cond_4e

    .line 1106
    .line 1107
    goto/16 :goto_5

    .line 1108
    .line 1109
    :cond_4e
    const/16 v1, 0x50

    .line 1110
    .line 1111
    goto/16 :goto_6

    .line 1112
    .line 1113
    :sswitch_4d
    const-string v1, "MEIZU_M5"

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1117
    move-result v0

    .line 1118
    .line 1119
    if-nez v0, :cond_4f

    .line 1120
    .line 1121
    goto/16 :goto_5

    .line 1122
    .line 1123
    :cond_4f
    const/16 v1, 0x4f

    .line 1124
    .line 1125
    goto/16 :goto_6

    .line 1126
    .line 1127
    .line 1128
    :sswitch_4e
    const-string/jumbo v1, "p212"

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1132
    move-result v0

    .line 1133
    .line 1134
    if-nez v0, :cond_50

    .line 1135
    .line 1136
    goto/16 :goto_5

    .line 1137
    .line 1138
    :cond_50
    const/16 v1, 0x4e

    .line 1139
    .line 1140
    goto/16 :goto_6

    .line 1141
    .line 1142
    :sswitch_4f
    const-string v1, "mido"

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1146
    move-result v0

    .line 1147
    .line 1148
    if-nez v0, :cond_51

    .line 1149
    .line 1150
    goto/16 :goto_5

    .line 1151
    .line 1152
    :cond_51
    const/16 v1, 0x4d

    .line 1153
    .line 1154
    goto/16 :goto_6

    .line 1155
    .line 1156
    :sswitch_50
    const-string v1, "kate"

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1160
    move-result v0

    .line 1161
    .line 1162
    if-nez v0, :cond_52

    .line 1163
    .line 1164
    goto/16 :goto_5

    .line 1165
    .line 1166
    :cond_52
    const/16 v1, 0x4c

    .line 1167
    .line 1168
    goto/16 :goto_6

    .line 1169
    .line 1170
    :sswitch_51
    const-string v1, "fugu"

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1174
    move-result v0

    .line 1175
    .line 1176
    if-nez v0, :cond_53

    .line 1177
    .line 1178
    goto/16 :goto_5

    .line 1179
    .line 1180
    :cond_53
    const/16 v1, 0x4b

    .line 1181
    .line 1182
    goto/16 :goto_6

    .line 1183
    .line 1184
    :sswitch_52
    const-string v1, "XE2X"

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1188
    move-result v0

    .line 1189
    .line 1190
    if-nez v0, :cond_54

    .line 1191
    .line 1192
    goto/16 :goto_5

    .line 1193
    .line 1194
    :cond_54
    const/16 v1, 0x4a

    .line 1195
    .line 1196
    goto/16 :goto_6

    .line 1197
    .line 1198
    :sswitch_53
    const-string v1, "Q427"

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1202
    move-result v0

    .line 1203
    .line 1204
    if-nez v0, :cond_55

    .line 1205
    .line 1206
    goto/16 :goto_5

    .line 1207
    .line 1208
    :cond_55
    const/16 v1, 0x49

    .line 1209
    .line 1210
    goto/16 :goto_6

    .line 1211
    .line 1212
    :sswitch_54
    const-string v1, "Q350"

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1216
    move-result v0

    .line 1217
    .line 1218
    if-nez v0, :cond_56

    .line 1219
    .line 1220
    goto/16 :goto_5

    .line 1221
    .line 1222
    :cond_56
    const/16 v1, 0x48

    .line 1223
    .line 1224
    goto/16 :goto_6

    .line 1225
    .line 1226
    :sswitch_55
    const-string v1, "P681"

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    move-result v0

    .line 1231
    .line 1232
    if-nez v0, :cond_57

    .line 1233
    .line 1234
    goto/16 :goto_5

    .line 1235
    .line 1236
    :cond_57
    const/16 v1, 0x47

    .line 1237
    .line 1238
    goto/16 :goto_6

    .line 1239
    .line 1240
    :sswitch_56
    const-string v1, "F04J"

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    move-result v0

    .line 1245
    .line 1246
    if-nez v0, :cond_58

    .line 1247
    .line 1248
    goto/16 :goto_5

    .line 1249
    .line 1250
    :cond_58
    const/16 v1, 0x46

    .line 1251
    .line 1252
    goto/16 :goto_6

    .line 1253
    .line 1254
    :sswitch_57
    const-string v1, "F04H"

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1258
    move-result v0

    .line 1259
    .line 1260
    if-nez v0, :cond_59

    .line 1261
    .line 1262
    goto/16 :goto_5

    .line 1263
    .line 1264
    :cond_59
    const/16 v1, 0x45

    .line 1265
    .line 1266
    goto/16 :goto_6

    .line 1267
    .line 1268
    :sswitch_58
    const-string v1, "F03H"

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1272
    move-result v0

    .line 1273
    .line 1274
    if-nez v0, :cond_5a

    .line 1275
    .line 1276
    goto/16 :goto_5

    .line 1277
    .line 1278
    :cond_5a
    const/16 v1, 0x44

    .line 1279
    .line 1280
    goto/16 :goto_6

    .line 1281
    .line 1282
    :sswitch_59
    const-string v1, "F02H"

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1286
    move-result v0

    .line 1287
    .line 1288
    if-nez v0, :cond_5b

    .line 1289
    .line 1290
    goto/16 :goto_5

    .line 1291
    .line 1292
    :cond_5b
    const/16 v1, 0x43

    .line 1293
    .line 1294
    goto/16 :goto_6

    .line 1295
    .line 1296
    :sswitch_5a
    const-string v1, "F01J"

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1300
    move-result v0

    .line 1301
    .line 1302
    if-nez v0, :cond_5c

    .line 1303
    .line 1304
    goto/16 :goto_5

    .line 1305
    .line 1306
    :cond_5c
    const/16 v1, 0x42

    .line 1307
    .line 1308
    goto/16 :goto_6

    .line 1309
    .line 1310
    :sswitch_5b
    const-string v1, "F01H"

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1314
    move-result v0

    .line 1315
    .line 1316
    if-nez v0, :cond_5d

    .line 1317
    .line 1318
    goto/16 :goto_5

    .line 1319
    .line 1320
    :cond_5d
    const/16 v1, 0x41

    .line 1321
    .line 1322
    goto/16 :goto_6

    .line 1323
    .line 1324
    :sswitch_5c
    const-string v1, "1714"

    .line 1325
    .line 1326
    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1328
    move-result v0

    .line 1329
    .line 1330
    if-nez v0, :cond_5e

    .line 1331
    .line 1332
    goto/16 :goto_5

    .line 1333
    .line 1334
    :cond_5e
    const/16 v1, 0x40

    .line 1335
    .line 1336
    goto/16 :goto_6

    .line 1337
    .line 1338
    :sswitch_5d
    const-string v1, "1713"

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1342
    move-result v0

    .line 1343
    .line 1344
    if-nez v0, :cond_5f

    .line 1345
    .line 1346
    goto/16 :goto_5

    .line 1347
    .line 1348
    :cond_5f
    const/16 v1, 0x3f

    .line 1349
    .line 1350
    goto/16 :goto_6

    .line 1351
    .line 1352
    :sswitch_5e
    const-string v1, "1601"

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1356
    move-result v0

    .line 1357
    .line 1358
    if-nez v0, :cond_60

    .line 1359
    .line 1360
    goto/16 :goto_5

    .line 1361
    .line 1362
    :cond_60
    const/16 v1, 0x3e

    .line 1363
    .line 1364
    goto/16 :goto_6

    .line 1365
    .line 1366
    :sswitch_5f
    const-string v1, "flo"

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1370
    move-result v0

    .line 1371
    .line 1372
    if-nez v0, :cond_61

    .line 1373
    .line 1374
    goto/16 :goto_5

    .line 1375
    .line 1376
    :cond_61
    const/16 v1, 0x3d

    .line 1377
    .line 1378
    goto/16 :goto_6

    .line 1379
    .line 1380
    :sswitch_60
    const-string v1, "deb"

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1384
    move-result v0

    .line 1385
    .line 1386
    if-nez v0, :cond_62

    .line 1387
    .line 1388
    goto/16 :goto_5

    .line 1389
    .line 1390
    :cond_62
    const/16 v1, 0x3c

    .line 1391
    .line 1392
    goto/16 :goto_6

    .line 1393
    .line 1394
    :sswitch_61
    const-string v1, "cv3"

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1398
    move-result v0

    .line 1399
    .line 1400
    if-nez v0, :cond_63

    .line 1401
    .line 1402
    goto/16 :goto_5

    .line 1403
    .line 1404
    :cond_63
    const/16 v1, 0x3b

    .line 1405
    .line 1406
    goto/16 :goto_6

    .line 1407
    .line 1408
    :sswitch_62
    const-string v1, "cv1"

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1412
    move-result v0

    .line 1413
    .line 1414
    if-nez v0, :cond_64

    .line 1415
    .line 1416
    goto/16 :goto_5

    .line 1417
    .line 1418
    :cond_64
    const/16 v1, 0x3a

    .line 1419
    .line 1420
    goto/16 :goto_6

    .line 1421
    .line 1422
    :sswitch_63
    const-string v1, "Z80"

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1426
    move-result v0

    .line 1427
    .line 1428
    if-nez v0, :cond_65

    .line 1429
    .line 1430
    goto/16 :goto_5

    .line 1431
    .line 1432
    :cond_65
    const/16 v1, 0x39

    .line 1433
    .line 1434
    goto/16 :goto_6

    .line 1435
    .line 1436
    :sswitch_64
    const-string v1, "QX1"

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1440
    move-result v0

    .line 1441
    .line 1442
    if-nez v0, :cond_66

    .line 1443
    .line 1444
    goto/16 :goto_5

    .line 1445
    .line 1446
    :cond_66
    const/16 v1, 0x38

    .line 1447
    .line 1448
    goto/16 :goto_6

    .line 1449
    .line 1450
    :sswitch_65
    const-string v1, "PLE"

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1454
    move-result v0

    .line 1455
    .line 1456
    if-nez v0, :cond_67

    .line 1457
    .line 1458
    goto/16 :goto_5

    .line 1459
    .line 1460
    :cond_67
    const/16 v1, 0x37

    .line 1461
    .line 1462
    goto/16 :goto_6

    .line 1463
    .line 1464
    :sswitch_66
    const-string v1, "P85"

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1468
    move-result v0

    .line 1469
    .line 1470
    if-nez v0, :cond_68

    .line 1471
    .line 1472
    goto/16 :goto_5

    .line 1473
    .line 1474
    :cond_68
    const/16 v1, 0x36

    .line 1475
    .line 1476
    goto/16 :goto_6

    .line 1477
    .line 1478
    :sswitch_67
    const-string v1, "MX6"

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1482
    move-result v0

    .line 1483
    .line 1484
    if-nez v0, :cond_69

    .line 1485
    .line 1486
    goto/16 :goto_5

    .line 1487
    .line 1488
    :cond_69
    const/16 v1, 0x35

    .line 1489
    .line 1490
    goto/16 :goto_6

    .line 1491
    .line 1492
    :sswitch_68
    const-string v1, "M5c"

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1496
    move-result v0

    .line 1497
    .line 1498
    if-nez v0, :cond_6a

    .line 1499
    .line 1500
    goto/16 :goto_5

    .line 1501
    .line 1502
    :cond_6a
    const/16 v1, 0x34

    .line 1503
    .line 1504
    goto/16 :goto_6

    .line 1505
    .line 1506
    :sswitch_69
    const-string v1, "M04"

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1510
    move-result v0

    .line 1511
    .line 1512
    if-nez v0, :cond_6b

    .line 1513
    .line 1514
    goto/16 :goto_5

    .line 1515
    .line 1516
    :cond_6b
    const/16 v1, 0x33

    .line 1517
    .line 1518
    goto/16 :goto_6

    .line 1519
    .line 1520
    :sswitch_6a
    const-string v1, "JGZ"

    .line 1521
    .line 1522
    .line 1523
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1524
    move-result v0

    .line 1525
    .line 1526
    if-nez v0, :cond_6c

    .line 1527
    .line 1528
    goto/16 :goto_5

    .line 1529
    .line 1530
    :cond_6c
    const/16 v1, 0x32

    .line 1531
    .line 1532
    goto/16 :goto_6

    .line 1533
    .line 1534
    :sswitch_6b
    const-string v1, "mh"

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1538
    move-result v0

    .line 1539
    .line 1540
    if-nez v0, :cond_6d

    .line 1541
    .line 1542
    goto/16 :goto_5

    .line 1543
    .line 1544
    :cond_6d
    const/16 v1, 0x31

    .line 1545
    .line 1546
    goto/16 :goto_6

    .line 1547
    .line 1548
    :sswitch_6c
    const-string v1, "b5"

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1552
    move-result v0

    .line 1553
    .line 1554
    if-nez v0, :cond_6e

    .line 1555
    .line 1556
    goto/16 :goto_5

    .line 1557
    .line 1558
    :cond_6e
    const/16 v1, 0x30

    .line 1559
    .line 1560
    goto/16 :goto_6

    .line 1561
    .line 1562
    :sswitch_6d
    const-string v1, "V5"

    .line 1563
    .line 1564
    .line 1565
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1566
    move-result v0

    .line 1567
    .line 1568
    if-nez v0, :cond_6f

    .line 1569
    .line 1570
    goto/16 :goto_5

    .line 1571
    .line 1572
    :cond_6f
    const/16 v1, 0x2f

    .line 1573
    .line 1574
    goto/16 :goto_6

    .line 1575
    .line 1576
    :sswitch_6e
    const-string v1, "V1"

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1580
    move-result v0

    .line 1581
    .line 1582
    if-nez v0, :cond_70

    .line 1583
    .line 1584
    goto/16 :goto_5

    .line 1585
    .line 1586
    :cond_70
    const/16 v1, 0x2e

    .line 1587
    .line 1588
    goto/16 :goto_6

    .line 1589
    .line 1590
    :sswitch_6f
    const-string v1, "Q5"

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1594
    move-result v0

    .line 1595
    .line 1596
    if-nez v0, :cond_71

    .line 1597
    .line 1598
    goto/16 :goto_5

    .line 1599
    .line 1600
    :cond_71
    const/16 v1, 0x2d

    .line 1601
    .line 1602
    goto/16 :goto_6

    .line 1603
    .line 1604
    :sswitch_70
    const-string v1, "C1"

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1608
    move-result v0

    .line 1609
    .line 1610
    if-nez v0, :cond_72

    .line 1611
    .line 1612
    goto/16 :goto_5

    .line 1613
    .line 1614
    :cond_72
    const/16 v1, 0x2c

    .line 1615
    .line 1616
    goto/16 :goto_6

    .line 1617
    .line 1618
    .line 1619
    :sswitch_71
    const-string/jumbo v1, "woods_fn"

    .line 1620
    .line 1621
    .line 1622
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1623
    move-result v0

    .line 1624
    .line 1625
    if-nez v0, :cond_73

    .line 1626
    .line 1627
    goto/16 :goto_5

    .line 1628
    .line 1629
    :cond_73
    const/16 v1, 0x2b

    .line 1630
    .line 1631
    goto/16 :goto_6

    .line 1632
    .line 1633
    :sswitch_72
    const-string v1, "ELUGA_A3_Pro"

    .line 1634
    .line 1635
    .line 1636
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1637
    move-result v0

    .line 1638
    .line 1639
    if-nez v0, :cond_74

    .line 1640
    .line 1641
    goto/16 :goto_5

    .line 1642
    .line 1643
    :cond_74
    const/16 v1, 0x2a

    .line 1644
    .line 1645
    goto/16 :goto_6

    .line 1646
    .line 1647
    :sswitch_73
    const-string v1, "Z12_PRO"

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1651
    move-result v0

    .line 1652
    .line 1653
    if-nez v0, :cond_75

    .line 1654
    .line 1655
    goto/16 :goto_5

    .line 1656
    .line 1657
    :cond_75
    const/16 v1, 0x29

    .line 1658
    .line 1659
    goto/16 :goto_6

    .line 1660
    .line 1661
    :sswitch_74
    const-string v1, "BLACK-1X"

    .line 1662
    .line 1663
    .line 1664
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1665
    move-result v0

    .line 1666
    .line 1667
    if-nez v0, :cond_76

    .line 1668
    .line 1669
    goto/16 :goto_5

    .line 1670
    .line 1671
    :cond_76
    const/16 v1, 0x28

    .line 1672
    .line 1673
    goto/16 :goto_6

    .line 1674
    .line 1675
    .line 1676
    :sswitch_75
    const-string/jumbo v1, "taido_row"

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1680
    move-result v0

    .line 1681
    .line 1682
    if-nez v0, :cond_77

    .line 1683
    .line 1684
    goto/16 :goto_5

    .line 1685
    .line 1686
    :cond_77
    const/16 v1, 0x27

    .line 1687
    .line 1688
    goto/16 :goto_6

    .line 1689
    .line 1690
    :sswitch_76
    const-string v1, "Pixi4-7_3G"

    .line 1691
    .line 1692
    .line 1693
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1694
    move-result v0

    .line 1695
    .line 1696
    if-nez v0, :cond_78

    .line 1697
    .line 1698
    goto/16 :goto_5

    .line 1699
    .line 1700
    :cond_78
    const/16 v1, 0x26

    .line 1701
    .line 1702
    goto/16 :goto_6

    .line 1703
    .line 1704
    :sswitch_77
    const-string v1, "GIONEE_GBL7360"

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1708
    move-result v0

    .line 1709
    .line 1710
    if-nez v0, :cond_79

    .line 1711
    .line 1712
    goto/16 :goto_5

    .line 1713
    .line 1714
    :cond_79
    const/16 v1, 0x25

    .line 1715
    .line 1716
    goto/16 :goto_6

    .line 1717
    .line 1718
    :sswitch_78
    const-string v1, "GiONEE_CBL7513"

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1722
    move-result v0

    .line 1723
    .line 1724
    if-nez v0, :cond_7a

    .line 1725
    .line 1726
    goto/16 :goto_5

    .line 1727
    .line 1728
    :cond_7a
    const/16 v1, 0x24

    .line 1729
    .line 1730
    goto/16 :goto_6

    .line 1731
    .line 1732
    :sswitch_79
    const-string v1, "OnePlus5T"

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1736
    move-result v0

    .line 1737
    .line 1738
    if-nez v0, :cond_7b

    .line 1739
    .line 1740
    goto/16 :goto_5

    .line 1741
    .line 1742
    :cond_7b
    const/16 v1, 0x23

    .line 1743
    .line 1744
    goto/16 :goto_6

    .line 1745
    .line 1746
    .line 1747
    :sswitch_7a
    const-string/jumbo v1, "whyred"

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1751
    move-result v0

    .line 1752
    .line 1753
    if-nez v0, :cond_7c

    .line 1754
    .line 1755
    goto/16 :goto_5

    .line 1756
    .line 1757
    :cond_7c
    const/16 v1, 0x22

    .line 1758
    .line 1759
    goto/16 :goto_6

    .line 1760
    .line 1761
    .line 1762
    :sswitch_7b
    const-string/jumbo v1, "watson"

    .line 1763
    .line 1764
    .line 1765
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1766
    move-result v0

    .line 1767
    .line 1768
    if-nez v0, :cond_7d

    .line 1769
    .line 1770
    goto/16 :goto_5

    .line 1771
    .line 1772
    :cond_7d
    const/16 v1, 0x21

    .line 1773
    .line 1774
    goto/16 :goto_6

    .line 1775
    .line 1776
    :sswitch_7c
    const-string v1, "SVP-DTV15"

    .line 1777
    .line 1778
    .line 1779
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1780
    move-result v0

    .line 1781
    .line 1782
    if-nez v0, :cond_7e

    .line 1783
    .line 1784
    goto/16 :goto_5

    .line 1785
    .line 1786
    :cond_7e
    const/16 v1, 0x20

    .line 1787
    .line 1788
    goto/16 :goto_6

    .line 1789
    .line 1790
    :sswitch_7d
    const-string v1, "A7000-a"

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1794
    move-result v0

    .line 1795
    .line 1796
    if-nez v0, :cond_7f

    .line 1797
    .line 1798
    goto/16 :goto_5

    .line 1799
    .line 1800
    :cond_7f
    const/16 v1, 0x1f

    .line 1801
    .line 1802
    goto/16 :goto_6

    .line 1803
    .line 1804
    .line 1805
    :sswitch_7e
    const-string/jumbo v1, "nicklaus_f"

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1809
    move-result v0

    .line 1810
    .line 1811
    if-nez v0, :cond_80

    .line 1812
    .line 1813
    goto/16 :goto_5

    .line 1814
    .line 1815
    :cond_80
    const/16 v1, 0x1e

    .line 1816
    .line 1817
    goto/16 :goto_6

    .line 1818
    .line 1819
    .line 1820
    :sswitch_7f
    const-string/jumbo v1, "tcl_eu"

    .line 1821
    .line 1822
    .line 1823
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1824
    move-result v0

    .line 1825
    .line 1826
    if-nez v0, :cond_81

    .line 1827
    .line 1828
    goto/16 :goto_5

    .line 1829
    .line 1830
    :cond_81
    const/16 v1, 0x1d

    .line 1831
    .line 1832
    goto/16 :goto_6

    .line 1833
    .line 1834
    :sswitch_80
    const-string v1, "ELUGA_Ray_X"

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1838
    move-result v0

    .line 1839
    .line 1840
    if-nez v0, :cond_82

    .line 1841
    .line 1842
    goto/16 :goto_5

    .line 1843
    :cond_82
    move v1, v10

    .line 1844
    .line 1845
    goto/16 :goto_6

    .line 1846
    .line 1847
    .line 1848
    :sswitch_81
    const-string/jumbo v1, "s905x018"

    .line 1849
    .line 1850
    .line 1851
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1852
    move-result v0

    .line 1853
    .line 1854
    if-nez v0, :cond_83

    .line 1855
    .line 1856
    goto/16 :goto_5

    .line 1857
    :cond_83
    move v1, v11

    .line 1858
    .line 1859
    goto/16 :goto_6

    .line 1860
    .line 1861
    :sswitch_82
    const-string v1, "A10-70L"

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1865
    move-result v0

    .line 1866
    .line 1867
    if-nez v0, :cond_84

    .line 1868
    .line 1869
    goto/16 :goto_5

    .line 1870
    :cond_84
    move v1, v13

    .line 1871
    .line 1872
    goto/16 :goto_6

    .line 1873
    .line 1874
    :sswitch_83
    const-string v1, "A10-70F"

    .line 1875
    .line 1876
    .line 1877
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1878
    move-result v0

    .line 1879
    .line 1880
    if-nez v0, :cond_85

    .line 1881
    .line 1882
    goto/16 :goto_5

    .line 1883
    .line 1884
    :cond_85
    const/16 v1, 0x19

    .line 1885
    .line 1886
    goto/16 :goto_6

    .line 1887
    .line 1888
    :sswitch_84
    const-string v1, "namath"

    .line 1889
    .line 1890
    .line 1891
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1892
    move-result v0

    .line 1893
    .line 1894
    if-nez v0, :cond_86

    .line 1895
    .line 1896
    goto/16 :goto_5

    .line 1897
    .line 1898
    :cond_86
    const/16 v1, 0x18

    .line 1899
    .line 1900
    goto/16 :goto_6

    .line 1901
    .line 1902
    :sswitch_85
    const-string v1, "Slate_Pro"

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1906
    move-result v0

    .line 1907
    .line 1908
    if-nez v0, :cond_87

    .line 1909
    .line 1910
    goto/16 :goto_5

    .line 1911
    .line 1912
    :cond_87
    const/16 v1, 0x17

    .line 1913
    .line 1914
    goto/16 :goto_6

    .line 1915
    .line 1916
    :sswitch_86
    const-string v1, "iris60"

    .line 1917
    .line 1918
    .line 1919
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1920
    move-result v0

    .line 1921
    .line 1922
    if-nez v0, :cond_88

    .line 1923
    .line 1924
    goto/16 :goto_5

    .line 1925
    .line 1926
    :cond_88
    const/16 v1, 0x16

    .line 1927
    .line 1928
    goto/16 :goto_6

    .line 1929
    .line 1930
    :sswitch_87
    const-string v1, "BRAVIA_ATV2"

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1934
    move-result v0

    .line 1935
    .line 1936
    if-nez v0, :cond_89

    .line 1937
    .line 1938
    goto/16 :goto_5

    .line 1939
    .line 1940
    :cond_89
    const/16 v1, 0x15

    .line 1941
    .line 1942
    goto/16 :goto_6

    .line 1943
    .line 1944
    :sswitch_88
    const-string v1, "GiONEE_GBL7319"

    .line 1945
    .line 1946
    .line 1947
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1948
    move-result v0

    .line 1949
    .line 1950
    if-nez v0, :cond_8a

    .line 1951
    .line 1952
    goto/16 :goto_5

    .line 1953
    .line 1954
    :cond_8a
    const/16 v1, 0x14

    .line 1955
    .line 1956
    goto/16 :goto_6

    .line 1957
    .line 1958
    .line 1959
    :sswitch_89
    const-string/jumbo v1, "panell_dt"

    .line 1960
    .line 1961
    .line 1962
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1963
    move-result v0

    .line 1964
    .line 1965
    if-nez v0, :cond_8b

    .line 1966
    .line 1967
    goto/16 :goto_5

    .line 1968
    .line 1969
    :cond_8b
    const/16 v1, 0x13

    .line 1970
    .line 1971
    goto/16 :goto_6

    .line 1972
    .line 1973
    .line 1974
    :sswitch_8a
    const-string/jumbo v1, "panell_ds"

    .line 1975
    .line 1976
    .line 1977
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1978
    move-result v0

    .line 1979
    .line 1980
    if-nez v0, :cond_8c

    .line 1981
    .line 1982
    goto/16 :goto_5

    .line 1983
    .line 1984
    :cond_8c
    const/16 v1, 0x12

    .line 1985
    .line 1986
    goto/16 :goto_6

    .line 1987
    .line 1988
    .line 1989
    :sswitch_8b
    const-string/jumbo v1, "panell_dl"

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1993
    move-result v0

    .line 1994
    .line 1995
    if-nez v0, :cond_8d

    .line 1996
    .line 1997
    goto/16 :goto_5

    .line 1998
    .line 1999
    :cond_8d
    const/16 v1, 0x11

    .line 2000
    .line 2001
    goto/16 :goto_6

    .line 2002
    .line 2003
    .line 2004
    :sswitch_8c
    const-string/jumbo v1, "vernee_M5"

    .line 2005
    .line 2006
    .line 2007
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2008
    move-result v0

    .line 2009
    .line 2010
    if-nez v0, :cond_8e

    .line 2011
    .line 2012
    goto/16 :goto_5

    .line 2013
    .line 2014
    :cond_8e
    const/16 v1, 0x10

    .line 2015
    .line 2016
    goto/16 :goto_6

    .line 2017
    .line 2018
    .line 2019
    :sswitch_8d
    const-string/jumbo v1, "pacificrim"

    .line 2020
    .line 2021
    .line 2022
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2023
    move-result v0

    .line 2024
    .line 2025
    if-nez v0, :cond_8f

    .line 2026
    .line 2027
    goto/16 :goto_5

    .line 2028
    .line 2029
    :cond_8f
    const/16 v1, 0xf

    .line 2030
    .line 2031
    goto/16 :goto_6

    .line 2032
    .line 2033
    :sswitch_8e
    const-string v1, "Phantom6"

    .line 2034
    .line 2035
    .line 2036
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2037
    move-result v0

    .line 2038
    .line 2039
    if-nez v0, :cond_90

    .line 2040
    .line 2041
    goto/16 :goto_5

    .line 2042
    .line 2043
    :cond_90
    const/16 v1, 0xe

    .line 2044
    .line 2045
    goto/16 :goto_6

    .line 2046
    .line 2047
    :sswitch_8f
    const-string v1, "ComioS1"

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2051
    move-result v0

    .line 2052
    .line 2053
    if-nez v0, :cond_91

    .line 2054
    .line 2055
    goto/16 :goto_5

    .line 2056
    .line 2057
    :cond_91
    const/16 v1, 0xd

    .line 2058
    .line 2059
    goto/16 :goto_6

    .line 2060
    .line 2061
    :sswitch_90
    const-string v1, "XT1663"

    .line 2062
    .line 2063
    .line 2064
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2065
    move-result v0

    .line 2066
    .line 2067
    if-nez v0, :cond_92

    .line 2068
    .line 2069
    goto/16 :goto_5

    .line 2070
    .line 2071
    :cond_92
    const/16 v1, 0xc

    .line 2072
    .line 2073
    goto/16 :goto_6

    .line 2074
    .line 2075
    :sswitch_91
    const-string v1, "RAIJIN"

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2079
    move-result v0

    .line 2080
    .line 2081
    if-nez v0, :cond_93

    .line 2082
    .line 2083
    goto/16 :goto_5

    .line 2084
    .line 2085
    :cond_93
    const/16 v1, 0xb

    .line 2086
    .line 2087
    goto/16 :goto_6

    .line 2088
    .line 2089
    :sswitch_92
    const-string v1, "AquaPowerM"

    .line 2090
    .line 2091
    .line 2092
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2093
    move-result v0

    .line 2094
    .line 2095
    if-nez v0, :cond_94

    .line 2096
    .line 2097
    goto/16 :goto_5

    .line 2098
    .line 2099
    :cond_94
    const/16 v1, 0xa

    .line 2100
    .line 2101
    goto/16 :goto_6

    .line 2102
    .line 2103
    :sswitch_93
    const-string v1, "PGN611"

    .line 2104
    .line 2105
    .line 2106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2107
    move-result v0

    .line 2108
    .line 2109
    if-nez v0, :cond_95

    .line 2110
    .line 2111
    goto/16 :goto_5

    .line 2112
    .line 2113
    :cond_95
    const/16 v1, 0x9

    .line 2114
    .line 2115
    goto/16 :goto_6

    .line 2116
    .line 2117
    :sswitch_94
    const-string v1, "PGN610"

    .line 2118
    .line 2119
    .line 2120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2121
    move-result v0

    .line 2122
    .line 2123
    if-nez v0, :cond_96

    .line 2124
    .line 2125
    goto/16 :goto_5

    .line 2126
    :cond_96
    move v1, v14

    .line 2127
    .line 2128
    goto/16 :goto_6

    .line 2129
    .line 2130
    :sswitch_95
    const-string v2, "PGN528"

    .line 2131
    .line 2132
    .line 2133
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2134
    move-result v0

    .line 2135
    .line 2136
    if-nez v0, :cond_9e

    .line 2137
    .line 2138
    goto/16 :goto_5

    .line 2139
    .line 2140
    :sswitch_96
    const-string v1, "NX573J"

    .line 2141
    .line 2142
    .line 2143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2144
    move-result v0

    .line 2145
    .line 2146
    if-nez v0, :cond_97

    .line 2147
    .line 2148
    goto/16 :goto_5

    .line 2149
    :cond_97
    move v1, v2

    .line 2150
    goto :goto_6

    .line 2151
    .line 2152
    :sswitch_97
    const-string v1, "NX541J"

    .line 2153
    .line 2154
    .line 2155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2156
    move-result v0

    .line 2157
    .line 2158
    if-nez v0, :cond_98

    .line 2159
    .line 2160
    goto/16 :goto_5

    .line 2161
    :cond_98
    move v1, v3

    .line 2162
    goto :goto_6

    .line 2163
    .line 2164
    :sswitch_98
    const-string v1, "CP8676_I02"

    .line 2165
    .line 2166
    .line 2167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2168
    move-result v0

    .line 2169
    .line 2170
    if-nez v0, :cond_99

    .line 2171
    .line 2172
    goto/16 :goto_5

    .line 2173
    :cond_99
    move v1, v4

    .line 2174
    goto :goto_6

    .line 2175
    .line 2176
    :sswitch_99
    const-string v1, "K50a40"

    .line 2177
    .line 2178
    .line 2179
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2180
    move-result v0

    .line 2181
    .line 2182
    if-nez v0, :cond_9a

    .line 2183
    .line 2184
    goto/16 :goto_5

    .line 2185
    :cond_9a
    move v1, v5

    .line 2186
    goto :goto_6

    .line 2187
    .line 2188
    :sswitch_9a
    const-string v1, "GIONEE_SWW1631"

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2192
    move-result v0

    .line 2193
    .line 2194
    if-nez v0, :cond_9b

    .line 2195
    .line 2196
    goto/16 :goto_5

    .line 2197
    :cond_9b
    move v1, v6

    .line 2198
    goto :goto_6

    .line 2199
    .line 2200
    :sswitch_9b
    const-string v1, "GIONEE_SWW1627"

    .line 2201
    .line 2202
    .line 2203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2204
    move-result v0

    .line 2205
    .line 2206
    if-nez v0, :cond_9c

    .line 2207
    .line 2208
    goto/16 :goto_5

    .line 2209
    :cond_9c
    move v1, v9

    .line 2210
    goto :goto_6

    .line 2211
    .line 2212
    :sswitch_9c
    const-string v1, "GIONEE_SWW1609"

    .line 2213
    .line 2214
    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2216
    move-result v0

    .line 2217
    .line 2218
    if-nez v0, :cond_9d

    .line 2219
    .line 2220
    goto/16 :goto_5

    .line 2221
    :cond_9d
    move v1, v8

    .line 2222
    .line 2223
    .line 2224
    :cond_9e
    :goto_6
    packed-switch v1, :pswitch_data_2

    .line 2225
    .line 2226
    .line 2227
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 2228
    .line 2229
    const-string v0, "JSN-L21"

    .line 2230
    .line 2231
    .line 2232
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2233
    move-result v0

    .line 2234
    .line 2235
    if-nez v0, :cond_9f

    .line 2236
    goto :goto_7

    .line 2237
    :cond_9f
    :pswitch_1
    return v9

    .line 2238
    :cond_a0
    :goto_7
    return v8

    .line 2239
    :pswitch_2
    return v9

    .line 2240
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected B0(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->B0(J)V

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 14
    :cond_0
    return-void
.end method

.method protected C0()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->C0()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1()V

    .line 7
    return-void
.end method

.method protected C1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;[Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 12

    .line 1
    .line 2
    iget v0, p2, Landroidx/media3/common/Format;->width:I

    .line 3
    .line 4
    iget v1, p2, Landroidx/media3/common/Format;->height:I

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 8
    move-result v2

    .line 9
    array-length v3, p3

    .line 10
    const/4 v4, -0x1

    .line 11
    const/4 v5, 0x1

    .line 12
    .line 13
    if-ne v3, v5, :cond_1

    .line 14
    .line 15
    if-eq v2, v4, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eq p1, v4, :cond_0

    .line 22
    int-to-float p2, v2

    .line 23
    .line 24
    const/high16 p3, 0x3fc00000    # 1.5f

    .line 25
    mul-float/2addr p2, p3

    .line 26
    float-to-int p2, p2

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v2

    .line 31
    .line 32
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    .line 36
    return-object p1

    .line 37
    :cond_1
    array-length v3, p3

    .line 38
    const/4 v6, 0x0

    .line 39
    move v7, v6

    .line 40
    move v8, v7

    .line 41
    .line 42
    :goto_0
    if-ge v7, v3, :cond_6

    .line 43
    .line 44
    aget-object v9, p3, v7

    .line 45
    .line 46
    iget-object v10, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 47
    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    iget-object v10, v9, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 51
    .line 52
    if-nez v10, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 56
    move-result-object v9

    .line 57
    .line 58
    iget-object v10, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9, v10}, Landroidx/media3/common/Format$Builder;->L(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    .line 62
    move-result-object v9

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 66
    move-result-object v9

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p1, p2, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 70
    move-result-object v10

    .line 71
    .line 72
    iget v10, v10, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    .line 73
    .line 74
    if-eqz v10, :cond_5

    .line 75
    .line 76
    iget v10, v9, Landroidx/media3/common/Format;->width:I

    .line 77
    .line 78
    if-eq v10, v4, :cond_4

    .line 79
    .line 80
    iget v11, v9, Landroidx/media3/common/Format;->height:I

    .line 81
    .line 82
    if-ne v11, v4, :cond_3

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v11, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    move v11, v5

    .line 87
    :goto_2
    or-int/2addr v8, v11

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v0

    .line 92
    .line 93
    iget v10, v9, Landroidx/media3/common/Format;->height:I

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 97
    move-result v1

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 101
    move-result v9

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    .line 105
    move-result v2

    .line 106
    .line 107
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_6
    if-eqz v8, :cond_7

    .line 111
    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    const-string v3, "Resolutions unknown. Codec max resolution: "

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string/jumbo v3, "x"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p3

    .line 137
    .line 138
    const-string v4, "MediaCodecVideoRenderer"

    .line 139
    .line 140
    .line 141
    invoke-static {v4, p3}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)Landroid/graphics/Point;

    .line 145
    move-result-object p3

    .line 146
    .line 147
    if-eqz p3, :cond_7

    .line 148
    .line 149
    iget v5, p3, Landroid/graphics/Point;->x:I

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    .line 153
    move-result v0

    .line 154
    .line 155
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 156
    .line 157
    .line 158
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 159
    move-result v1

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 167
    move-result-object p2

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v1}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 175
    move-result-object p2

    .line 176
    .line 177
    .line 178
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->A1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 179
    move-result p1

    .line 180
    .line 181
    .line 182
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 183
    move-result v2

    .line 184
    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    const-string p2, "Codec max resolution adjusted to: "

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    .line 209
    invoke-static {v4, p1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    :cond_7
    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    .line 215
    return-object p1
.end method

.method protected D0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iput v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 11
    .line 12
    :cond_0
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x17

    .line 15
    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R1(J)V

    .line 24
    :cond_1
    return-void
.end method

.method protected E0(Landroidx/media3/common/Format;)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->h(Landroidx/media3/common/Format;J)Z

    .line 18
    :cond_0
    return-void
.end method

.method protected F(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->f(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    .line 7
    .line 8
    iget v2, p3, Landroidx/media3/common/Format;->width:I

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 11
    .line 12
    iget v4, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 13
    .line 14
    if-gt v2, v4, :cond_0

    .line 15
    .line 16
    iget v2, p3, Landroidx/media3/common/Format;->height:I

    .line 17
    .line 18
    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 19
    .line 20
    if-le v2, v3, :cond_1

    .line 21
    .line 22
    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->E1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    .line 26
    move-result v2

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 29
    .line 30
    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    .line 31
    .line 32
    if-le v2, v3, :cond_2

    .line 33
    .line 34
    or-int/lit8 v1, v1, 0x40

    .line 35
    :cond_2
    move v7, v1

    .line 36
    .line 37
    new-instance v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 38
    .line 39
    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v7, :cond_3

    .line 42
    const/4 p1, 0x0

    .line 43
    :goto_0
    move v6, p1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_3
    iget p1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    move-object v2, v1

    .line 49
    move-object v4, p2

    .line 50
    move-object v5, p3

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    .line 54
    return-object v1
.end method

.method protected G0(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 29
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

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v13, p5

    move/from16 v14, p7

    move-wide/from16 v7, p10

    move/from16 v15, p13

    move-object/from16 v9, p14

    .line 1
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v16

    if-nez v0, :cond_0

    iput-wide v11, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    :cond_0
    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 3
    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->h(J)V

    :cond_1
    iput-wide v7, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 4
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->i0()J

    move-result-wide v0

    sub-long v5, v7, v0

    const/16 v18, 0x1

    if-eqz p12, :cond_3

    if-nez v15, :cond_3

    .line 5
    invoke-virtual {v10, v13, v14, v5, v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    return v18

    .line 6
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/16 v19, 0x0

    if-ne v0, v1, :cond_4

    move/from16 v20, v18

    goto :goto_0

    :cond_4
    move/from16 v20, v19

    .line 7
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v21, 0x3e8

    mul-long v23, v0, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide v11, v5

    move-wide/from16 v5, v23

    move-wide/from16 v7, p10

    move/from16 v9, v20

    .line 8
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->q1(JJJJZ)J

    move-result-wide v7

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-ne v0, v1, :cond_6

    .line 9
    invoke-static {v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->H1(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v10, v13, v14, v11, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 11
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2(J)V

    return v18

    :cond_5
    return v19

    :cond_6
    move-wide v5, v11

    move-wide/from16 v11, p1

    .line 12
    invoke-direct {v10, v11, v12, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->d2(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    move-object/from16 v9, p14

    .line 14
    invoke-virtual {v0, v9, v5, v6, v15}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->i(Landroidx/media3/common/Format;JZ)Z

    move-result v0

    if-nez v0, :cond_8

    return v19

    :cond_7
    move-object/from16 v9, p14

    move/from16 v19, v18

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    move/from16 v3, p7

    move-wide v4, v5

    move/from16 v6, v19

    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/common/Format;IJZ)V

    .line 16
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2(J)V

    return v18

    :cond_9
    move-object/from16 v9, p14

    if-eqz v20, :cond_15

    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v0, v11, v0

    if-nez v0, :cond_a

    goto/16 :goto_5

    .line 17
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    mul-long v2, v7, v21

    add-long/2addr v2, v0

    iget-object v4, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 18
    invoke-virtual {v4, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b(J)J

    move-result-wide v3

    iget-object v2, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 19
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    move-result v2

    if-nez v2, :cond_b

    sub-long v0, v3, v0

    .line 20
    div-long v7, v0, v21

    :cond_b
    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_c

    move/from16 v1, v18

    goto :goto_1

    :cond_c
    move/from16 v1, v19

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v16, v5

    move v6, v1

    move-wide v1, v7

    move-wide/from16 v25, v3

    move-wide/from16 v3, p3

    move-wide/from16 v27, v16

    move/from16 v5, p13

    .line 21
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->b2(JJZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 22
    invoke-virtual {v10, v11, v12, v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->J1(JZ)Z

    move-result v0

    if-eqz v0, :cond_d

    return v19

    :cond_d
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide/from16 v3, p3

    move/from16 v5, p13

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->c2(JJZ)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v6, :cond_e

    move-wide/from16 v4, v27

    .line 24
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_2

    :cond_e
    move-wide/from16 v4, v27

    .line 25
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->x1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 26
    :goto_2
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2(J)V

    return v18

    :cond_f
    move-wide/from16 v4, v27

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 27
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    move-wide/from16 v1, p3

    .line 28
    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->l(JJ)V

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 29
    invoke-virtual {v0, v9, v4, v5, v15}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->i(Landroidx/media3/common/Format;JZ)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    move/from16 v3, p7

    .line 30
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->V1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/common/Format;IJZ)V

    return v18

    :cond_10
    return v19

    .line 31
    :cond_11
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    const-wide/32 v0, 0xc350

    cmp-long v0, v7, v0

    if-gez v0, :cond_15

    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    move-wide/from16 v2, v25

    cmp-long v0, v2, v0

    if-nez v0, :cond_12

    .line 32
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->g2(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_3

    :cond_12
    move-object/from16 p8, p0

    move-wide/from16 p9, v4

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 33
    invoke-direct/range {p8 .. p13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1(JJLandroidx/media3/common/Format;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v4

    move-wide/from16 p13, v2

    .line 34
    invoke-virtual/range {p8 .. p14}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    .line 35
    :goto_3
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2(J)V

    iput-wide v2, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    return v18

    :cond_13
    move-wide/from16 v2, v25

    const-wide/16 v0, 0x7530

    cmp-long v0, v7, v0

    if-gez v0, :cond_15

    const-wide/16 v0, 0x2af8

    cmp-long v0, v7, v0

    if-lez v0, :cond_14

    const-wide/16 v0, 0x2710

    sub-long v0, v7, v0

    .line 36
    :try_start_0
    div-long v0, v0, v21

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 37
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v19

    :cond_14
    :goto_4
    move-object/from16 p8, p0

    move-wide/from16 p9, v4

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 38
    invoke-direct/range {p8 .. p13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Q1(JJLandroidx/media3/common/Format;)V

    .line 39
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->U1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 40
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->i2(J)V

    return v18

    :cond_15
    :goto_5
    return v19
.end method

.method protected G1(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/media/MediaFormat;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 6
    .line 7
    const-string v1, "mime"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget p2, p1, Landroidx/media3/common/Format;->width:I

    .line 13
    .line 14
    .line 15
    const-string/jumbo v1, "width"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 19
    .line 20
    const-string p2, "height"

    .line 21
    .line 22
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 26
    .line 27
    iget-object p2, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p2}, Landroidx/media3/common/util/MediaFormatUtil;->l(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 31
    .line 32
    const-string p2, "frame-rate"

    .line 33
    .line 34
    iget v1, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/MediaFormatUtil;->j(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p2, "rotation-degrees"

    .line 41
    .line 42
    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p2, v1}, Landroidx/media3/common/util/MediaFormatUtil;->k(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 46
    .line 47
    iget-object p2, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p2}, Landroidx/media3/common/util/MediaFormatUtil;->i(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo p2, "video/dolby-vision"

    .line 54
    .line 55
    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p2

    .line 60
    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->r(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    const-string/jumbo p2, "profile"

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p2, p1}, Landroidx/media3/common/util/MediaFormatUtil;->k(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 82
    .line 83
    :cond_0
    iget p1, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 84
    .line 85
    const-string p2, "max-width"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    .line 90
    const-string p1, "max-height"

    .line 91
    .line 92
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    .line 97
    const-string p1, "max-input-size"

    .line 98
    .line 99
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/MediaFormatUtil;->k(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 103
    .line 104
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 105
    .line 106
    const/16 p2, 0x17

    .line 107
    const/4 p3, 0x0

    .line 108
    .line 109
    if-lt p1, p2, :cond_1

    .line 110
    .line 111
    .line 112
    const-string/jumbo p1, "priority"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 116
    .line 117
    const/high16 p1, -0x40800000    # -1.0f

    .line 118
    .line 119
    cmpl-float p1, p4, p1

    .line 120
    .line 121
    if-eqz p1, :cond_1

    .line 122
    .line 123
    .line 124
    const-string/jumbo p1, "operating-rate"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 128
    .line 129
    :cond_1
    if-eqz p5, :cond_2

    .line 130
    .line 131
    .line 132
    const-string/jumbo p1, "no-post-process"

    .line 133
    const/4 p2, 0x1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 137
    .line 138
    const-string p1, "auto-frc"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 142
    .line 143
    :cond_2
    if-eqz p6, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-static {v0, p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->v1(Landroid/media/MediaFormat;I)V

    .line 147
    :cond_3
    return-object v0
.end method

.method protected J1(JZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->C(J)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p2, 0x1

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 14
    .line 15
    iget v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 16
    add-int/2addr v0, p1

    .line 17
    .line 18
    iput v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 19
    .line 20
    iget p1, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 21
    .line 22
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 23
    add-int/2addr p1, v0

    .line 24
    .line 25
    iput p1, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 29
    .line 30
    iget v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 31
    add-int/2addr v0, p2

    .line 32
    .line 33
    iput v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 34
    .line 35
    iget p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h2(II)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Y()Z

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->c()V

    .line 55
    :cond_2
    return p2
.end method

.method L1()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->A(Ljava/lang/Object;)V

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 19
    :cond_0
    return-void
.end method

.method protected M0()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M0()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 7
    return-void
.end method

.method protected P(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 2
    .param p2    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    .line 8
    return-object v0
.end method

.method protected R1(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d1(J)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1(Landroidx/media3/common/VideoSize;)V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 11
    .line 12
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->B0(J)V

    .line 23
    return-void
.end method

.method protected U1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p3, "releaseOutputBuffer"

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 7
    const/4 p3, 0x1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->e(IZ)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 16
    .line 17
    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 18
    add-int/2addr p2, p3

    .line 19
    .line 20
    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    const-wide/16 p3, 0x3e8

    .line 38
    mul-long/2addr p1, p3

    .line 39
    .line 40
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1(Landroidx/media3/common/VideoSize;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1()V

    .line 49
    :cond_0
    return-void
.end method

.method protected W0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f2(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method protected W1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo p3, "releaseOutputBuffer"

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2, p5, p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->c(IJ)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 15
    .line 16
    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    const-wide/16 p3, 0x3e8

    .line 38
    mul-long/2addr p1, p3

    .line 39
    .line 40
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->N1(Landroidx/media3/common/VideoSize;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->L1()V

    .line 49
    :cond_0
    return-void
.end method

.method protected Z0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->s(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Landroidx/media3/exoplayer/h2;->c(I)I

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    .line 24
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    invoke-static {v3, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    invoke-static {v3, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 46
    move-result v4

    .line 47
    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Landroidx/media3/exoplayer/h2;->c(I)I

    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->a1(Landroidx/media3/common/Format;)Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-nez v4, :cond_4

    .line 60
    const/4 p1, 0x2

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Landroidx/media3/exoplayer/h2;->c(I)I

    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->o(Landroidx/media3/common/Format;)Z

    .line 75
    move-result v5

    .line 76
    .line 77
    if-nez v5, :cond_6

    .line 78
    move v6, v2

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 82
    move-result v7

    .line 83
    .line 84
    if-ge v6, v7, :cond_6

    .line 85
    .line 86
    .line 87
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->o(Landroidx/media3/common/Format;)Z

    .line 94
    move-result v8

    .line 95
    .line 96
    if-eqz v8, :cond_5

    .line 97
    move v3, v1

    .line 98
    move v5, v2

    .line 99
    move-object v4, v7

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    move v3, v2

    .line 105
    .line 106
    :goto_2
    if-eqz v5, :cond_7

    .line 107
    const/4 v6, 0x4

    .line 108
    goto :goto_3

    .line 109
    :cond_7
    const/4 v6, 0x3

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->r(Landroidx/media3/common/Format;)Z

    .line 113
    move-result v7

    .line 114
    .line 115
    if-eqz v7, :cond_8

    .line 116
    .line 117
    const/16 v7, 0x10

    .line 118
    goto :goto_4

    .line 119
    .line 120
    :cond_8
    const/16 v7, 0x8

    .line 121
    .line 122
    :goto_4
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    .line 123
    .line 124
    if-eqz v4, :cond_9

    .line 125
    .line 126
    const/16 v4, 0x40

    .line 127
    goto :goto_5

    .line 128
    :cond_9
    move v4, v1

    .line 129
    .line 130
    :goto_5
    if-eqz v3, :cond_a

    .line 131
    .line 132
    const/16 v3, 0x80

    .line 133
    goto :goto_6

    .line 134
    :cond_a
    move v3, v1

    .line 135
    .line 136
    :goto_6
    sget v8, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 137
    .line 138
    const/16 v9, 0x1a

    .line 139
    .line 140
    if-lt v8, v9, :cond_b

    .line 141
    .line 142
    .line 143
    const-string/jumbo v8, "video/dolby-vision"

    .line 144
    .line 145
    iget-object v9, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v8

    .line 150
    .line 151
    if-eqz v8, :cond_b

    .line 152
    .line 153
    iget-object v8, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    invoke-static {v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->a(Landroid/content/Context;)Z

    .line 157
    move-result v8

    .line 158
    .line 159
    if-nez v8, :cond_b

    .line 160
    .line 161
    const/16 v3, 0x100

    .line 162
    .line 163
    :cond_b
    if-eqz v5, :cond_c

    .line 164
    .line 165
    iget-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    invoke-static {v5, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 173
    move-result v0

    .line 174
    .line 175
    if-nez v0, :cond_c

    .line 176
    .line 177
    .line 178
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->w(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->o(Landroidx/media3/common/Format;)Z

    .line 189
    move-result v0

    .line 190
    .line 191
    if-eqz v0, :cond_c

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->r(Landroidx/media3/common/Format;)Z

    .line 195
    move-result p1

    .line 196
    .line 197
    if-eqz p1, :cond_c

    .line 198
    .line 199
    const/16 v1, 0x20

    .line 200
    .line 201
    .line 202
    :cond_c
    invoke-static {v6, v7, v1, v4, v3}, Landroidx/media3/exoplayer/h2;->e(IIIII)I

    .line 203
    move-result p1

    .line 204
    return p1
.end method

.method protected a2(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->h(Landroid/view/Surface;)V

    .line 4
    return-void
.end method

.method protected b2(JJZ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->I1(J)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method protected c2(JJZ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->H1(J)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez p5, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
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
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->d(FF)V

    .line 4
    .line 5
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i(F)V

    .line 9
    return-void
.end method

.method protected d0()Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x17

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method protected e0(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .locals 5

    .line 1
    array-length p2, p3

    .line 2
    .line 3
    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v0

    .line 6
    .line 7
    :goto_0
    if-ge v1, p2, :cond_1

    .line 8
    .line 9
    aget-object v3, p3, v1

    .line 10
    .line 11
    iget v3, v3, Landroidx/media3/common/Format;->frameRate:F

    .line 12
    .line 13
    cmpl-float v4, v3, v0

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 19
    move-result v2

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    cmpl-float p2, v2, v0

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_2
    mul-float v0, v2, p1

    .line 30
    :goto_1
    return v0
.end method

.method protected e2(JJ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->H1(J)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    const-wide/32 p1, 0x186a0

    .line 10
    .line 11
    cmp-long p1, p3, p1

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method protected g0(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;
    .locals 2
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

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, p2, p3, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->D1(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->w(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method protected g2(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p3, "skipVideoBuffer"

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 7
    const/4 p3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->e(IZ)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 16
    .line 17
    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 18
    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 20
    .line 21
    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 22
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected h0(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    .line 7
    .line 8
    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1()V

    .line 14
    .line 15
    :cond_0
    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->p()[Landroidx/media3/common/Format;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->C1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;[Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    iput-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 26
    .line 27
    iget-boolean v7, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 28
    .line 29
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 34
    :goto_0
    move v8, v0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    move-object v2, p0

    .line 39
    move-object v3, p2

    .line 40
    move v6, p4

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->G1(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    .line 44
    move-result-object p4

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 47
    .line 48
    if-nez v0, :cond_4

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->f2(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 61
    .line 62
    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->e(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 71
    .line 72
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 79
    throw p1

    .line 80
    .line 81
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->a(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 93
    move-result-object p4

    .line 94
    .line 95
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->e()Landroid/view/Surface;

    .line 107
    move-result-object v0

    .line 108
    goto :goto_3

    .line 109
    .line 110
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 111
    .line 112
    .line 113
    :goto_3
    invoke-static {p1, p4, p2, v0, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->b(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    .line 114
    move-result-object p1

    .line 115
    return-object p1
.end method

.method protected h2(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 3
    .line 4
    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    .line 5
    add-int/2addr v1, p1

    .line 6
    .line 7
    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    .line 8
    add-int/2addr p1, p2

    .line 9
    .line 10
    iget p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    .line 11
    add-int/2addr p2, p1

    .line 12
    .line 13
    iput p2, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    .line 14
    .line 15
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 16
    add-int/2addr p2, p1

    .line 17
    .line 18
    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 19
    .line 20
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 21
    add-int/2addr p2, p1

    .line 22
    .line 23
    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 24
    .line 25
    iget p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result p1

    .line 30
    .line 31
    iput p1, v0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 32
    .line 33
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 34
    .line 35
    if-lez p1, :cond_0

    .line 36
    .line 37
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 38
    .line 39
    if-lt p2, p1, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1()V

    .line 43
    :cond_0
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    const/4 v0, 0x7

    .line 5
    .line 6
    if-eq p1, v0, :cond_5

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    const/4 v0, 0x4

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    const/4 v0, 0x5

    .line 15
    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/16 v0, 0xd

    .line 19
    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xe

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Landroidx/media3/common/util/Size;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->b()I

    .line 38
    move-result p2

    .line 39
    .line 40
    if-eqz p2, :cond_7

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->a()I

    .line 44
    move-result p2

    .line 45
    .line 46
    if-eqz p2, :cond_7

    .line 47
    .line 48
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 49
    .line 50
    if-eqz p2, :cond_7

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->p(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Ljava/util/List;

    .line 63
    .line 64
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->q(Ljava/util/List;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->o(I)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_3
    check-cast p2, Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result p1

    .line 87
    .line 88
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_4
    check-cast p2, Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result p1

    .line 107
    .line 108
    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 109
    .line 110
    if-eq p2, p1, :cond_7

    .line 111
    .line 112
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 113
    .line 114
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_5
    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 123
    .line 124
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Z1(Ljava/lang/Object;)V

    .line 129
    :cond_7
    :goto_0
    return-void
.end method

.method protected i2(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/DecoderCounters;->a(J)V

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 8
    add-long/2addr v0, p1

    .line 9
    .line 10
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 11
    .line 12
    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 13
    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 17
    return-void
.end method

.method public isEnded()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->m()Z

    .line 18
    move-result v1

    .line 19
    and-int/2addr v0, v1

    .line 20
    :cond_0
    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->g()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 39
    .line 40
    if-eq v4, v0, :cond_2

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    :cond_2
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 53
    return v1

    .line 54
    .line 55
    :cond_3
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 56
    .line 57
    cmp-long v0, v4, v2

    .line 58
    const/4 v4, 0x0

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    return v4

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    move-result-wide v5

    .line 66
    .line 67
    iget-wide v7, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 68
    .line 69
    cmp-long v0, v5, v7

    .line 70
    .line 71
    if-gez v0, :cond_5

    .line 72
    return v1

    .line 73
    .line 74
    :cond_5
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 75
    return v4
.end method

.method protected k0(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x7

    .line 19
    .line 20
    if-lt v0, v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    .line 46
    const/16 v6, -0x4b

    .line 47
    .line 48
    if-ne v0, v6, :cond_2

    .line 49
    .line 50
    const/16 v0, 0x3c

    .line 51
    .line 52
    if-ne v1, v0, :cond_2

    .line 53
    const/4 v0, 0x1

    .line 54
    .line 55
    if-ne v2, v0, :cond_2

    .line 56
    const/4 v1, 0x4

    .line 57
    .line 58
    if-ne v3, v1, :cond_2

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    if-ne v4, v0, :cond_2

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 66
    move-result v0

    .line 67
    .line 68
    new-array v0, v0, [B

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->X1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V

    .line 82
    :cond_2
    return-void
.end method

.method protected r()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->s1()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1()V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->m(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 25
    .line 26
    sget-object v1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->D(Landroidx/media3/common/VideoSize;)V

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->m(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 41
    .line 42
    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->D(Landroidx/media3/common/VideoSize;)V

    .line 46
    throw v0
.end method

.method public render(JJ)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->l(JJ)V

    .line 17
    :cond_0
    return-void
.end method

.method protected s(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->s(ZZ)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->l()Landroidx/media3/exoplayer/RendererConfiguration;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 24
    .line 25
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 26
    .line 27
    if-eq v1, p1, :cond_2

    .line 28
    .line 29
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->K0()V

    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->o(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 40
    .line 41
    iput-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    .line 44
    return-void
.end method

.method protected t(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->t(JZ)V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->r1()V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j()V

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 32
    .line 33
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 37
    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->Y1()V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 45
    :goto_0
    return-void
.end method

.method protected u1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "OMX.google"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    const-class p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 13
    monitor-enter p1

    .line 14
    .line 15
    :try_start_0
    sget-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->y1()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 24
    const/4 v0, 0x1

    .line 25
    .line 26
    sput-boolean v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    sget-boolean p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    .line 33
    return p1

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecVideoRenderer"

    .line 3
    .line 4
    const-string v1, "Video codec error"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->C(Ljava/lang/Exception;)V

    .line 13
    return-void
.end method

.method protected w()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->n()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1()V

    .line 24
    :cond_1
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->n()V

    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T1()V

    .line 46
    :cond_3
    throw v0
.end method

.method protected w0(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 3
    move-object v1, p1

    .line 4
    move-wide v2, p3

    .line 5
    move-wide v4, p5

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->k(Ljava/lang/String;JJ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->u1(Ljava/lang/String;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    iput-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->c0()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->p()Z

    .line 28
    move-result p2

    .line 29
    .line 30
    iput-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 31
    .line 32
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 33
    .line 34
    const/16 p3, 0x17

    .line 35
    .line 36
    if-lt p2, p3, :cond_0

    .line 37
    .line 38
    iget-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    new-instance p2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 46
    move-result-object p3

    .line 47
    .line 48
    .line 49
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    check-cast p3, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p0, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    .line 56
    .line 57
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 58
    .line 59
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->j(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected x()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->x()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    const-wide/16 v3, 0x3e8

    .line 19
    mul-long/2addr v1, v3

    .line 20
    .line 21
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 26
    .line 27
    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k()V

    .line 33
    return-void
.end method

.method protected x0(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->l(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method protected x1(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    .line 1
    .line 2
    const-string p3, "dropVideoBuffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 6
    const/4 p3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->e(IZ)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->h2(II)V

    .line 17
    return-void
.end method

.method protected y()V
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->K1()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->M1()V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l()V

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y()V

    .line 22
    return-void
.end method

.method protected y0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->y0(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->p(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 12
    return-object v0
.end method

.method protected z0(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 8
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->b0()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 12
    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget p2, p1, Landroidx/media3/common/Format;->width:I

    .line 19
    .line 20
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    .line 21
    goto :goto_3

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    const-string v0, "crop-right"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    const-string v3, "crop-top"

    .line 33
    .line 34
    const-string v4, "crop-bottom"

    .line 35
    .line 36
    const-string v5, "crop-left"

    .line 37
    const/4 v6, 0x1

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    move v2, v6

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v2, v1

    .line 61
    .line 62
    :goto_0
    if-eqz v2, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 66
    move-result v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 70
    move-result v5

    .line 71
    sub-int/2addr v0, v5

    .line 72
    add-int/2addr v0, v6

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_3
    const-string/jumbo v0, "width"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 80
    move-result v0

    .line 81
    .line 82
    :goto_1
    if-eqz v2, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 86
    move-result v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 90
    move-result p2

    .line 91
    sub-int/2addr v2, p2

    .line 92
    add-int/2addr v2, v6

    .line 93
    move p2, v2

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_4
    const-string v2, "height"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 100
    move-result p2

    .line 101
    :goto_2
    move v7, v0

    .line 102
    move v0, p2

    .line 103
    move p2, v7

    .line 104
    .line 105
    :goto_3
    iget v2, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->t1()Z

    .line 109
    move-result v3

    .line 110
    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 114
    .line 115
    const/16 v4, 0x5a

    .line 116
    .line 117
    if-eq v3, v4, :cond_5

    .line 118
    .line 119
    const/16 v4, 0x10e

    .line 120
    .line 121
    if-ne v3, v4, :cond_7

    .line 122
    .line 123
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 124
    .line 125
    div-float v2, v3, v2

    .line 126
    move v7, v0

    .line 127
    move v0, p2

    .line 128
    move p2, v7

    .line 129
    goto :goto_4

    .line 130
    .line 131
    :cond_6
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 135
    move-result v3

    .line 136
    .line 137
    if-nez v3, :cond_7

    .line 138
    .line 139
    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 140
    .line 141
    :cond_7
    :goto_4
    new-instance v3, Landroidx/media3/common/VideoSize;

    .line 142
    .line 143
    .line 144
    invoke-direct {v3, p2, v0, v1, v2}, Landroidx/media3/common/VideoSize;-><init>(IIIF)V

    .line 145
    .line 146
    iput-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 147
    .line 148
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 149
    .line 150
    iget v4, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->g(F)V

    .line 154
    .line 155
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->f()Z

    .line 159
    move-result v3

    .line 160
    .line 161
    if-eqz v3, :cond_8

    .line 162
    .line 163
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->f0(I)Landroidx/media3/common/Format$Builder;

    .line 179
    move-result-object p1

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->c0(F)Landroidx/media3/common/Format$Builder;

    .line 183
    move-result-object p1

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->o(Landroidx/media3/common/Format;)V

    .line 191
    :cond_8
    return-void
.end method

.method protected z1(Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 2
    .param p1    # Landroidx/media3/common/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/common/ColorInfo;",
            "Landroidx/media3/common/ColorInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->f(Landroidx/media3/common/ColorInfo;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    iget v0, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 16
    const/4 v1, 0x7

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/ColorInfo;->b()Landroidx/media3/common/ColorInfo$Builder;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x6

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->d(I)Landroidx/media3/common/ColorInfo$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method
