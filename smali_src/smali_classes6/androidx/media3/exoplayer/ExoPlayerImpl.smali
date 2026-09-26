.class final Landroidx/media3/exoplayer/ExoPlayerImpl;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$TextComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private final applicationLooper:Landroid/os/Looper;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private final audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

.field private audioFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private availableCommands:Landroidx/media3/common/Player$Commands;

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private cameraMotionListener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field private final constructorFinished:Landroidx/media3/common/util/ConditionVariable;

.field private currentCueGroup:Landroidx/media3/common/text/CueGroup;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Landroidx/media3/common/DeviceInfo;

.field final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field private foregroundMode:Z

.field private final frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private final internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private ownedSurface:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pauseAtEndOfMediaItems:Z

.field private pendingDiscontinuity:Z

.field private pendingDiscontinuityReason:I

.field private pendingOperationAcks:I

.field private pendingPlayWhenReadyChangeReason:I

.field private final period:Landroidx/media3/common/Timeline$Period;

.field final permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

.field private playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field private final playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private playerReleased:Z

.field private playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field private priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final renderers:[Landroidx/media3/exoplayer/Renderer;

.field private repeatMode:I

.field private final seekBackIncrementMs:J

.field private final seekForwardIncrementMs:J

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field private shuffleModeEnabled:Z

.field private shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surfaceHolder:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private textureView:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private throwsWhenUsingWrongThread:Z

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field private final useLazyPreparation:Z

.field private videoChangeFrameRateStrategy:I

.field private videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFrameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoOutput:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoScalingMode:I

.field private videoSize:Landroidx/media3/common/VideoSize;

.field private volume:F

.field private final wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

.field private final wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

.field private final wrappingPlayer:Landroidx/media3/common/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "media3.exoplayer"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V
    .locals 38
    .param p2    # Landroidx/media3/common/Player;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    .line 8
    .line 9
    new-instance v2, Landroidx/media3/common/util/ConditionVariable;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    .line 13
    .line 14
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    .line 15
    .line 16
    :try_start_0
    const-string v3, "ExoPlayerImpl"

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v5, "Init "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 30
    move-result v5

    .line 31
    .line 32
    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v5, " ["

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "AndroidXMedia3/1.1.1"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v5, "] ["

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    sget-object v5, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v5, "]"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/g;

    .line 80
    .line 81
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 82
    .line 83
    .line 84
    invoke-interface {v4, v5}, Lcom/google/common/base/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    check-cast v4, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 88
    .line 89
    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 90
    .line 91
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 92
    .line 93
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 94
    .line 95
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 96
    .line 97
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 98
    .line 99
    iget v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    .line 100
    .line 101
    iput v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    .line 102
    .line 103
    iget v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 104
    .line 105
    iput v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 106
    .line 107
    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->skipSilenceEnabled:Z

    .line 108
    .line 109
    iput-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 110
    .line 111
    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 112
    .line 113
    iput-wide v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    .line 114
    .line 115
    new-instance v15, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 116
    const/4 v14, 0x0

    .line 117
    .line 118
    .line 119
    invoke-direct {v15, v1, v14}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    .line 120
    .line 121
    iput-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 122
    .line 123
    new-instance v13, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 124
    .line 125
    .line 126
    invoke-direct {v13, v14}, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    .line 127
    .line 128
    iput-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 129
    .line 130
    new-instance v6, Landroid/os/Handler;

    .line 131
    .line 132
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    .line 137
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/u;

    .line 138
    .line 139
    .line 140
    invoke-interface {v5}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 141
    move-result-object v5

    .line 142
    move-object v7, v5

    .line 143
    .line 144
    check-cast v7, Landroidx/media3/exoplayer/RenderersFactory;

    .line 145
    move-object v8, v6

    .line 146
    move-object v9, v15

    .line 147
    move-object v10, v15

    .line 148
    move-object v11, v15

    .line 149
    move-object v12, v15

    .line 150
    .line 151
    .line 152
    invoke-interface/range {v7 .. v12}, Landroidx/media3/exoplayer/RenderersFactory;->a(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;

    .line 153
    move-result-object v7

    .line 154
    .line 155
    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 156
    array-length v5, v7

    .line 157
    const/4 v12, 0x0

    .line 158
    .line 159
    if-lez v5, :cond_0

    .line 160
    const/4 v5, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_0
    move v5, v12

    .line 163
    .line 164
    .line 165
    :goto_0
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 166
    .line 167
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/u;

    .line 168
    .line 169
    .line 170
    invoke-interface {v5}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 171
    move-result-object v5

    .line 172
    move-object v10, v5

    .line 173
    .line 174
    check-cast v10, Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 175
    .line 176
    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 177
    .line 178
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/u;

    .line 179
    .line 180
    .line 181
    invoke-interface {v5}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 182
    move-result-object v5

    .line 183
    .line 184
    check-cast v5, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 185
    .line 186
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 187
    .line 188
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/u;

    .line 189
    .line 190
    .line 191
    invoke-interface {v5}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 192
    move-result-object v5

    .line 193
    move-object v9, v5

    .line 194
    .line 195
    check-cast v9, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 196
    .line 197
    iput-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 198
    .line 199
    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 200
    .line 201
    iput-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    .line 202
    .line 203
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 204
    .line 205
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 206
    .line 207
    move-object/from16 v16, v15

    .line 208
    .line 209
    iget-wide v14, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    .line 210
    .line 211
    iput-wide v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    .line 212
    .line 213
    iget-wide v14, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 214
    .line 215
    iput-wide v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 216
    .line 217
    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    .line 218
    .line 219
    iput-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 220
    .line 221
    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 222
    .line 223
    iput-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    .line 224
    .line 225
    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    .line 226
    .line 227
    iput-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    .line 228
    .line 229
    if-nez p2, :cond_1

    .line 230
    move-object v5, v1

    .line 231
    goto :goto_1

    .line 232
    .line 233
    :cond_1
    move-object/from16 v5, p2

    .line 234
    .line 235
    :goto_1
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    .line 236
    .line 237
    new-instance v8, Landroidx/media3/common/util/ListenerSet;

    .line 238
    .line 239
    new-instance v11, Landroidx/media3/exoplayer/n0;

    .line 240
    .line 241
    .line 242
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/n0;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v8, v15, v14, v11}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    .line 246
    .line 247
    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 248
    .line 249
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 250
    .line 251
    .line 252
    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 253
    .line 254
    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 255
    .line 256
    new-instance v8, Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 262
    .line 263
    new-instance v8, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 264
    .line 265
    .line 266
    invoke-direct {v8, v12}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    .line 267
    .line 268
    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 269
    .line 270
    new-instance v8, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 271
    array-length v11, v7

    .line 272
    .line 273
    new-array v11, v11, [Landroidx/media3/exoplayer/RendererConfiguration;

    .line 274
    array-length v12, v7

    .line 275
    .line 276
    new-array v12, v12, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 277
    .line 278
    move-object/from16 v20, v6

    .line 279
    .line 280
    sget-object v6, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    .line 281
    .line 282
    move-object/from16 v21, v9

    .line 283
    const/4 v9, 0x0

    .line 284
    .line 285
    .line 286
    invoke-direct {v8, v11, v12, v6, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    .line 287
    .line 288
    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 289
    .line 290
    new-instance v6, Landroidx/media3/common/Timeline$Period;

    .line 291
    .line 292
    .line 293
    invoke-direct {v6}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 294
    .line 295
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 296
    .line 297
    new-instance v6, Landroidx/media3/common/Player$Commands$Builder;

    .line 298
    .line 299
    .line 300
    invoke-direct {v6}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 301
    .line 302
    const/16 v9, 0x13

    .line 303
    .line 304
    new-array v9, v9, [I

    .line 305
    .line 306
    .line 307
    fill-array-data v9, :array_0

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v9}, Landroidx/media3/common/Player$Commands$Builder;->c([I)Landroidx/media3/common/Player$Commands$Builder;

    .line 311
    move-result-object v6

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->h()Z

    .line 315
    move-result v9

    .line 316
    .line 317
    const/16 v11, 0x1d

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v11, v9}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)Landroidx/media3/common/Player$Commands$Builder;

    .line 321
    move-result-object v6

    .line 322
    .line 323
    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 324
    .line 325
    const/16 v11, 0x17

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, v11, v9}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)Landroidx/media3/common/Player$Commands$Builder;

    .line 329
    move-result-object v6

    .line 330
    .line 331
    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 332
    .line 333
    const/16 v11, 0x19

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v11, v9}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)Landroidx/media3/common/Player$Commands$Builder;

    .line 337
    move-result-object v6

    .line 338
    .line 339
    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 340
    .line 341
    const/16 v11, 0x21

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v11, v9}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)Landroidx/media3/common/Player$Commands$Builder;

    .line 345
    move-result-object v6

    .line 346
    .line 347
    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 348
    .line 349
    const/16 v11, 0x1a

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6, v11, v9}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)Landroidx/media3/common/Player$Commands$Builder;

    .line 353
    move-result-object v6

    .line 354
    .line 355
    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 356
    .line 357
    const/16 v11, 0x22

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6, v11, v9}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)Landroidx/media3/common/Player$Commands$Builder;

    .line 361
    move-result-object v6

    .line 362
    .line 363
    .line 364
    invoke-virtual {v6}, Landroidx/media3/common/Player$Commands$Builder;->e()Landroidx/media3/common/Player$Commands;

    .line 365
    move-result-object v6

    .line 366
    .line 367
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    .line 368
    .line 369
    new-instance v9, Landroidx/media3/common/Player$Commands$Builder;

    .line 370
    .line 371
    .line 372
    invoke-direct {v9}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v9, v6}, Landroidx/media3/common/Player$Commands$Builder;->b(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands$Builder;

    .line 376
    move-result-object v6

    .line 377
    const/4 v12, 0x4

    .line 378
    .line 379
    .line 380
    invoke-virtual {v6, v12}, Landroidx/media3/common/Player$Commands$Builder;->a(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 381
    move-result-object v6

    .line 382
    .line 383
    const/16 v11, 0xa

    .line 384
    .line 385
    .line 386
    invoke-virtual {v6, v11}, Landroidx/media3/common/Player$Commands$Builder;->a(I)Landroidx/media3/common/Player$Commands$Builder;

    .line 387
    move-result-object v6

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6}, Landroidx/media3/common/Player$Commands$Builder;->e()Landroidx/media3/common/Player$Commands;

    .line 391
    move-result-object v6

    .line 392
    .line 393
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 394
    const/4 v9, 0x0

    .line 395
    .line 396
    .line 397
    invoke-interface {v14, v15, v9}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 398
    move-result-object v6

    .line 399
    .line 400
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 401
    .line 402
    new-instance v6, Landroidx/media3/exoplayer/o0;

    .line 403
    .line 404
    .line 405
    invoke-direct {v6, v1}, Landroidx/media3/exoplayer/o0;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 406
    .line 407
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 408
    .line 409
    .line 410
    invoke-static {v8}, Landroidx/media3/exoplayer/PlaybackInfo;->k(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 411
    move-result-object v9

    .line 412
    .line 413
    iput-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 414
    .line 415
    .line 416
    invoke-interface {v4, v5, v15}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->G(Landroidx/media3/common/Player;Landroid/os/Looper;)V

    .line 417
    .line 418
    sget v9, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 419
    .line 420
    const/16 v5, 0x1f

    .line 421
    .line 422
    if-ge v9, v5, :cond_2

    .line 423
    .line 424
    new-instance v5, Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 425
    .line 426
    .line 427
    invoke-direct {v5}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>()V

    .line 428
    .line 429
    :goto_2
    move-object/from16 v22, v5

    .line 430
    goto :goto_3

    .line 431
    :catchall_0
    move-exception v0

    .line 432
    .line 433
    goto/16 :goto_9

    .line 434
    .line 435
    :cond_2
    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    .line 436
    .line 437
    .line 438
    invoke-static {v3, v1, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;->a(Landroid/content/Context;Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 439
    move-result-object v5

    .line 440
    goto :goto_2

    .line 441
    .line 442
    :goto_3
    new-instance v5, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 443
    .line 444
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/u;

    .line 445
    .line 446
    .line 447
    invoke-interface {v11}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 448
    move-result-object v11

    .line 449
    .line 450
    check-cast v11, Landroidx/media3/exoplayer/LoadControl;

    .line 451
    .line 452
    iget v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 453
    .line 454
    move-object/from16 v24, v13

    .line 455
    .line 456
    iget-boolean v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 457
    .line 458
    move-object/from16 v25, v14

    .line 459
    .line 460
    iget-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 461
    .line 462
    move-object/from16 v26, v15

    .line 463
    .line 464
    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 465
    .line 466
    move-object/from16 v27, v2

    .line 467
    .line 468
    move-object/from16 v28, v3

    .line 469
    .line 470
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    .line 471
    .line 472
    move-wide/from16 v29, v2

    .line 473
    .line 474
    iget-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 475
    .line 476
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooper:Landroid/os/Looper;

    .line 477
    .line 478
    move-object/from16 v31, v5

    .line 479
    .line 480
    move-object/from16 v5, v31

    .line 481
    .line 482
    move-object/from16 v33, v6

    .line 483
    .line 484
    move-object/from16 v32, v20

    .line 485
    move-object v6, v7

    .line 486
    move-object v7, v10

    .line 487
    move v0, v9

    .line 488
    .line 489
    move-object/from16 v34, v21

    .line 490
    .line 491
    const/16 v17, 0x0

    .line 492
    move-object v9, v11

    .line 493
    move-object v11, v10

    .line 494
    .line 495
    move-object/from16 v10, v34

    .line 496
    .line 497
    move-object/from16 v35, v11

    .line 498
    move v11, v12

    .line 499
    .line 500
    move/from16 p2, v0

    .line 501
    const/4 v0, 0x0

    .line 502
    move v12, v13

    .line 503
    .line 504
    move-object/from16 v36, v24

    .line 505
    move-object v13, v4

    .line 506
    .line 507
    move-object/from16 v20, v25

    .line 508
    .line 509
    move-object/from16 v37, v16

    .line 510
    .line 511
    move-wide/from16 v16, v29

    .line 512
    .line 513
    move/from16 v18, v2

    .line 514
    .line 515
    move-object/from16 v19, v26

    .line 516
    .line 517
    move-object/from16 v21, v33

    .line 518
    .line 519
    move-object/from16 v23, v3

    .line 520
    .line 521
    .line 522
    invoke-direct/range {v5 .. v23}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;-><init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/LivePlaybackSpeedControl;JZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroid/os/Looper;)V

    .line 523
    .line 524
    move-object/from16 v2, v31

    .line 525
    .line 526
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 527
    .line 528
    const/high16 v3, 0x3f800000    # 1.0f

    .line 529
    .line 530
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 531
    .line 532
    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 533
    .line 534
    sget-object v3, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    .line 535
    .line 536
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 537
    .line 538
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 539
    .line 540
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 541
    const/4 v3, -0x1

    .line 542
    .line 543
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 544
    .line 545
    const/16 v3, 0x15

    .line 546
    .line 547
    move/from16 v5, p2

    .line 548
    .line 549
    if-ge v5, v3, :cond_3

    .line 550
    .line 551
    .line 552
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x1(I)I

    .line 553
    move-result v3

    .line 554
    .line 555
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    .line 556
    goto :goto_4

    .line 557
    .line 558
    .line 559
    :cond_3
    invoke-static/range {v28 .. v28}, Landroidx/media3/common/util/Util;->G(Landroid/content/Context;)I

    .line 560
    move-result v3

    .line 561
    .line 562
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    .line 563
    .line 564
    :goto_4
    sget-object v3, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    .line 565
    .line 566
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 567
    const/4 v3, 0x1

    .line 568
    .line 569
    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->L(Landroidx/media3/common/Player$Listener;)V

    .line 573
    .line 574
    new-instance v5, Landroid/os/Handler;

    .line 575
    .line 576
    move-object/from16 v6, v26

    .line 577
    .line 578
    .line 579
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 580
    .line 581
    move-object/from16 v6, v34

    .line 582
    .line 583
    .line 584
    invoke-interface {v6, v5, v4}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->c(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 585
    .line 586
    move-object/from16 v4, v37

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b1(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V

    .line 590
    .line 591
    move-object/from16 v5, p1

    .line 592
    .line 593
    iget-wide v6, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    .line 594
    .line 595
    const-wide/16 v8, 0x0

    .line 596
    .line 597
    cmp-long v8, v6, v8

    .line 598
    .line 599
    if-lez v8, :cond_4

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u(J)V

    .line 603
    .line 604
    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    .line 605
    .line 606
    iget-object v6, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 607
    .line 608
    move-object/from16 v7, v32

    .line 609
    .line 610
    .line 611
    invoke-direct {v2, v6, v7, v4}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;)V

    .line 612
    .line 613
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    .line 614
    .line 615
    iget-boolean v6, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->b(Z)V

    .line 619
    .line 620
    new-instance v2, Landroidx/media3/exoplayer/AudioFocusManager;

    .line 621
    .line 622
    iget-object v6, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 623
    .line 624
    .line 625
    invoke-direct {v2, v6, v7, v4}, Landroidx/media3/exoplayer/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;)V

    .line 626
    .line 627
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 628
    .line 629
    iget-boolean v6, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    .line 630
    .line 631
    if-eqz v6, :cond_5

    .line 632
    .line 633
    iget-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 634
    goto :goto_5

    .line 635
    :cond_5
    const/4 v14, 0x0

    .line 636
    .line 637
    .line 638
    :goto_5
    invoke-virtual {v2, v14}, Landroidx/media3/exoplayer/AudioFocusManager;->m(Landroidx/media3/common/AudioAttributes;)V

    .line 639
    .line 640
    iget-boolean v2, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    .line 641
    .line 642
    if-eqz v2, :cond_6

    .line 643
    .line 644
    new-instance v2, Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 645
    .line 646
    iget-object v6, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 647
    .line 648
    .line 649
    invoke-direct {v2, v6, v7, v4}, Landroidx/media3/exoplayer/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/StreamVolumeManager$Listener;)V

    .line 650
    .line 651
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 652
    .line 653
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 654
    .line 655
    iget v4, v4, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 656
    .line 657
    .line 658
    invoke-static {v4}, Landroidx/media3/common/util/Util;->j0(I)I

    .line 659
    move-result v4

    .line 660
    .line 661
    .line 662
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/StreamVolumeManager;->h(I)V

    .line 663
    goto :goto_6

    .line 664
    :cond_6
    const/4 v2, 0x0

    .line 665
    .line 666
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 667
    .line 668
    :goto_6
    new-instance v2, Landroidx/media3/exoplayer/WakeLockManager;

    .line 669
    .line 670
    iget-object v4, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 671
    .line 672
    .line 673
    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/WakeLockManager;-><init>(Landroid/content/Context;)V

    .line 674
    .line 675
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    .line 676
    .line 677
    iget v4, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    .line 678
    .line 679
    if-eqz v4, :cond_7

    .line 680
    move v12, v3

    .line 681
    goto :goto_7

    .line 682
    :cond_7
    move v12, v0

    .line 683
    .line 684
    .line 685
    :goto_7
    invoke-virtual {v2, v12}, Landroidx/media3/exoplayer/WakeLockManager;->a(Z)V

    .line 686
    .line 687
    new-instance v2, Landroidx/media3/exoplayer/WifiLockManager;

    .line 688
    .line 689
    iget-object v4, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 690
    .line 691
    .line 692
    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/WifiLockManager;-><init>(Landroid/content/Context;)V

    .line 693
    .line 694
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    .line 695
    .line 696
    iget v4, v5, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    .line 697
    const/4 v5, 0x2

    .line 698
    .line 699
    if-ne v4, v5, :cond_8

    .line 700
    move v12, v3

    .line 701
    goto :goto_8

    .line 702
    :cond_8
    move v12, v0

    .line 703
    .line 704
    .line 705
    :goto_8
    invoke-virtual {v2, v12}, Landroidx/media3/exoplayer/WifiLockManager;->a(Z)V

    .line 706
    .line 707
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 708
    .line 709
    .line 710
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h1(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    .line 711
    move-result-object v0

    .line 712
    .line 713
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 714
    .line 715
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 716
    .line 717
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    .line 718
    .line 719
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    .line 720
    .line 721
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 722
    .line 723
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 724
    .line 725
    move-object/from16 v2, v35

    .line 726
    .line 727
    .line 728
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->l(Landroidx/media3/common/AudioAttributes;)V

    .line 729
    .line 730
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    .line 731
    .line 732
    .line 733
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 734
    move-result-object v0

    .line 735
    .line 736
    const/16 v2, 0xa

    .line 737
    .line 738
    .line 739
    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 740
    .line 741
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    .line 742
    .line 743
    .line 744
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 745
    move-result-object v0

    .line 746
    .line 747
    .line 748
    invoke-direct {v1, v5, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 749
    .line 750
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 751
    const/4 v2, 0x3

    .line 752
    .line 753
    .line 754
    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 755
    .line 756
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    .line 757
    .line 758
    .line 759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    move-result-object v0

    .line 761
    const/4 v2, 0x4

    .line 762
    .line 763
    .line 764
    invoke-direct {v1, v5, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 765
    .line 766
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 767
    .line 768
    .line 769
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 770
    move-result-object v0

    .line 771
    const/4 v2, 0x5

    .line 772
    .line 773
    .line 774
    invoke-direct {v1, v5, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 775
    .line 776
    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 777
    .line 778
    .line 779
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 780
    move-result-object v0

    .line 781
    .line 782
    const/16 v2, 0x9

    .line 783
    .line 784
    .line 785
    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 786
    const/4 v0, 0x7

    .line 787
    .line 788
    move-object/from16 v2, v36

    .line 789
    .line 790
    .line 791
    invoke-direct {v1, v5, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 792
    const/4 v0, 0x6

    .line 793
    .line 794
    const/16 v3, 0x8

    .line 795
    .line 796
    .line 797
    invoke-direct {v1, v0, v3, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    .line 799
    .line 800
    invoke-virtual/range {v27 .. v27}, Landroidx/media3/common/util/ConditionVariable;->f()Z

    .line 801
    return-void

    .line 802
    .line 803
    :goto_9
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v2}, Landroidx/media3/common/util/ConditionVariable;->f()Z

    .line 807
    throw v0

    .line 808
    nop

    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method static synthetic A0(Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 3
    return p1
.end method

.method private synthetic A1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->w1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 4
    return-void
.end method

.method static synthetic B0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/text/CueGroup;)Landroidx/media3/common/text/CueGroup;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 3
    return-object p1
.end method

.method private synthetic B1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/exoplayer/x0;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/x0;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method static synthetic C0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 3
    return-object p0
.end method

.method private static synthetic C1(Landroidx/media3/common/Player$Listener;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/ExoTimeoutException;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 7
    .line 8
    const/16 v1, 0x3eb

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;->k(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    .line 16
    return-void
.end method

.method static synthetic D0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 3
    return-object p1
.end method

.method private static synthetic D1(ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    .line 4
    return-void
.end method

.method static synthetic E0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1()Landroidx/media3/common/MediaMetadata;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic E1(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    .line 4
    return-void
.end method

.method static synthetic F0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 3
    return-object p0
.end method

.method private static synthetic F1(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 4
    return-void
.end method

.method static synthetic G0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 3
    return-object p1
.end method

.method private static synthetic G1(FLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    .line 4
    return-void
.end method

.method static synthetic H0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 3
    return p0
.end method

.method private synthetic H1(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    .line 6
    return-void
.end method

.method static synthetic I0(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private static synthetic I1(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    .line 6
    return-void
.end method

.method static synthetic J0(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 4
    return-void
.end method

.method private static synthetic J1(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p1, p2, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    .line 7
    return-void
.end method

.method static synthetic K0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j2(Landroid/graphics/SurfaceTexture;)V

    .line 4
    return-void
.end method

.method private static synthetic K1(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    .line 4
    return-void
.end method

.method static synthetic L0(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e2()V

    .line 4
    return-void
.end method

.method private static synthetic L1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    .line 6
    return-void
.end method

.method static synthetic M0(ZI)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r1(ZI)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic M1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    .line 6
    return-void
.end method

.method static synthetic N0(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o2(ZII)V

    .line 4
    return-void
.end method

.method private static synthetic N1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    .line 8
    return-void
.end method

.method static synthetic O0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/StreamVolumeManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 3
    return-object p0
.end method

.method private static synthetic O1(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    .line 4
    return-void
.end method

.method static synthetic P0(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h1(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic P1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onLoadingChanged(Z)V

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    .line 11
    return-void
.end method

.method static synthetic Q0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 3
    return-object p0
.end method

.method private static synthetic Q1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 3
    .line 4
    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    .line 8
    return-void
.end method

.method static synthetic R0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/DeviceInfo;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 3
    return-object p1
.end method

.method private static synthetic R1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    .line 6
    return-void
.end method

.method static synthetic S0(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r2()V

    .line 4
    return-void
.end method

.method private static synthetic S1(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    .line 6
    return-void
.end method

.method static synthetic T0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 3
    return-object p1
.end method

.method private static synthetic T1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    .line 6
    return-void
.end method

.method static synthetic U0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 3
    return-object p0
.end method

.method private static synthetic U1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/PlaybackInfo;->n()Z

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    .line 8
    return-void
.end method

.method static synthetic V0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoFormat:Landroidx/media3/common/Format;

    .line 3
    return-object p1
.end method

.method private static synthetic V1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    .line 6
    return-void
.end method

.method static synthetic W0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    .line 3
    return-object p1
.end method

.method private W1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 21
    .param p3    # Landroid/util/Pair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "Landroidx/media3/common/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/media3/exoplayer/PlaybackInfo;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->u()Z

    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v3, v4

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 27
    .line 28
    .line 29
    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 30
    move-result-wide v6

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    move-result-object v8

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->u()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroidx/media3/exoplayer/PlaybackInfo;->l()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 50
    move-result-wide v14

    .line 51
    .line 52
    const-wide/16 v16, 0x0

    .line 53
    .line 54
    sget-object v18, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 55
    .line 56
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 60
    move-result-object v20

    .line 61
    move-object v9, v1

    .line 62
    move-wide v10, v14

    .line 63
    move-wide v12, v14

    .line 64
    .line 65
    move-object/from16 v19, v2

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 76
    .line 77
    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 78
    return-object v1

    .line 79
    .line 80
    :cond_2
    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 81
    .line 82
    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-static/range {p3 .. p3}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    move-result-object v9

    .line 87
    .line 88
    check-cast v9, Landroid/util/Pair;

    .line 89
    .line 90
    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v9

    .line 95
    xor-int/2addr v9, v4

    .line 96
    .line 97
    if-eqz v9, :cond_3

    .line 98
    .line 99
    new-instance v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 100
    .line 101
    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-direct {v10, v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    .line 105
    :goto_2
    move-object v14, v10

    .line 106
    goto :goto_3

    .line 107
    .line 108
    :cond_3
    iget-object v10, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 117
    move-result-wide v12

    .line 118
    .line 119
    .line 120
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 121
    move-result-wide v6

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->u()Z

    .line 125
    move-result v2

    .line 126
    .line 127
    if-nez v2, :cond_4

    .line 128
    .line 129
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v3, v2}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Period;->r()J

    .line 137
    move-result-wide v2

    .line 138
    sub-long/2addr v6, v2

    .line 139
    .line 140
    :cond_4
    if-nez v9, :cond_5

    .line 141
    .line 142
    cmp-long v2, v12, v6

    .line 143
    .line 144
    if-gez v2, :cond_6

    .line 145
    :cond_5
    move-wide v6, v12

    .line 146
    move-object v0, v14

    .line 147
    .line 148
    goto/16 :goto_6

    .line 149
    .line 150
    :cond_6
    if-nez v2, :cond_a

    .line 151
    .line 152
    iget-object v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 153
    .line 154
    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 158
    move-result v2

    .line 159
    const/4 v3, -0x1

    .line 160
    .line 161
    if-eq v2, v3, :cond_7

    .line 162
    .line 163
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->j(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 170
    .line 171
    iget-object v3, v14, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 172
    .line 173
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 180
    .line 181
    if-eq v2, v3, :cond_9

    .line 182
    .line 183
    :cond_7
    iget-object v2, v14, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 184
    .line 185
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v14}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 192
    move-result v1

    .line 193
    .line 194
    if-eqz v1, :cond_8

    .line 195
    .line 196
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 197
    .line 198
    iget v2, v14, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 199
    .line 200
    iget v3, v14, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline$Period;->e(II)J

    .line 204
    move-result-wide v1

    .line 205
    goto :goto_4

    .line 206
    .line 207
    :cond_8
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 208
    .line 209
    iget-wide v1, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 210
    .line 211
    :goto_4
    iget-wide v10, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 212
    .line 213
    iget-wide v12, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 214
    .line 215
    iget-wide v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 216
    .line 217
    iget-wide v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 218
    .line 219
    sub-long v16, v1, v5

    .line 220
    .line 221
    iget-object v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 222
    .line 223
    iget-object v6, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 224
    .line 225
    iget-object v7, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 226
    move-object v9, v14

    .line 227
    move-object v0, v14

    .line 228
    move-wide v14, v3

    .line 229
    .line 230
    move-object/from16 v18, v5

    .line 231
    .line 232
    move-object/from16 v19, v6

    .line 233
    .line 234
    move-object/from16 v20, v7

    .line 235
    .line 236
    .line 237
    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 238
    move-result-object v3

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 242
    move-result-object v8

    .line 243
    .line 244
    iput-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 245
    .line 246
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    .line 247
    .line 248
    goto/16 :goto_d

    .line 249
    :cond_a
    move-object v0, v14

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 253
    move-result v1

    .line 254
    xor-int/2addr v1, v4

    .line 255
    .line 256
    .line 257
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 258
    .line 259
    iget-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 260
    .line 261
    sub-long v3, v12, v6

    .line 262
    sub-long/2addr v1, v3

    .line 263
    .line 264
    const-wide/16 v3, 0x0

    .line 265
    .line 266
    .line 267
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 268
    move-result-wide v16

    .line 269
    .line 270
    iget-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 271
    .line 272
    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 273
    .line 274
    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 278
    move-result v3

    .line 279
    .line 280
    if-eqz v3, :cond_b

    .line 281
    .line 282
    add-long v1, v12, v16

    .line 283
    .line 284
    :cond_b
    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 285
    .line 286
    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 287
    .line 288
    iget-object v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 289
    move-object v9, v0

    .line 290
    move-wide v10, v12

    .line 291
    move-wide v6, v12

    .line 292
    move-wide v14, v6

    .line 293
    .line 294
    move-object/from16 v18, v3

    .line 295
    .line 296
    move-object/from16 v19, v4

    .line 297
    .line 298
    move-object/from16 v20, v5

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 302
    move-result-object v8

    .line 303
    .line 304
    iput-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 305
    goto :goto_5

    .line 306
    .line 307
    .line 308
    :goto_6
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 309
    move-result v1

    .line 310
    xor-int/2addr v1, v4

    .line 311
    .line 312
    .line 313
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 314
    .line 315
    const-wide/16 v16, 0x0

    .line 316
    .line 317
    if-eqz v9, :cond_c

    .line 318
    .line 319
    sget-object v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 320
    .line 321
    :goto_7
    move-object/from16 v18, v1

    .line 322
    goto :goto_8

    .line 323
    .line 324
    :cond_c
    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 325
    goto :goto_7

    .line 326
    :goto_8
    move-object v1, v0

    .line 327
    .line 328
    move-object/from16 v0, p0

    .line 329
    .line 330
    if-eqz v9, :cond_d

    .line 331
    .line 332
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 333
    .line 334
    :goto_9
    move-object/from16 v19, v2

    .line 335
    goto :goto_a

    .line 336
    .line 337
    :cond_d
    iget-object v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 338
    goto :goto_9

    .line 339
    .line 340
    :goto_a
    if-eqz v9, :cond_e

    .line 341
    .line 342
    .line 343
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 344
    move-result-object v2

    .line 345
    .line 346
    :goto_b
    move-object/from16 v20, v2

    .line 347
    goto :goto_c

    .line 348
    .line 349
    :cond_e
    iget-object v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 350
    goto :goto_b

    .line 351
    :goto_c
    move-object v9, v1

    .line 352
    move-wide v10, v6

    .line 353
    move-wide v12, v6

    .line 354
    move-wide v14, v6

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 358
    move-result-object v2

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 362
    move-result-object v8

    .line 363
    .line 364
    iput-wide v6, v8, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 365
    :goto_d
    return-object v8
.end method

.method static synthetic X0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3
    return-object p0
.end method

.method private X1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    cmp-long p1, p3, p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-wide/16 p3, 0x0

    .line 20
    .line 21
    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 25
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 v0, -0x1

    .line 28
    .line 29
    if-eq p2, v0, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->t()I

    .line 33
    move-result v0

    .line 34
    .line 35
    if-lt p2, v0, :cond_2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move v3, p2

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->e(Z)I

    .line 44
    move-result p2

    .line 45
    .line 46
    iget-object p3, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroidx/media3/common/Timeline$Window;->d()J

    .line 54
    move-result-wide p3

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :goto_2
    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 60
    .line 61
    .line 62
    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 63
    move-result-wide v4

    .line 64
    move-object v0, p1

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method static synthetic Y0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method private Y1(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->b()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->a()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    :cond_0
    new-instance v0, Landroidx/media3/common/util/Size;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 26
    .line 27
    new-instance v1, Landroidx/media3/exoplayer/s0;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/s0;-><init>(II)V

    .line 31
    .line 32
    const/16 v2, 0x18

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->l(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 36
    .line 37
    new-instance v0, Landroidx/media3/common/util/Size;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    .line 41
    const/4 p1, 0x2

    .line 42
    .line 43
    const/16 p2, 0xe

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 47
    :cond_1
    return-void
.end method

.method static synthetic Z0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 3
    return-object p1
.end method

.method private Z1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J
    .locals 1

    .line 1
    .line 2
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Period;->r()J

    .line 13
    move-result-wide p1

    .line 14
    add-long/2addr p3, p1

    .line 15
    return-wide p3
.end method

.method public static synthetic a0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->P1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private a2(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 4
    move-result v6

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 8
    move-result-wide v4

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v7

    .line 17
    .line 18
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 19
    const/4 v8, 0x1

    .line 20
    add-int/2addr v0, v8

    .line 21
    .line 22
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b2(II)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i1()Landroidx/media3/common/Timeline;

    .line 29
    move-result-object v9

    .line 30
    move-object v0, p0

    .line 31
    move-object v2, v9

    .line 32
    move v3, v6

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q1(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1, v9, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->W1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iget v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 43
    .line 44
    if-eq v0, v8, :cond_0

    .line 45
    const/4 v1, 0x4

    .line 46
    .line 47
    if-eq v0, v1, :cond_0

    .line 48
    .line 49
    if-ge p2, p3, :cond_0

    .line 50
    .line 51
    if-ne p3, v7, :cond_0

    .line 52
    .line 53
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->t()I

    .line 57
    move-result v0

    .line 58
    .line 59
    if-lt v6, v0, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p2, p3, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o0(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 71
    return-object p1
.end method

.method public static synthetic b0(FLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->G1(FLandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private b2(II)V
    .locals 2

    .line 1
    .line 2
    add-int/lit8 v0, p2, -0x1

    .line 3
    .line 4
    :goto_0
    if-lt v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->a(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 21
    return-void
.end method

.method public static synthetic c0(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->S1(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private c1(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource;

    .line 21
    .line 22
    iget-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 31
    .line 32
    add-int v4, v1, p1

    .line 33
    .line 34
    new-instance v5, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    .line 35
    .line 36
    iget-object v6, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->H0()Landroidx/media3/common/Timeline;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-direct {v5, v6, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Landroidx/media3/common/Timeline;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 64
    return-object v0
.end method

.method private c2()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const/16 v2, 0x2710

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlayerMessage;->n(I)Landroidx/media3/exoplayer/PlayerMessage;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->m(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->l()Landroidx/media3/exoplayer/PlayerMessage;

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->i(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 32
    .line 33
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 44
    .line 45
    if-eq v0, v2, :cond_1

    .line 46
    .line 47
    const-string v0, "ExoPlayerImpl"

    .line 48
    .line 49
    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 59
    .line 60
    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 70
    .line 71
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 72
    :cond_3
    return-void
.end method

.method public static synthetic d0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Q1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private d2(IILjava/lang/Object;)V
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    .line 12
    move-result v4

    .line 13
    .line 14
    if-ne v4, p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p2}, Landroidx/media3/exoplayer/PlayerMessage;->n(I)Landroidx/media3/exoplayer/PlayerMessage;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p3}, Landroidx/media3/exoplayer/PlayerMessage;->m(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->l()Landroidx/media3/exoplayer/PlayerMessage;

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public static synthetic e0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->z1(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method

.method private e1(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)",
            "Landroidx/media3/exoplayer/PlaybackInfo;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 3
    .line 4
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c1(ILjava/util/List;)Ljava/util/List;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i1()Landroidx/media3/common/Timeline;

    .line 16
    move-result-object v6

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 20
    move-result v3

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 24
    move-result-wide v4

    .line 25
    move-object v0, p0

    .line 26
    move-object v2, v6

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q1(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->W1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2, p3, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 42
    return-object p1
.end method

.method private e2()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/media3/exoplayer/AudioFocusManager;->g()F

    .line 8
    move-result v1

    .line 9
    mul-float/2addr v0, v1

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v2, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d2(IILjava/lang/Object;)V

    .line 19
    return-void
.end method

.method public static synthetic f0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->U1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private f1()Landroidx/media3/common/MediaMetadata;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x()I

    .line 17
    move-result v1

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->b()Landroidx/media3/common/MediaMetadata$Builder;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->J(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->H()Landroidx/media3/common/MediaMetadata;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public static synthetic g0(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->C1(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic h0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->L1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private static h1(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;
    .locals 3
    .param p0    # Landroidx/media3/exoplayer/StreamVolumeManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->d()I

    .line 12
    move-result v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/media3/common/DeviceInfo$Builder;->g(I)Landroidx/media3/common/DeviceInfo$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->c()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;->f(I)Landroidx/media3/common/DeviceInfo$Builder;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/common/DeviceInfo$Builder;->e()Landroidx/media3/common/DeviceInfo;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private h2(Ljava/util/List;IJZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v10, p0

    .line 3
    .line 4
    move/from16 v0, p2

    .line 5
    .line 6
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 7
    .line 8
    .line 9
    invoke-direct {v10, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    iget v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 17
    const/4 v5, 0x1

    .line 18
    add-int/2addr v4, v5

    .line 19
    .line 20
    iput v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 21
    .line 22
    iget-object v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v4

    .line 27
    const/4 v6, 0x0

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    iget-object v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 35
    move-result v4

    .line 36
    .line 37
    .line 38
    invoke-direct {v10, v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->b2(II)V

    .line 39
    .line 40
    :cond_0
    move-object/from16 v4, p1

    .line 41
    .line 42
    .line 43
    invoke-direct {v10, v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c1(ILjava/util/List;)Ljava/util/List;

    .line 44
    move-result-object v12

    .line 45
    .line 46
    .line 47
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i1()Landroidx/media3/common/Timeline;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->u()Z

    .line 52
    move-result v7

    .line 53
    .line 54
    if-nez v7, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->t()I

    .line 58
    move-result v7

    .line 59
    .line 60
    if-ge v0, v7, :cond_2

    .line 61
    .line 62
    :cond_1
    move-wide/from16 v7, p3

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    new-instance v1, Landroidx/media3/common/IllegalSeekPositionException;

    .line 66
    .line 67
    move-wide/from16 v7, p3

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, v4, v0, v7, v8}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 71
    throw v1

    .line 72
    :goto_0
    const/4 v9, -0x1

    .line 73
    .line 74
    if-eqz p5, :cond_3

    .line 75
    .line 76
    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v0}, Landroidx/media3/common/Timeline;->e(Z)I

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    move v13, v0

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_3
    if-ne v0, v9, :cond_4

    .line 90
    move v13, v1

    .line 91
    move-wide v1, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move v13, v0

    .line 94
    move-wide v1, v7

    .line 95
    .line 96
    :goto_1
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 97
    .line 98
    .line 99
    invoke-direct {v10, v4, v13, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->X1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    invoke-direct {v10, v0, v4, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->W1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    iget v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 107
    .line 108
    if-eq v13, v9, :cond_7

    .line 109
    .line 110
    if-eq v3, v5, :cond_7

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->u()Z

    .line 114
    move-result v3

    .line 115
    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->t()I

    .line 120
    move-result v3

    .line 121
    .line 122
    if-lt v13, v3, :cond_5

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    const/4 v3, 0x2

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    iget-object v11, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 136
    move-result-wide v14

    .line 137
    .line 138
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 139
    .line 140
    move-object/from16 v16, v0

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {v11 .. v16}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q0(Ljava/util/List;IJLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 144
    .line 145
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 150
    .line 151
    iget-object v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 152
    .line 153
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-nez v0, :cond_8

    .line 160
    .line 161
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 162
    .line 163
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 167
    move-result v0

    .line 168
    .line 169
    if-nez v0, :cond_8

    .line 170
    move v4, v5

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    move v4, v6

    .line 173
    :goto_4
    const/4 v2, 0x0

    .line 174
    const/4 v5, 0x1

    .line 175
    const/4 v6, 0x4

    .line 176
    .line 177
    .line 178
    invoke-direct {v10, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 179
    move-result-wide v7

    .line 180
    const/4 v9, -0x1

    .line 181
    const/4 v11, 0x0

    .line 182
    .line 183
    move-object/from16 v0, p0

    .line 184
    move-object v1, v3

    .line 185
    move v3, v5

    .line 186
    move v5, v6

    .line 187
    move-wide v6, v7

    .line 188
    move v8, v9

    .line 189
    move v9, v11

    .line 190
    .line 191
    .line 192
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 193
    return-void
.end method

.method public static synthetic i0(IILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->y1(IILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private i1()Landroidx/media3/common/Timeline;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 10
    return-object v0
.end method

.method private i2(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 46
    :goto_0
    return-void
.end method

.method public static synthetic j0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->V1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private j1(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Landroidx/media3/common/MediaItem;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->d(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method private j2(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/view/Surface;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 11
    return-void
.end method

.method public static synthetic k0(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->K1(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private k1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    new-instance v8, Landroidx/media3/exoplayer/PlayerMessage;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 13
    .line 14
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 15
    const/4 v1, -0x1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    :cond_0
    move v5, v0

    .line 20
    .line 21
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B()Landroid/os/Looper;

    .line 25
    move-result-object v7

    .line 26
    move-object v1, v8

    .line 27
    move-object v3, p1

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/PlayerMessage;-><init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V

    .line 31
    return-object v8
.end method

.method private k2(Ljava/lang/Object;)V
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const/4 v5, 0x1

    .line 12
    .line 13
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    aget-object v6, v1, v4

    .line 16
    .line 17
    .line 18
    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    .line 19
    move-result v7

    .line 20
    const/4 v8, 0x2

    .line 21
    .line 22
    if-ne v7, v8, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/PlayerMessage;->n(I)Landroidx/media3/exoplayer/PlayerMessage;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, p1}, Landroidx/media3/exoplayer/PlayerMessage;->m(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->l()Landroidx/media3/exoplayer/PlayerMessage;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    if-eq v1, p1, :cond_3

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Landroidx/media3/exoplayer/PlayerMessage;

    .line 67
    .line 68
    iget-wide v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/PlayerMessage;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move v3, v5

    .line 74
    goto :goto_2

    .line 75
    .line 76
    .line 77
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 82
    .line 83
    :cond_2
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    .line 84
    .line 85
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 86
    .line 87
    if-ne v0, v1, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 91
    const/4 v0, 0x0

    .line 92
    .line 93
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 94
    .line 95
    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    new-instance p1, Landroidx/media3/exoplayer/ExoTimeoutException;

    .line 100
    const/4 v0, 0x3

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 104
    .line 105
    const/16 v0, 0x3eb

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlaybackException;->k(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m2(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 113
    :cond_4
    return-void
.end method

.method public static synthetic l0(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->J1(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private l1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance p1, Landroid/util/Pair;

    .line 24
    .line 25
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-object p1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x3

    .line 39
    .line 40
    if-eq v2, v4, :cond_1

    .line 41
    .line 42
    new-instance p1, Landroid/util/Pair;

    .line 43
    .line 44
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-object p1

    .line 53
    .line 54
    :cond_1
    iget-object v2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 55
    .line 56
    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v4}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 65
    .line 66
    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v4}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 75
    .line 76
    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 85
    .line 86
    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 97
    const/4 v1, 0x2

    .line 98
    const/4 v2, 0x1

    .line 99
    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    if-eqz p3, :cond_2

    .line 103
    .line 104
    if-nez p4, :cond_2

    .line 105
    move v5, v2

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_2
    if-eqz p3, :cond_3

    .line 109
    .line 110
    if-ne p4, v2, :cond_3

    .line 111
    move v5, v1

    .line 112
    goto :goto_0

    .line 113
    .line 114
    :cond_3
    if-eqz p5, :cond_4

    .line 115
    .line 116
    :goto_0
    new-instance p1, Landroid/util/Pair;

    .line 117
    .line 118
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object p3

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    return-object p1

    .line 127
    .line 128
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 132
    throw p1

    .line 133
    .line 134
    :cond_5
    if-eqz p3, :cond_6

    .line 135
    .line 136
    if-nez p4, :cond_6

    .line 137
    .line 138
    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 139
    .line 140
    iget-wide v4, p2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 141
    .line 142
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 143
    .line 144
    iget-wide p1, p1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 145
    .line 146
    cmp-long p1, v4, p1

    .line 147
    .line 148
    if-gez p1, :cond_6

    .line 149
    .line 150
    new-instance p1, Landroid/util/Pair;

    .line 151
    .line 152
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 153
    const/4 p3, 0x0

    .line 154
    .line 155
    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object p3

    .line 158
    .line 159
    .line 160
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    return-object p1

    .line 162
    .line 163
    :cond_6
    if-eqz p3, :cond_7

    .line 164
    .line 165
    if-ne p4, v2, :cond_7

    .line 166
    .line 167
    if-eqz p6, :cond_7

    .line 168
    .line 169
    new-instance p1, Landroid/util/Pair;

    .line 170
    .line 171
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object p3

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    return-object p1

    .line 180
    .line 181
    :cond_7
    new-instance p1, Landroid/util/Pair;

    .line 182
    .line 183
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    return-object p1
.end method

.method public static synthetic m0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->A1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method private m2(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 12
    .param p1    # Landroidx/media3/exoplayer/ExoPlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 11
    .line 12
    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 27
    move-result-object v0

    .line 28
    :cond_0
    move-object v3, v0

    .line 29
    .line 30
    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 31
    add-int/2addr p1, v1

    .line 32
    .line 33
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k1()V

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x1

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x5

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    const/4 v10, -0x1

    .line 49
    const/4 v11, 0x0

    .line 50
    move-object v2, p0

    .line 51
    .line 52
    .line 53
    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 54
    return-void
.end method

.method public static synthetic n0(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->F1(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private n1(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 20
    .line 21
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 36
    move-result p1

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->d()J

    .line 46
    move-result-wide v0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->q()J

    .line 53
    move-result-wide v0

    .line 54
    .line 55
    iget-wide v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 59
    move-result-wide v2

    .line 60
    add-long/2addr v0, v2

    .line 61
    :goto_0
    return-wide v0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 65
    move-result-wide v0

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 69
    move-result-wide v0

    .line 70
    return-wide v0
.end method

.method private n2()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->I(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 21
    .line 22
    new-instance v1, Landroidx/media3/exoplayer/w0;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/w0;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic o0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->B1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method private o1(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->m()J

    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 27
    .line 28
    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    return-wide v0

    .line 36
    .line 37
    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    .line 43
    move-result-wide v0

    .line 44
    return-wide v0
.end method

.method private o2(ZII)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    move p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    if-eq p2, v1, :cond_1

    .line 15
    move v0, v1

    .line 16
    .line 17
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 18
    .line 19
    iget-boolean v2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 20
    .line 21
    if-ne v2, p1, :cond_2

    .line 22
    .line 23
    iget v2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 24
    .line 25
    if-ne v2, v0, :cond_2

    .line 26
    return-void

    .line 27
    .line 28
    :cond_2
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 29
    add-int/2addr v2, v1

    .line 30
    .line 31
    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 32
    .line 33
    iget-boolean v1, p2, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/media3/exoplayer/PlaybackInfo;->a()Landroidx/media3/exoplayer/PlaybackInfo;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    :cond_3
    invoke-virtual {p2, p1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->e(ZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T0(ZI)V

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x5

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    const/4 v9, -0x1

    .line 58
    const/4 v10, 0x0

    .line 59
    move-object v1, p0

    .line 60
    move v4, p3

    .line 61
    .line 62
    .line 63
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 64
    return-void
.end method

.method public static synthetic p0(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->E1(ZLandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private p1(Landroidx/media3/exoplayer/PlaybackInfo;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 11
    return p1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget p1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 26
    return p1
.end method

.method private p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move/from16 v9, p5

    .line 7
    .line 8
    iget-object v10, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 9
    .line 10
    iput-object v8, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 13
    .line 14
    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    const/4 v11, 0x1

    .line 20
    .line 21
    xor-int/lit8 v12, v0, 0x1

    .line 22
    .line 23
    move-object/from16 v0, p0

    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    move-object v2, v10

    .line 27
    .line 28
    move/from16 v3, p4

    .line 29
    .line 30
    move/from16 v4, p5

    .line 31
    move v5, v12

    .line 32
    .line 33
    move/from16 v6, p9

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v0

    .line 54
    .line 55
    iget-object v2, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 56
    const/4 v3, 0x0

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->u()Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-nez v4, :cond_0

    .line 67
    .line 68
    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 69
    .line 70
    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 71
    .line 72
    iget-object v4, v4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v5, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 81
    .line 82
    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 83
    .line 84
    iget-object v5, v7, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3, v5}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 91
    .line 92
    :cond_0
    sget-object v4, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    .line 93
    .line 94
    iput-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 95
    .line 96
    :cond_1
    if-nez v1, :cond_2

    .line 97
    .line 98
    iget-object v4, v10, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 99
    .line 100
    iget-object v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 101
    .line 102
    .line 103
    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v4

    .line 105
    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    :cond_2
    iget-object v2, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->b()Landroidx/media3/common/MediaMetadata$Builder;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4}, Landroidx/media3/common/MediaMetadata$Builder;->L(Ljava/util/List;)Landroidx/media3/common/MediaMetadata$Builder;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata$Builder;->H()Landroidx/media3/common/MediaMetadata;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    iput-object v2, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 125
    .line 126
    .line 127
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f1()Landroidx/media3/common/MediaMetadata;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    :cond_3
    iget-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v4}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v4

    .line 135
    xor-int/2addr v4, v11

    .line 136
    .line 137
    iput-object v2, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 138
    .line 139
    iget-boolean v2, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 140
    .line 141
    iget-boolean v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 142
    const/4 v6, 0x0

    .line 143
    .line 144
    if-eq v2, v5, :cond_4

    .line 145
    move v2, v11

    .line 146
    goto :goto_0

    .line 147
    :cond_4
    move v2, v6

    .line 148
    .line 149
    :goto_0
    iget v5, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 150
    .line 151
    iget v13, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 152
    .line 153
    if-eq v5, v13, :cond_5

    .line 154
    move v5, v11

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    move v5, v6

    .line 157
    .line 158
    :goto_1
    if-nez v5, :cond_6

    .line 159
    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r2()V

    .line 164
    .line 165
    :cond_7
    iget-boolean v13, v10, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    .line 166
    .line 167
    iget-boolean v14, v8, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    .line 168
    .line 169
    if-eq v13, v14, :cond_8

    .line 170
    move v13, v11

    .line 171
    goto :goto_2

    .line 172
    :cond_8
    move v13, v6

    .line 173
    .line 174
    :goto_2
    if-eqz v13, :cond_9

    .line 175
    .line 176
    .line 177
    invoke-direct {v7, v14}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q2(Z)V

    .line 178
    .line 179
    :cond_9
    if-eqz v12, :cond_a

    .line 180
    .line 181
    iget-object v12, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 182
    .line 183
    new-instance v14, Landroidx/media3/exoplayer/i0;

    .line 184
    .line 185
    move/from16 v15, p2

    .line 186
    .line 187
    .line 188
    invoke-direct {v14, v8, v15}, Landroidx/media3/exoplayer/i0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v12, v6, v14}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 192
    .line 193
    :cond_a
    if-eqz p4, :cond_b

    .line 194
    .line 195
    move/from16 v6, p8

    .line 196
    .line 197
    .line 198
    invoke-direct {v7, v9, v10, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u1(ILandroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/common/Player$PositionInfo;

    .line 199
    move-result-object v6

    .line 200
    .line 201
    move-wide/from16 v14, p6

    .line 202
    .line 203
    .line 204
    invoke-direct {v7, v14, v15}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t1(J)Landroidx/media3/common/Player$PositionInfo;

    .line 205
    move-result-object v12

    .line 206
    .line 207
    iget-object v14, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 208
    .line 209
    new-instance v15, Landroidx/media3/exoplayer/b1;

    .line 210
    .line 211
    .line 212
    invoke-direct {v15, v9, v6, v12}, Landroidx/media3/exoplayer/b1;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    .line 213
    .line 214
    const/16 v6, 0xb

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v6, v15}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 218
    .line 219
    :cond_b
    if-eqz v1, :cond_c

    .line 220
    .line 221
    iget-object v1, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 222
    .line 223
    new-instance v6, Landroidx/media3/exoplayer/c1;

    .line 224
    .line 225
    .line 226
    invoke-direct {v6, v3, v0}, Landroidx/media3/exoplayer/c1;-><init>(Landroidx/media3/common/MediaItem;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v11, v6}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 230
    .line 231
    :cond_c
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 232
    .line 233
    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 234
    .line 235
    if-eq v0, v1, :cond_d

    .line 236
    .line 237
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 238
    .line 239
    new-instance v1, Landroidx/media3/exoplayer/d1;

    .line 240
    .line 241
    .line 242
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/d1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 243
    .line 244
    const/16 v3, 0xa

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 248
    .line 249
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 250
    .line 251
    if-eqz v0, :cond_d

    .line 252
    .line 253
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 254
    .line 255
    new-instance v1, Landroidx/media3/exoplayer/e1;

    .line 256
    .line 257
    .line 258
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/e1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 262
    .line 263
    :cond_d
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 264
    .line 265
    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 266
    .line 267
    if-eq v0, v1, :cond_e

    .line 268
    .line 269
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 270
    .line 271
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->i(Ljava/lang/Object;)V

    .line 275
    .line 276
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 277
    .line 278
    new-instance v1, Landroidx/media3/exoplayer/f1;

    .line 279
    .line 280
    .line 281
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/f1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 282
    const/4 v3, 0x2

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 286
    .line 287
    :cond_e
    if-eqz v4, :cond_f

    .line 288
    .line 289
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 290
    .line 291
    iget-object v1, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 292
    .line 293
    new-instance v3, Landroidx/media3/exoplayer/j0;

    .line 294
    .line 295
    .line 296
    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/j0;-><init>(Landroidx/media3/common/MediaMetadata;)V

    .line 297
    .line 298
    const/16 v0, 0xe

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v0, v3}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 302
    .line 303
    :cond_f
    if-eqz v13, :cond_10

    .line 304
    .line 305
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 306
    .line 307
    new-instance v1, Landroidx/media3/exoplayer/k0;

    .line 308
    .line 309
    .line 310
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/k0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 311
    const/4 v3, 0x3

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 315
    .line 316
    :cond_10
    if-nez v5, :cond_11

    .line 317
    .line 318
    if-eqz v2, :cond_12

    .line 319
    .line 320
    :cond_11
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 321
    .line 322
    new-instance v1, Landroidx/media3/exoplayer/l0;

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/l0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 326
    const/4 v3, -0x1

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 330
    .line 331
    :cond_12
    if-eqz v5, :cond_13

    .line 332
    .line 333
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 334
    .line 335
    new-instance v1, Landroidx/media3/exoplayer/m0;

    .line 336
    .line 337
    .line 338
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/m0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 339
    const/4 v3, 0x4

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 343
    .line 344
    :cond_13
    if-eqz v2, :cond_14

    .line 345
    .line 346
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 347
    .line 348
    new-instance v1, Landroidx/media3/exoplayer/t0;

    .line 349
    .line 350
    move/from16 v2, p3

    .line 351
    .line 352
    .line 353
    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/t0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    .line 354
    const/4 v2, 0x5

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 358
    .line 359
    :cond_14
    iget v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 360
    .line 361
    iget v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 362
    .line 363
    if-eq v0, v1, :cond_15

    .line 364
    .line 365
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 366
    .line 367
    new-instance v1, Landroidx/media3/exoplayer/y0;

    .line 368
    .line 369
    .line 370
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/y0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 371
    const/4 v2, 0x6

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 375
    .line 376
    .line 377
    :cond_15
    invoke-virtual {v10}, Landroidx/media3/exoplayer/PlaybackInfo;->n()Z

    .line 378
    move-result v0

    .line 379
    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/PlaybackInfo;->n()Z

    .line 382
    move-result v1

    .line 383
    .line 384
    if-eq v0, v1, :cond_16

    .line 385
    .line 386
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 387
    .line 388
    new-instance v1, Landroidx/media3/exoplayer/z0;

    .line 389
    .line 390
    .line 391
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/z0;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 392
    const/4 v2, 0x7

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 396
    .line 397
    :cond_16
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 398
    .line 399
    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    .line 403
    move-result v0

    .line 404
    .line 405
    if-nez v0, :cond_17

    .line 406
    .line 407
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 408
    .line 409
    new-instance v1, Landroidx/media3/exoplayer/a1;

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/a1;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 413
    .line 414
    const/16 v2, 0xc

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 418
    .line 419
    .line 420
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n2()V

    .line 421
    .line 422
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->f()V

    .line 426
    .line 427
    iget-boolean v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 428
    .line 429
    iget-boolean v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 430
    .line 431
    if-eq v0, v1, :cond_18

    .line 432
    .line 433
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 437
    move-result-object v0

    .line 438
    .line 439
    .line 440
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    move-result v1

    .line 442
    .line 443
    if-eqz v1, :cond_18

    .line 444
    .line 445
    .line 446
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    move-result-object v1

    .line 448
    .line 449
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 450
    .line 451
    iget-boolean v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 452
    .line 453
    .line 454
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;->o(Z)V

    .line 455
    goto :goto_3

    .line 456
    :cond_18
    return-void
.end method

.method public static synthetic q0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->R1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private q1(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Landroidx/media3/common/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    const/4 v11, -0x1

    .line 13
    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->u()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v3, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 24
    .line 25
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 26
    .line 27
    .line 28
    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 29
    move-result-wide v6

    .line 30
    move-object v2, p1

    .line 31
    move v5, p3

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Landroid/util/Pair;

    .line 42
    .line 43
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v5}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eq v2, v11, :cond_1

    .line 50
    return-object v1

    .line 51
    .line 52
    :cond_1
    iget-object v1, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 53
    .line 54
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 55
    .line 56
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 57
    .line 58
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 59
    move-object v6, p1

    .line 60
    move-object v7, p2

    .line 61
    .line 62
    .line 63
    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1, v2}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 72
    .line 73
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 74
    .line 75
    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 76
    .line 77
    iget-object v2, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1, v2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->d()J

    .line 85
    move-result-wide v2

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p2, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->X1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 89
    move-result-object v1

    .line 90
    return-object v1

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-direct {p0, p2, v11, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->X1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 94
    move-result-object v1

    .line 95
    return-object v1

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 99
    move-result v1

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->u()Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_4

    .line 108
    const/4 v1, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    const/4 v1, 0x0

    .line 111
    .line 112
    :goto_1
    if-eqz v1, :cond_5

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    move v11, p3

    .line 115
    .line 116
    :goto_2
    if-eqz v1, :cond_6

    .line 117
    goto :goto_3

    .line 118
    .line 119
    :cond_6
    move-wide/from16 v9, p4

    .line 120
    .line 121
    .line 122
    :goto_3
    invoke-direct {p0, p2, v11, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->X1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 123
    move-result-object v1

    .line 124
    return-object v1
.end method

.method private q2(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->a(I)V

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    .line 28
    .line 29
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic r0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->T1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private static r1(ZI)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private r2()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    const/4 v3, 0x2

    .line 10
    .line 11
    if-eq v0, v3, :cond_1

    .line 12
    const/4 v3, 0x3

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    const/4 v1, 0x4

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 24
    throw v0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m1()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v1, v2

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/WakeLockManager;->b(Z)V

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->b(Z)V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/WakeLockManager;->b(Z)V

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/WifiLockManager;->b(Z)V

    .line 64
    :goto_2
    return-void
.end method

.method public static synthetic s0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->H1(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private s2()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->c()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s()Landroid/os/Looper;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s()Landroid/os/Looper;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x1

    .line 47
    .line 48
    aput-object v1, v0, v2

    .line 49
    .line 50
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->D(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    .line 61
    .line 62
    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 70
    .line 71
    :goto_0
    const-string v3, "ExoPlayerImpl"

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v0, v1}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    iput-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v1

    .line 84
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic t0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->M1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private t1(J)Landroidx/media3/common/Player$PositionInfo;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x()I

    .line 4
    move-result v2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v3}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 35
    move-result v0

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 40
    .line 41
    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 50
    .line 51
    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 52
    move v5, v0

    .line 53
    move-object v12, v4

    .line 54
    move-object v4, v1

    .line 55
    move-object v1, v3

    .line 56
    move-object v3, v12

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    const/4 v1, -0x1

    .line 60
    move-object v3, v0

    .line 61
    move-object v4, v3

    .line 62
    move v5, v1

    .line 63
    move-object v1, v4

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 67
    move-result-wide v6

    .line 68
    .line 69
    new-instance p1, Landroidx/media3/common/Player$PositionInfo;

    .line 70
    .line 71
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 72
    .line 73
    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 77
    move-result p2

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 85
    move-result-wide v8

    .line 86
    .line 87
    .line 88
    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 89
    move-result-wide v8

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-wide v8, v6

    .line 92
    .line 93
    :goto_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 94
    .line 95
    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 96
    .line 97
    iget v10, p2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 98
    .line 99
    iget v11, p2, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 100
    move-object v0, p1

    .line 101
    .line 102
    .line 103
    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 104
    return-object p1
.end method

.method public static synthetic u0(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->I1(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private u1(ILandroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/common/Player$PositionInfo;
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 10
    .line 11
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->u()Z

    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 21
    .line 22
    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v3, v2}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 28
    .line 29
    iget v5, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 30
    .line 31
    iget-object v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v3}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 35
    move-result v6

    .line 36
    .line 37
    iget-object v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 38
    .line 39
    iget-object v8, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v5, v8}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 43
    move-result-object v7

    .line 44
    .line 45
    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v8, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 48
    .line 49
    iget-object v8, v8, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 50
    move-object v9, v3

    .line 51
    move v10, v6

    .line 52
    move-object v6, v7

    .line 53
    move v7, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    .line 57
    move/from16 v7, p3

    .line 58
    move-object v6, v3

    .line 59
    move-object v8, v6

    .line 60
    move-object v9, v8

    .line 61
    move v10, v4

    .line 62
    .line 63
    :goto_0
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 74
    .line 75
    iget v4, v3, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 76
    .line 77
    iget v3, v3, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/Timeline$Period;->e(II)J

    .line 81
    move-result-wide v2

    .line 82
    .line 83
    .line 84
    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 85
    move-result-wide v4

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_1
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 89
    .line 90
    iget v3, v3, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    .line 91
    .line 92
    if-eq v3, v4, :cond_2

    .line 93
    .line 94
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 98
    move-result-wide v2

    .line 99
    :goto_1
    move-wide v4, v2

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_2
    iget-wide v3, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 103
    .line 104
    iget-wide v11, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 105
    .line 106
    add-long v2, v3, v11

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_3
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 113
    move-result v3

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 118
    .line 119
    .line 120
    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->v1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 121
    move-result-wide v4

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_4
    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 125
    .line 126
    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 127
    add-long/2addr v2, v4

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :goto_2
    new-instance v17, Landroidx/media3/common/Player$PositionInfo;

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 134
    move-result-wide v11

    .line 135
    .line 136
    .line 137
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 138
    move-result-wide v13

    .line 139
    .line 140
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 141
    .line 142
    iget v15, v1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 143
    .line 144
    iget v1, v1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 145
    .line 146
    move-object/from16 v5, v17

    .line 147
    .line 148
    move/from16 v16, v1

    .line 149
    .line 150
    .line 151
    invoke-direct/range {v5 .. v16}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 152
    return-object v17
.end method

.method public static synthetic v0(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->O1(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private static v1(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 6
    .line 7
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 15
    .line 16
    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 20
    .line 21
    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    cmp-long v2, v2, v4

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 33
    .line 34
    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->e()J

    .line 42
    move-result-wide v0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->r()J

    .line 47
    move-result-wide v0

    .line 48
    .line 49
    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 50
    add-long/2addr v0, v2

    .line 51
    :goto_0
    return-wide v0
.end method

.method public static synthetic w0(ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D1(ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private w1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 12

    .line 1
    .line 2
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 3
    .line 4
    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    .line 5
    sub-int/2addr v1, v2

    .line 6
    .line 7
    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 8
    .line 9
    iget-boolean v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    .line 15
    .line 16
    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    .line 17
    .line 18
    iput-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 19
    .line 20
    :cond_0
    iget-boolean v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    .line 25
    .line 26
    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    .line 27
    .line 28
    :cond_1
    if-nez v1, :cond_b

    .line 29
    .line 30
    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 35
    .line 36
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->u()Z

    .line 40
    move-result v2

    .line 41
    const/4 v4, 0x0

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    const/4 v2, -0x1

    .line 51
    .line 52
    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    iput-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 57
    .line 58
    iput v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    move-object v2, v1

    .line 66
    .line 67
    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/media3/exoplayer/PlaylistTimeline;->J()Ljava/util/List;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    move-result v5

    .line 76
    .line 77
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 78
    .line 79
    .line 80
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 81
    move-result v6

    .line 82
    .line 83
    if-ne v5, v6, :cond_3

    .line 84
    move v5, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    move v5, v4

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 90
    move v5, v4

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    move-result v6

    .line 95
    .line 96
    if-ge v5, v6, :cond_4

    .line 97
    .line 98
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 99
    .line 100
    .line 101
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v6

    .line 103
    .line 104
    check-cast v6, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    check-cast v7, Landroidx/media3/common/Timeline;

    .line 111
    .line 112
    .line 113
    invoke-static {v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->c(Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;Landroidx/media3/common/Timeline;)Landroidx/media3/common/Timeline;

    .line 114
    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_4
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    .line 125
    if-eqz v2, :cond_a

    .line 126
    .line 127
    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 128
    .line 129
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 130
    .line 131
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 132
    .line 133
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v7}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v2

    .line 138
    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 142
    .line 143
    iget-wide v7, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 144
    .line 145
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 146
    .line 147
    iget-wide v10, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 148
    .line 149
    cmp-long v2, v7, v10

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move v3, v4

    .line 154
    .line 155
    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 159
    move-result v2

    .line 160
    .line 161
    if-nez v2, :cond_8

    .line 162
    .line 163
    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 164
    .line 165
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 169
    move-result v2

    .line 170
    .line 171
    if-eqz v2, :cond_7

    .line 172
    goto :goto_3

    .line 173
    .line 174
    :cond_7
    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 175
    .line 176
    iget-object v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 177
    .line 178
    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, v1, v5, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    .line 182
    move-result-wide v1

    .line 183
    goto :goto_4

    .line 184
    .line 185
    :cond_8
    :goto_3
    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 186
    .line 187
    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 188
    :goto_4
    move-wide v6, v1

    .line 189
    :goto_5
    move v5, v3

    .line 190
    goto :goto_6

    .line 191
    :cond_9
    move-wide v6, v5

    .line 192
    goto :goto_5

    .line 193
    :cond_a
    move-wide v6, v5

    .line 194
    move v5, v4

    .line 195
    .line 196
    :goto_6
    iput-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 197
    .line 198
    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 199
    const/4 v2, 0x1

    .line 200
    .line 201
    iget v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    .line 202
    .line 203
    iget v8, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    .line 204
    const/4 v9, -0x1

    .line 205
    const/4 v10, 0x0

    .line 206
    move-object v0, p0

    .line 207
    move v4, v5

    .line 208
    move v5, v8

    .line 209
    move v8, v9

    .line 210
    move v9, v10

    .line 211
    .line 212
    .line 213
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 214
    :cond_b
    return-void
.end method

.method public static synthetic x0(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->N1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private x1(I)I
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eq v0, p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/16 v3, 0xfa0

    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v6, 0x2

    .line 28
    .line 29
    new-instance v0, Landroid/media/AudioTrack;

    .line 30
    const/4 v2, 0x3

    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v1, v0

    .line 33
    move v8, p1

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 37
    .line 38
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method static synthetic y0(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFormat:Landroidx/media3/common/Format;

    .line 3
    return-object p1
.end method

.method private static synthetic y1(IILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    .line 4
    return-void
.end method

.method static synthetic z0(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 3
    return p0
.end method

.method private synthetic z1(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/common/Player$Events;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    .line 11
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    .line 6
    return-wide v0
.end method

.method public B(II)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    if-lt p2, p1, :cond_0

    .line 9
    move v1, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-ge p1, v1, :cond_2

    .line 27
    .line 28
    if-ne p1, p2, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->a2(Landroidx/media3/exoplayer/PlaybackInfo;II)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    iget-object p1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 42
    .line 43
    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 44
    .line 45
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    xor-int/lit8 v6, p1, 0x1

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x1

    .line 54
    const/4 v7, 0x4

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 58
    move-result-wide v8

    .line 59
    const/4 v10, -0x1

    .line 60
    const/4 v11, 0x0

    .line 61
    move-object v2, p0

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 65
    :cond_2
    :goto_1
    return-void
.end method

.method public D()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 6
    return-object v0
.end method

.method public E(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->h()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->c()Landroidx/media3/common/TrackSelectionParameters;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->m(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 32
    .line 33
    new-instance v1, Landroidx/media3/exoplayer/v0;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/v0;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 37
    .line 38
    const/16 p1, 0x13

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->l(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public F()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 6
    return-object v0
.end method

.method public H(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->foregroundMode:Z

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->foregroundMode:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M0(Z)Z

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Landroidx/media3/exoplayer/ExoTimeoutException;

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    .line 24
    .line 25
    const/16 v0, 0x3eb

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlaybackException;->k(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m2(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 33
    :cond_0
    return-void
.end method

.method public I()Landroidx/media3/common/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoFormat:Landroidx/media3/common/Format;

    .line 6
    return-object v0
.end method

.method public K(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->k(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public L(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->c(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public M()Landroidx/media3/common/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFormat:Landroidx/media3/common/Format;

    .line 6
    return-object v0
.end method

.method public N(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j1(Ljava/util/List;)Ljava/util/List;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->d1(ILjava/util/List;)V

    .line 11
    return-void
.end method

.method public O(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->f2(Ljava/util/List;)V

    .line 11
    return-void
.end method

.method public U(IJIZ)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move v0, p1

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 15
    .line 16
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 17
    .line 18
    .line 19
    invoke-interface {v2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->p()V

    .line 20
    .line 21
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->u()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->t()I

    .line 33
    move-result v3

    .line 34
    .line 35
    if-lt v0, v3, :cond_1

    .line 36
    return-void

    .line 37
    .line 38
    :cond_1
    iget v3, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 39
    add-int/2addr v3, v1

    .line 40
    .line 41
    iput v3, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const-string v0, "ExoPlayerImpl"

    .line 50
    .line 51
    const-string v2, "seekTo ignored because an ad is playing"

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 57
    .line 58
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 65
    .line 66
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->a(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 70
    return-void

    .line 71
    .line 72
    :cond_2
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 73
    .line 74
    iget v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 75
    const/4 v4, 0x3

    .line 76
    .line 77
    if-eq v3, v4, :cond_3

    .line 78
    const/4 v4, 0x4

    .line 79
    .line 80
    if-ne v3, v4, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->u()Z

    .line 84
    move-result v3

    .line 85
    .line 86
    if-nez v3, :cond_4

    .line 87
    .line 88
    :cond_3
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 89
    const/4 v3, 0x2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x()I

    .line 97
    move-result v8

    .line 98
    move-wide v3, p2

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v2, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->X1(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v1, v2, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->W1(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    iget-object v5, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 109
    .line 110
    .line 111
    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 112
    move-result-wide v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v2, p1, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0(Landroidx/media3/common/Timeline;IJ)V

    .line 116
    const/4 v2, 0x0

    .line 117
    const/4 v3, 0x1

    .line 118
    const/4 v4, 0x1

    .line 119
    const/4 v5, 0x1

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 123
    move-result-wide v6

    .line 124
    move-object v0, p0

    .line 125
    .line 126
    move/from16 v9, p5

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 130
    return-void
.end method

.method public a(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->O(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    .line 10
    return-void
.end method

.method public a1(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->C(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 12
    return-void
.end method

.method public b(Landroidx/media3/common/PlaybackParameters;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->g(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V0(Landroidx/media3/common/PlaybackParameters;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x5

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    const/4 v9, -0x1

    .line 46
    const/4 v10, 0x0

    .line 47
    move-object v1, p0

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 51
    return-void
.end method

.method public b1(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c2()V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 15
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g1(Landroid/view/SurfaceHolder;)V

    .line 15
    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 13
    :cond_0
    return-void
.end method

.method public bridge synthetic d()Landroidx/media3/common/PlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s1()Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d1(ILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ltz p1, :cond_0

    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result p1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 34
    const/4 v2, -0x1

    .line 35
    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    move v0, v1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0, p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g2(Ljava/util/List;Z)V

    .line 41
    return-void

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e1(Landroidx/media3/exoplayer/PlaybackInfo;ILjava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x5

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    const/4 v9, -0x1

    .line 58
    const/4 v10, 0x0

    .line 59
    move-object v1, p0

    .line 60
    .line 61
    .line 62
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 63
    return-void
.end method

.method public e()Landroidx/media3/common/Tracks;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    .line 10
    return-object v0
.end method

.method public f2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->g2(Ljava/util/List;Z)V

    .line 8
    return-void
.end method

.method public g1(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 13
    :cond_0
    return-void
.end method

.method public g2(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    const/4 v2, -0x1

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move v5, p2

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->h2(Ljava/util/List;IJZ)V

    .line 16
    return-void
.end method

.method public getContentPosition()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 14
    .line 15
    iget v0, v0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 14
    .line 15
    iget v0, v0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o1(Landroidx/media3/exoplayer/PlaybackInfo;)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 8
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 12
    .line 13
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 16
    .line 17
    iget-object v2, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 25
    .line 26
    iget v2, v1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 27
    .line 28
    iget v1, v1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/Timeline$Period;->e(II)J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 36
    move-result-wide v0

    .line 37
    return-wide v0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->C()J

    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 8
    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 8
    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 8
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 6
    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 6
    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 6
    return v0
.end method

.method public h()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->c()Landroidx/media3/common/TrackSelectionParameters;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    const-wide/16 v0, 0xbb8

    .line 6
    return-wide v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 6
    return-wide v0
.end method

.method public l()J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 16
    return-wide v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 21
    .line 22
    iget-wide v1, v1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 23
    .line 24
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    iget-wide v3, v3, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 27
    .line 28
    cmp-long v1, v1, v3

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->x()I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->f()J

    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    .line 49
    :cond_1
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 52
    .line 53
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 62
    .line 63
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 64
    .line 65
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 66
    .line 67
    iget-object v0, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 76
    .line 77
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 78
    .line 79
    iget v1, v1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline$Period;->i(I)J

    .line 83
    move-result-wide v1

    .line 84
    .line 85
    const-wide/high16 v3, -0x8000000000000000L

    .line 86
    .line 87
    cmp-long v3, v1, v3

    .line 88
    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-wide v0, v1

    .line 94
    .line 95
    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 96
    .line 97
    iget-object v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 98
    .line 99
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v3, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Z1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    .line 103
    move-result-wide v0

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 107
    move-result-wide v0

    .line 108
    return-wide v0
.end method

.method public l2(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c2()V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 49
    move-result p1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 58
    const/4 p1, 0x0

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 62
    :goto_0
    return-void
.end method

.method public m1()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 8
    return v0
.end method

.method public p()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 6
    return-object v0
.end method

.method public prepare()V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->p(ZI)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r1(ZI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o2(ZII)V

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 24
    .line 25
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    if-eq v1, v3, :cond_0

    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    const/4 v2, 0x4

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 50
    add-int/2addr v0, v3

    .line 51
    .line 52
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0()V

    .line 58
    const/4 v6, 0x1

    .line 59
    const/4 v7, 0x1

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x5

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    const/4 v12, -0x1

    .line 68
    const/4 v13, 0x0

    .line 69
    move-object v4, p0

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v4 .. v13}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p2(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    .line 73
    return-void
.end method

.method public r()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 8
    return v0
.end method

.method public release()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Release "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, " ["

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "AndroidXMedia3/1.1.1"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "] ["

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    sget-object v2, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroidx/media3/common/MediaLibraryInfo;->b()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "]"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    const-string v1, "ExoPlayerImpl"

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 69
    .line 70
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 71
    .line 72
    const/16 v1, 0x15

    .line 73
    const/4 v2, 0x0

    .line 74
    .line 75
    if-ge v0, v1, :cond_0

    .line 76
    .line 77
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 78
    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 83
    .line 84
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 85
    .line 86
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    .line 87
    const/4 v1, 0x0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->b(Z)V

    .line 91
    .line 92
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/media3/exoplayer/StreamVolumeManager;->g()V

    .line 98
    .line 99
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WakeLockManager;->b(Z)V

    .line 103
    .line 104
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->b(Z)V

    .line 108
    .line 109
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/media3/exoplayer/AudioFocusManager;->i()V

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0()Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-nez v0, :cond_2

    .line 121
    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 123
    .line 124
    new-instance v3, Landroidx/media3/exoplayer/q0;

    .line 125
    .line 126
    .line 127
    invoke-direct {v3}, Landroidx/media3/exoplayer/q0;-><init>()V

    .line 128
    .line 129
    const/16 v4, 0xa

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v4, v3}, Landroidx/media3/common/util/ListenerSet;->l(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 133
    .line 134
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->j()V

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 140
    .line 141
    .line 142
    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    .line 144
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 145
    .line 146
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->a(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 150
    .line 151
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 152
    .line 153
    iget-boolean v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 154
    .line 155
    if-eqz v3, :cond_3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->a()Landroidx/media3/exoplayer/PlaybackInfo;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 162
    .line 163
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 164
    const/4 v3, 0x1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 171
    .line 172
    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 176
    move-result-object v0

    .line 177
    .line 178
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 179
    .line 180
    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 181
    .line 182
    iput-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 183
    .line 184
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 185
    .line 186
    const-wide/16 v4, 0x0

    .line 187
    .line 188
    iput-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 189
    .line 190
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 191
    .line 192
    .line 193
    invoke-interface {v0}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->release()V

    .line 194
    .line 195
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->j()V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c2()V

    .line 202
    .line 203
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 204
    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 209
    .line 210
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 211
    .line 212
    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 213
    .line 214
    if-eqz v0, :cond_5

    .line 215
    .line 216
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    check-cast v0, Landroidx/media3/common/PriorityTaskManager;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroidx/media3/common/PriorityTaskManager;->d(I)V

    .line 226
    .line 227
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 228
    .line 229
    :cond_5
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    .line 230
    .line 231
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 232
    .line 233
    iput-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    .line 234
    return-void
.end method

.method public s()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public s1()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 8
    return-object v0
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->p(ZI)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r1(ZI)I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->o2(ZII)V

    .line 21
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X0(I)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 17
    .line 18
    new-instance v1, Landroidx/media3/exoplayer/p0;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/p0;-><init>(I)V

    .line 22
    .line 23
    const/16 p1, 0x8

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n2()V

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->f()V

    .line 35
    :cond_0
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a1(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 17
    .line 18
    new-instance v1, Landroidx/media3/exoplayer/r0;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/r0;-><init>(Z)V

    .line 22
    .line 23
    const/16 p1, 0x9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->i(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->n2()V

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->f()V

    .line 35
    :cond_0
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c2()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, -0x1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-direct {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 18
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    instance-of v0, p1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c2()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i2(Landroid/view/SurfaceHolder;)V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c2()V

    .line 29
    move-object v0, p1

    .line 30
    .line 31
    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k1(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const/16 v1, 0x2710

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->n(I)Landroidx/media3/exoplayer/PlayerMessage;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->m(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->l()Landroidx/media3/exoplayer/PlayerMessage;

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->d(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->i2(Landroid/view/SurfaceHolder;)V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_1
    if-nez p1, :cond_2

    .line 81
    const/4 p1, 0x0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->l2(Landroid/view/SurfaceHolder;)V

    .line 90
    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    .line 9
    goto :goto_1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c2()V

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "ExoPlayerImpl"

    .line 23
    .line 24
    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, v1

    .line 46
    .line 47
    :goto_0
    if-nez v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k2(Ljava/lang/Object;)V

    .line 51
    const/4 p1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->j2(Landroid/graphics/SurfaceTexture;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 62
    move-result v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 66
    move-result p1

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->Y1(II)V

    .line 70
    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->p(FFF)F

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 13
    .line 14
    cmpl-float v0, v0, p1

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->e2()V

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 25
    .line 26
    new-instance v1, Landroidx/media3/exoplayer/u0;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/u0;-><init>(F)V

    .line 30
    .line 31
    const/16 p1, 0x16

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->l(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 35
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->p(ZI)I

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m2(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 26
    .line 27
    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    .line 33
    return-void
.end method

.method public u()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 6
    return-object v0
.end method

.method public v()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    .line 6
    return-object v0
.end method

.method public x()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->p1(Landroidx/media3/exoplayer/PlaybackInfo;)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return v0
.end method

.method public z()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->s2()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 6
    return-object v0
.end method
