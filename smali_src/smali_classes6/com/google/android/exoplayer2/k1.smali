.class final Lcom/google/android/exoplayer2/k1;
.super Lcom/google/android/exoplayer2/e;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/k1$b;,
        Lcom/google/android/exoplayer2/k1$d;,
        Lcom/google/android/exoplayer2/k1$c;,
        Lcom/google/android/exoplayer2/k1$e;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplayer2/analytics/a;

.field private final applicationContext:Landroid/content/Context;

.field private final applicationLooper:Landroid/os/Looper;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/e;

.field private final audioBecomingNoisyManager:Lcom/google/android/exoplayer2/b;

.field private audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioFocusManager:Lcom/google/android/exoplayer2/d;

.field private audioFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private availableCommands:Lcom/google/android/exoplayer2/d3$b;

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final clock:Lcom/google/android/exoplayer2/util/d;

.field private final componentListener:Lcom/google/android/exoplayer2/k1$c;

.field private final constructorFinished:Lcom/google/android/exoplayer2/util/g;

.field private currentCueGroup:Lcom/google/android/exoplayer2/text/f;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Lcom/google/android/exoplayer2/o;

.field final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

.field private foregroundMode:Z

.field private final frameMetadataListener:Lcom/google/android/exoplayer2/k1$d;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private final internalPlayer:Lcom/google/android/exoplayer2/w1;

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final listeners:Lcom/google/android/exoplayer2/util/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/s<",
            "Lcom/google/android/exoplayer2/d3$d;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaMetadata:Lcom/google/android/exoplayer2/n2;

.field private final mediaSourceFactory:Lcom/google/android/exoplayer2/source/b0$a;

.field private final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/k1$e;",
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

.field private final period:Lcom/google/android/exoplayer2/z3$b;

.field final permanentAvailableCommands:Lcom/google/android/exoplayer2/d3$b;

.field private playbackInfo:Lcom/google/android/exoplayer2/a3;

.field private final playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/p;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/w1$f;

.field private playerReleased:Z

.field private playlistMetadata:Lcom/google/android/exoplayer2/n2;

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final renderers:[Lcom/google/android/exoplayer2/m3;

.field private repeatMode:I

.field private final seekBackIncrementMs:J

.field private final seekForwardIncrementMs:J

.field private seekParameters:Lcom/google/android/exoplayer2/r3;

.field private shuffleModeEnabled:Z

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

.field private final streamVolumeManager:Lcom/google/android/exoplayer2/u3;

.field private surfaceHolder:Landroid/view/SurfaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceSize:Lcom/google/android/exoplayer2/util/g0;

.field private textureView:Landroid/view/TextureView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private throwsWhenUsingWrongThread:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

.field private final useLazyPreparation:Z

.field private videoChangeFrameRateStrategy:I

.field private videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoOutput:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoScalingMode:I

.field private videoSize:Lcom/google/android/exoplayer2/video/a0;

.field private volume:F

.field private final wakeLockManager:Lcom/google/android/exoplayer2/f4;

.field private final wifiLockManager:Lcom/google/android/exoplayer2/g4;

.field private final wrappingPlayer:Lcom/google/android/exoplayer2/d3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "goog.exo.exoplayer"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/x1;->a(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/s$b;Lcom/google/android/exoplayer2/d3;)V
    .locals 36
    .param p2    # Lcom/google/android/exoplayer2/d3;
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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/e;-><init>()V

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/util/g;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/g;-><init>()V

    .line 13
    .line 14
    iput-object v2, v1, Lcom/google/android/exoplayer2/k1;->constructorFinished:Lcom/google/android/exoplayer2/util/g;

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
    const-string v5, "ExoPlayerLib/2.18.2"

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
    sget-object v5, Lcom/google/android/exoplayer2/util/o0;->DEVICE_DEBUG_INFO:Ljava/lang/String;

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
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    iget-object v3, v0, Lcom/google/android/exoplayer2/s$b;->context:Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    iput-object v3, v1, Lcom/google/android/exoplayer2/k1;->applicationContext:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v4, v0, Lcom/google/android/exoplayer2/s$b;->analyticsCollectorFunction:Lcom/google/common/base/g;

    .line 80
    .line 81
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 82
    .line 83
    .line 84
    invoke-interface {v4, v5}, Lcom/google/common/base/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    check-cast v4, Lcom/google/android/exoplayer2/analytics/a;

    .line 88
    .line 89
    iput-object v4, v1, Lcom/google/android/exoplayer2/k1;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/a;

    .line 90
    .line 91
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->priorityTaskManager:Lcom/google/android/exoplayer2/util/e0;

    .line 92
    .line 93
    iput-object v5, v1, Lcom/google/android/exoplayer2/k1;->priorityTaskManager:Lcom/google/android/exoplayer2/util/e0;

    .line 94
    .line 95
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 96
    .line 97
    iput-object v5, v1, Lcom/google/android/exoplayer2/k1;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 98
    .line 99
    iget v5, v0, Lcom/google/android/exoplayer2/s$b;->videoScalingMode:I

    .line 100
    .line 101
    iput v5, v1, Lcom/google/android/exoplayer2/k1;->videoScalingMode:I

    .line 102
    .line 103
    iget v5, v0, Lcom/google/android/exoplayer2/s$b;->videoChangeFrameRateStrategy:I

    .line 104
    .line 105
    iput v5, v1, Lcom/google/android/exoplayer2/k1;->videoChangeFrameRateStrategy:I

    .line 106
    .line 107
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/s$b;->skipSilenceEnabled:Z

    .line 108
    .line 109
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/k1;->skipSilenceEnabled:Z

    .line 110
    .line 111
    iget-wide v5, v0, Lcom/google/android/exoplayer2/s$b;->detachSurfaceTimeoutMs:J

    .line 112
    .line 113
    iput-wide v5, v1, Lcom/google/android/exoplayer2/k1;->detachSurfaceTimeoutMs:J

    .line 114
    .line 115
    new-instance v15, Lcom/google/android/exoplayer2/k1$c;

    .line 116
    const/4 v14, 0x0

    .line 117
    .line 118
    .line 119
    invoke-direct {v15, v1, v14}, Lcom/google/android/exoplayer2/k1$c;-><init>(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1$a;)V

    .line 120
    .line 121
    iput-object v15, v1, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

    .line 122
    .line 123
    new-instance v13, Lcom/google/android/exoplayer2/k1$d;

    .line 124
    .line 125
    .line 126
    invoke-direct {v13, v14}, Lcom/google/android/exoplayer2/k1$d;-><init>(Lcom/google/android/exoplayer2/k1$a;)V

    .line 127
    .line 128
    iput-object v13, v1, Lcom/google/android/exoplayer2/k1;->frameMetadataListener:Lcom/google/android/exoplayer2/k1$d;

    .line 129
    .line 130
    new-instance v6, Landroid/os/Handler;

    .line 131
    .line 132
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->looper:Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 136
    .line 137
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->renderersFactorySupplier:Lcom/google/common/base/u;

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
    check-cast v7, Lcom/google/android/exoplayer2/q3;

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
    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/q3;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/y;Lcom/google/android/exoplayer2/audio/t;Lcom/google/android/exoplayer2/text/p;Lr2/e;)[Lcom/google/android/exoplayer2/m3;

    .line 153
    move-result-object v7

    .line 154
    .line 155
    iput-object v7, v1, Lcom/google/android/exoplayer2/k1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 166
    .line 167
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->trackSelectorSupplier:Lcom/google/common/base/u;

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
    check-cast v10, Lcom/google/android/exoplayer2/trackselection/b0;

    .line 175
    .line 176
    iput-object v10, v1, Lcom/google/android/exoplayer2/k1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 177
    .line 178
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->mediaSourceFactorySupplier:Lcom/google/common/base/u;

    .line 179
    .line 180
    .line 181
    invoke-interface {v5}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 182
    move-result-object v5

    .line 183
    .line 184
    check-cast v5, Lcom/google/android/exoplayer2/source/b0$a;

    .line 185
    .line 186
    iput-object v5, v1, Lcom/google/android/exoplayer2/k1;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/b0$a;

    .line 187
    .line 188
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->bandwidthMeterSupplier:Lcom/google/common/base/u;

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
    check-cast v9, Lcom/google/android/exoplayer2/upstream/e;

    .line 196
    .line 197
    iput-object v9, v1, Lcom/google/android/exoplayer2/k1;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    .line 198
    .line 199
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/s$b;->useLazyPreparation:Z

    .line 200
    .line 201
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/k1;->useLazyPreparation:Z

    .line 202
    .line 203
    iget-object v5, v0, Lcom/google/android/exoplayer2/s$b;->seekParameters:Lcom/google/android/exoplayer2/r3;

    .line 204
    .line 205
    iput-object v5, v1, Lcom/google/android/exoplayer2/k1;->seekParameters:Lcom/google/android/exoplayer2/r3;

    .line 206
    .line 207
    move-object/from16 v16, v15

    .line 208
    .line 209
    iget-wide v14, v0, Lcom/google/android/exoplayer2/s$b;->seekBackIncrementMs:J

    .line 210
    .line 211
    iput-wide v14, v1, Lcom/google/android/exoplayer2/k1;->seekBackIncrementMs:J

    .line 212
    .line 213
    iget-wide v14, v0, Lcom/google/android/exoplayer2/s$b;->seekForwardIncrementMs:J

    .line 214
    .line 215
    iput-wide v14, v1, Lcom/google/android/exoplayer2/k1;->seekForwardIncrementMs:J

    .line 216
    .line 217
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/s$b;->pauseAtEndOfMediaItems:Z

    .line 218
    .line 219
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/k1;->pauseAtEndOfMediaItems:Z

    .line 220
    .line 221
    iget-object v15, v0, Lcom/google/android/exoplayer2/s$b;->looper:Landroid/os/Looper;

    .line 222
    .line 223
    iput-object v15, v1, Lcom/google/android/exoplayer2/k1;->applicationLooper:Landroid/os/Looper;

    .line 224
    .line 225
    iget-object v14, v0, Lcom/google/android/exoplayer2/s$b;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 226
    .line 227
    iput-object v14, v1, Lcom/google/android/exoplayer2/k1;->clock:Lcom/google/android/exoplayer2/util/d;

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
    iput-object v5, v1, Lcom/google/android/exoplayer2/k1;->wrappingPlayer:Lcom/google/android/exoplayer2/d3;

    .line 236
    .line 237
    new-instance v8, Lcom/google/android/exoplayer2/util/s;

    .line 238
    .line 239
    new-instance v11, Lcom/google/android/exoplayer2/w0;

    .line 240
    .line 241
    .line 242
    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/w0;-><init>(Lcom/google/android/exoplayer2/k1;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v8, v15, v14, v11}, Lcom/google/android/exoplayer2/util/s;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/s$b;)V

    .line 246
    .line 247
    iput-object v8, v1, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 248
    .line 249
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 250
    .line 251
    .line 252
    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 253
    .line 254
    iput-object v8, v1, Lcom/google/android/exoplayer2/k1;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 255
    .line 256
    new-instance v8, Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    iput-object v8, v1, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 262
    .line 263
    new-instance v8, Lcom/google/android/exoplayer2/source/y0$a;

    .line 264
    .line 265
    .line 266
    invoke-direct {v8, v12}, Lcom/google/android/exoplayer2/source/y0$a;-><init>(I)V

    .line 267
    .line 268
    iput-object v8, v1, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 269
    .line 270
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/c0;

    .line 271
    array-length v11, v7

    .line 272
    .line 273
    new-array v11, v11, [Lcom/google/android/exoplayer2/p3;

    .line 274
    array-length v12, v7

    .line 275
    .line 276
    new-array v12, v12, [Lcom/google/android/exoplayer2/trackselection/s;

    .line 277
    .line 278
    move-object/from16 v20, v6

    .line 279
    .line 280
    sget-object v6, Lcom/google/android/exoplayer2/e4;->EMPTY:Lcom/google/android/exoplayer2/e4;

    .line 281
    .line 282
    move-object/from16 v21, v9

    .line 283
    const/4 v9, 0x0

    .line 284
    .line 285
    .line 286
    invoke-direct {v8, v11, v12, v6, v9}, Lcom/google/android/exoplayer2/trackselection/c0;-><init>([Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/trackselection/s;Lcom/google/android/exoplayer2/e4;Ljava/lang/Object;)V

    .line 287
    .line 288
    iput-object v8, v1, Lcom/google/android/exoplayer2/k1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 289
    .line 290
    new-instance v6, Lcom/google/android/exoplayer2/z3$b;

    .line 291
    .line 292
    .line 293
    invoke-direct {v6}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    .line 294
    .line 295
    iput-object v6, v1, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 296
    .line 297
    new-instance v6, Lcom/google/android/exoplayer2/d3$b$a;

    .line 298
    .line 299
    .line 300
    invoke-direct {v6}, Lcom/google/android/exoplayer2/d3$b$a;-><init>()V

    .line 301
    .line 302
    const/16 v12, 0x15

    .line 303
    .line 304
    new-array v9, v12, [I

    .line 305
    .line 306
    .line 307
    fill-array-data v9, :array_0

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/d3$b$a;->c([I)Lcom/google/android/exoplayer2/d3$b$a;

    .line 311
    move-result-object v6

    .line 312
    .line 313
    .line 314
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/trackselection/b0;->e()Z

    .line 315
    move-result v9

    .line 316
    .line 317
    const/16 v11, 0x1d

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v11, v9}, Lcom/google/android/exoplayer2/d3$b$a;->d(IZ)Lcom/google/android/exoplayer2/d3$b$a;

    .line 321
    move-result-object v6

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/d3$b$a;->e()Lcom/google/android/exoplayer2/d3$b;

    .line 325
    move-result-object v6

    .line 326
    .line 327
    iput-object v6, v1, Lcom/google/android/exoplayer2/k1;->permanentAvailableCommands:Lcom/google/android/exoplayer2/d3$b;

    .line 328
    .line 329
    new-instance v9, Lcom/google/android/exoplayer2/d3$b$a;

    .line 330
    .line 331
    .line 332
    invoke-direct {v9}, Lcom/google/android/exoplayer2/d3$b$a;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/d3$b$a;->b(Lcom/google/android/exoplayer2/d3$b;)Lcom/google/android/exoplayer2/d3$b$a;

    .line 336
    move-result-object v6

    .line 337
    const/4 v11, 0x4

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v11}, Lcom/google/android/exoplayer2/d3$b$a;->a(I)Lcom/google/android/exoplayer2/d3$b$a;

    .line 341
    move-result-object v6

    .line 342
    .line 343
    const/16 v9, 0xa

    .line 344
    .line 345
    .line 346
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/d3$b$a;->a(I)Lcom/google/android/exoplayer2/d3$b$a;

    .line 347
    move-result-object v6

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/d3$b$a;->e()Lcom/google/android/exoplayer2/d3$b;

    .line 351
    move-result-object v6

    .line 352
    .line 353
    iput-object v6, v1, Lcom/google/android/exoplayer2/k1;->availableCommands:Lcom/google/android/exoplayer2/d3$b;

    .line 354
    const/4 v6, 0x0

    .line 355
    .line 356
    .line 357
    invoke-interface {v14, v15, v6}, Lcom/google/android/exoplayer2/util/d;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/p;

    .line 358
    move-result-object v9

    .line 359
    .line 360
    iput-object v9, v1, Lcom/google/android/exoplayer2/k1;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/p;

    .line 361
    .line 362
    new-instance v9, Lcom/google/android/exoplayer2/c1;

    .line 363
    .line 364
    .line 365
    invoke-direct {v9, v1}, Lcom/google/android/exoplayer2/c1;-><init>(Lcom/google/android/exoplayer2/k1;)V

    .line 366
    .line 367
    iput-object v9, v1, Lcom/google/android/exoplayer2/k1;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/w1$f;

    .line 368
    .line 369
    .line 370
    invoke-static {v8}, Lcom/google/android/exoplayer2/a3;->j(Lcom/google/android/exoplayer2/trackselection/c0;)Lcom/google/android/exoplayer2/a3;

    .line 371
    move-result-object v6

    .line 372
    .line 373
    iput-object v6, v1, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 374
    .line 375
    .line 376
    invoke-interface {v4, v5, v15}, Lcom/google/android/exoplayer2/analytics/a;->C(Lcom/google/android/exoplayer2/d3;Landroid/os/Looper;)V

    .line 377
    .line 378
    sget v6, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 379
    .line 380
    const/16 v5, 0x1f

    .line 381
    .line 382
    if-ge v6, v5, :cond_2

    .line 383
    .line 384
    new-instance v5, Lcom/google/android/exoplayer2/analytics/t1;

    .line 385
    .line 386
    .line 387
    invoke-direct {v5}, Lcom/google/android/exoplayer2/analytics/t1;-><init>()V

    .line 388
    .line 389
    :goto_2
    move-object/from16 v22, v5

    .line 390
    goto :goto_3

    .line 391
    :catchall_0
    move-exception v0

    .line 392
    .line 393
    goto/16 :goto_8

    .line 394
    .line 395
    :cond_2
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/s$b;->usePlatformDiagnostics:Z

    .line 396
    .line 397
    .line 398
    invoke-static {v3, v1, v5}, Lcom/google/android/exoplayer2/k1$b;->a(Landroid/content/Context;Lcom/google/android/exoplayer2/k1;Z)Lcom/google/android/exoplayer2/analytics/t1;

    .line 399
    move-result-object v5

    .line 400
    goto :goto_2

    .line 401
    .line 402
    :goto_3
    new-instance v5, Lcom/google/android/exoplayer2/w1;

    .line 403
    .line 404
    iget-object v11, v0, Lcom/google/android/exoplayer2/s$b;->loadControlSupplier:Lcom/google/common/base/u;

    .line 405
    .line 406
    .line 407
    invoke-interface {v11}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 408
    move-result-object v11

    .line 409
    .line 410
    check-cast v11, Lcom/google/android/exoplayer2/g2;

    .line 411
    .line 412
    iget v12, v1, Lcom/google/android/exoplayer2/k1;->repeatMode:I

    .line 413
    .line 414
    move-object/from16 v24, v13

    .line 415
    .line 416
    iget-boolean v13, v1, Lcom/google/android/exoplayer2/k1;->shuffleModeEnabled:Z

    .line 417
    .line 418
    move-object/from16 v25, v14

    .line 419
    .line 420
    iget-object v14, v1, Lcom/google/android/exoplayer2/k1;->seekParameters:Lcom/google/android/exoplayer2/r3;

    .line 421
    .line 422
    move-object/from16 v26, v15

    .line 423
    .line 424
    iget-object v15, v0, Lcom/google/android/exoplayer2/s$b;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 425
    .line 426
    move-object/from16 v27, v2

    .line 427
    .line 428
    move-object/from16 v28, v3

    .line 429
    .line 430
    iget-wide v2, v0, Lcom/google/android/exoplayer2/s$b;->releaseTimeoutMs:J

    .line 431
    .line 432
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/k1;->pauseAtEndOfMediaItems:Z

    .line 433
    .line 434
    move-object/from16 v29, v5

    .line 435
    .line 436
    move-object/from16 v5, v29

    .line 437
    .line 438
    move/from16 v31, v6

    .line 439
    .line 440
    move-object/from16 v30, v20

    .line 441
    .line 442
    const/16 v17, 0x0

    .line 443
    move-object v6, v7

    .line 444
    move-object v7, v10

    .line 445
    .line 446
    move-object/from16 v32, v21

    .line 447
    .line 448
    move-object/from16 v21, v9

    .line 449
    move-object v9, v11

    .line 450
    move-object v11, v10

    .line 451
    .line 452
    move-object/from16 v10, v32

    .line 453
    .line 454
    move-object/from16 v33, v11

    .line 455
    move v11, v12

    .line 456
    move v12, v13

    .line 457
    .line 458
    move-object/from16 v34, v24

    .line 459
    move-object v13, v4

    .line 460
    .line 461
    move-object/from16 v23, v17

    .line 462
    .line 463
    move-object/from16 v20, v25

    .line 464
    .line 465
    move-object/from16 v35, v16

    .line 466
    .line 467
    move-wide/from16 v16, v2

    .line 468
    .line 469
    move/from16 v18, v0

    .line 470
    .line 471
    move-object/from16 v19, v26

    .line 472
    .line 473
    .line 474
    invoke-direct/range {v5 .. v22}, Lcom/google/android/exoplayer2/w1;-><init>([Lcom/google/android/exoplayer2/m3;Lcom/google/android/exoplayer2/trackselection/b0;Lcom/google/android/exoplayer2/trackselection/c0;Lcom/google/android/exoplayer2/g2;Lcom/google/android/exoplayer2/upstream/e;IZLcom/google/android/exoplayer2/analytics/a;Lcom/google/android/exoplayer2/r3;Lcom/google/android/exoplayer2/f2;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/w1$f;Lcom/google/android/exoplayer2/analytics/t1;)V

    .line 475
    .line 476
    move-object/from16 v0, v29

    .line 477
    .line 478
    iput-object v0, v1, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 479
    .line 480
    const/high16 v2, 0x3f800000    # 1.0f

    .line 481
    .line 482
    iput v2, v1, Lcom/google/android/exoplayer2/k1;->volume:F

    .line 483
    const/4 v2, 0x0

    .line 484
    .line 485
    iput v2, v1, Lcom/google/android/exoplayer2/k1;->repeatMode:I

    .line 486
    .line 487
    sget-object v3, Lcom/google/android/exoplayer2/n2;->EMPTY:Lcom/google/android/exoplayer2/n2;

    .line 488
    .line 489
    iput-object v3, v1, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 490
    .line 491
    iput-object v3, v1, Lcom/google/android/exoplayer2/k1;->playlistMetadata:Lcom/google/android/exoplayer2/n2;

    .line 492
    .line 493
    iput-object v3, v1, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 494
    const/4 v3, -0x1

    .line 495
    .line 496
    iput v3, v1, Lcom/google/android/exoplayer2/k1;->maskingWindowIndex:I

    .line 497
    .line 498
    move/from16 v5, v31

    .line 499
    .line 500
    const/16 v3, 0x15

    .line 501
    .line 502
    if-ge v5, v3, :cond_3

    .line 503
    .line 504
    .line 505
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/k1;->m1(I)I

    .line 506
    move-result v3

    .line 507
    .line 508
    iput v3, v1, Lcom/google/android/exoplayer2/k1;->audioSessionId:I

    .line 509
    goto :goto_4

    .line 510
    .line 511
    .line 512
    :cond_3
    invoke-static/range {v28 .. v28}, Lcom/google/android/exoplayer2/util/o0;->C(Landroid/content/Context;)I

    .line 513
    move-result v3

    .line 514
    .line 515
    iput v3, v1, Lcom/google/android/exoplayer2/k1;->audioSessionId:I

    .line 516
    .line 517
    :goto_4
    sget-object v3, Lcom/google/android/exoplayer2/text/f;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/f;

    .line 518
    .line 519
    iput-object v3, v1, Lcom/google/android/exoplayer2/k1;->currentCueGroup:Lcom/google/android/exoplayer2/text/f;

    .line 520
    const/4 v3, 0x1

    .line 521
    .line 522
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/k1;->throwsWhenUsingWrongThread:Z

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/k1;->F(Lcom/google/android/exoplayer2/d3$d;)V

    .line 526
    .line 527
    new-instance v5, Landroid/os/Handler;

    .line 528
    .line 529
    move-object/from16 v6, v26

    .line 530
    .line 531
    .line 532
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 533
    .line 534
    move-object/from16 v6, v32

    .line 535
    .line 536
    .line 537
    invoke-interface {v6, v5, v4}, Lcom/google/android/exoplayer2/upstream/e;->c(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/e$a;)V

    .line 538
    .line 539
    move-object/from16 v4, v35

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/k1;->S0(Lcom/google/android/exoplayer2/s$a;)V

    .line 543
    .line 544
    move-object/from16 v5, p1

    .line 545
    .line 546
    iget-wide v6, v5, Lcom/google/android/exoplayer2/s$b;->foregroundModeTimeoutMs:J

    .line 547
    .line 548
    const-wide/16 v8, 0x0

    .line 549
    .line 550
    cmp-long v8, v6, v8

    .line 551
    .line 552
    if-lez v8, :cond_4

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/w1;->s(J)V

    .line 556
    .line 557
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/b;

    .line 558
    .line 559
    iget-object v6, v5, Lcom/google/android/exoplayer2/s$b;->context:Landroid/content/Context;

    .line 560
    .line 561
    move-object/from16 v7, v30

    .line 562
    .line 563
    .line 564
    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/b$b;)V

    .line 565
    .line 566
    iput-object v0, v1, Lcom/google/android/exoplayer2/k1;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/b;

    .line 567
    .line 568
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/s$b;->handleAudioBecomingNoisy:Z

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/b;->b(Z)V

    .line 572
    .line 573
    new-instance v0, Lcom/google/android/exoplayer2/d;

    .line 574
    .line 575
    iget-object v6, v5, Lcom/google/android/exoplayer2/s$b;->context:Landroid/content/Context;

    .line 576
    .line 577
    .line 578
    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/d$b;)V

    .line 579
    .line 580
    iput-object v0, v1, Lcom/google/android/exoplayer2/k1;->audioFocusManager:Lcom/google/android/exoplayer2/d;

    .line 581
    .line 582
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/s$b;->handleAudioFocus:Z

    .line 583
    .line 584
    if-eqz v6, :cond_5

    .line 585
    .line 586
    iget-object v14, v1, Lcom/google/android/exoplayer2/k1;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 587
    goto :goto_5

    .line 588
    .line 589
    :cond_5
    move-object/from16 v14, v23

    .line 590
    .line 591
    .line 592
    :goto_5
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/d;->m(Lcom/google/android/exoplayer2/audio/e;)V

    .line 593
    .line 594
    new-instance v0, Lcom/google/android/exoplayer2/u3;

    .line 595
    .line 596
    iget-object v6, v5, Lcom/google/android/exoplayer2/s$b;->context:Landroid/content/Context;

    .line 597
    .line 598
    .line 599
    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/u3;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/u3$b;)V

    .line 600
    .line 601
    iput-object v0, v1, Lcom/google/android/exoplayer2/k1;->streamVolumeManager:Lcom/google/android/exoplayer2/u3;

    .line 602
    .line 603
    iget-object v4, v1, Lcom/google/android/exoplayer2/k1;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 604
    .line 605
    iget v4, v4, Lcom/google/android/exoplayer2/audio/e;->usage:I

    .line 606
    .line 607
    .line 608
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/o0;->a0(I)I

    .line 609
    move-result v4

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/u3;->h(I)V

    .line 613
    .line 614
    new-instance v4, Lcom/google/android/exoplayer2/f4;

    .line 615
    .line 616
    iget-object v6, v5, Lcom/google/android/exoplayer2/s$b;->context:Landroid/content/Context;

    .line 617
    .line 618
    .line 619
    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/f4;-><init>(Landroid/content/Context;)V

    .line 620
    .line 621
    iput-object v4, v1, Lcom/google/android/exoplayer2/k1;->wakeLockManager:Lcom/google/android/exoplayer2/f4;

    .line 622
    .line 623
    iget v6, v5, Lcom/google/android/exoplayer2/s$b;->wakeMode:I

    .line 624
    .line 625
    if-eqz v6, :cond_6

    .line 626
    move v12, v3

    .line 627
    goto :goto_6

    .line 628
    :cond_6
    move v12, v2

    .line 629
    .line 630
    .line 631
    :goto_6
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/f4;->a(Z)V

    .line 632
    .line 633
    new-instance v4, Lcom/google/android/exoplayer2/g4;

    .line 634
    .line 635
    iget-object v6, v5, Lcom/google/android/exoplayer2/s$b;->context:Landroid/content/Context;

    .line 636
    .line 637
    .line 638
    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/g4;-><init>(Landroid/content/Context;)V

    .line 639
    .line 640
    iput-object v4, v1, Lcom/google/android/exoplayer2/k1;->wifiLockManager:Lcom/google/android/exoplayer2/g4;

    .line 641
    .line 642
    iget v5, v5, Lcom/google/android/exoplayer2/s$b;->wakeMode:I

    .line 643
    const/4 v6, 0x2

    .line 644
    .line 645
    if-ne v5, v6, :cond_7

    .line 646
    move v12, v3

    .line 647
    goto :goto_7

    .line 648
    :cond_7
    move v12, v2

    .line 649
    .line 650
    .line 651
    :goto_7
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/g4;->a(Z)V

    .line 652
    .line 653
    .line 654
    invoke-static {v0}, Lcom/google/android/exoplayer2/k1;->X0(Lcom/google/android/exoplayer2/u3;)Lcom/google/android/exoplayer2/o;

    .line 655
    move-result-object v0

    .line 656
    .line 657
    iput-object v0, v1, Lcom/google/android/exoplayer2/k1;->deviceInfo:Lcom/google/android/exoplayer2/o;

    .line 658
    .line 659
    sget-object v0, Lcom/google/android/exoplayer2/video/a0;->UNKNOWN:Lcom/google/android/exoplayer2/video/a0;

    .line 660
    .line 661
    iput-object v0, v1, Lcom/google/android/exoplayer2/k1;->videoSize:Lcom/google/android/exoplayer2/video/a0;

    .line 662
    .line 663
    sget-object v0, Lcom/google/android/exoplayer2/util/g0;->UNKNOWN:Lcom/google/android/exoplayer2/util/g0;

    .line 664
    .line 665
    iput-object v0, v1, Lcom/google/android/exoplayer2/k1;->surfaceSize:Lcom/google/android/exoplayer2/util/g0;

    .line 666
    .line 667
    iget-object v0, v1, Lcom/google/android/exoplayer2/k1;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 668
    .line 669
    move-object/from16 v5, v33

    .line 670
    .line 671
    .line 672
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/trackselection/b0;->i(Lcom/google/android/exoplayer2/audio/e;)V

    .line 673
    .line 674
    iget v0, v1, Lcom/google/android/exoplayer2/k1;->audioSessionId:I

    .line 675
    .line 676
    .line 677
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 678
    move-result-object v0

    .line 679
    .line 680
    const/16 v2, 0xa

    .line 681
    .line 682
    .line 683
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 684
    .line 685
    iget v0, v1, Lcom/google/android/exoplayer2/k1;->audioSessionId:I

    .line 686
    .line 687
    .line 688
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 689
    move-result-object v0

    .line 690
    .line 691
    .line 692
    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 693
    .line 694
    iget-object v0, v1, Lcom/google/android/exoplayer2/k1;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    .line 695
    const/4 v2, 0x3

    .line 696
    .line 697
    .line 698
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 699
    .line 700
    iget v0, v1, Lcom/google/android/exoplayer2/k1;->videoScalingMode:I

    .line 701
    .line 702
    .line 703
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 704
    move-result-object v0

    .line 705
    const/4 v2, 0x4

    .line 706
    .line 707
    .line 708
    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 709
    .line 710
    iget v0, v1, Lcom/google/android/exoplayer2/k1;->videoChangeFrameRateStrategy:I

    .line 711
    .line 712
    .line 713
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 714
    move-result-object v0

    .line 715
    const/4 v2, 0x5

    .line 716
    .line 717
    .line 718
    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 719
    .line 720
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/k1;->skipSilenceEnabled:Z

    .line 721
    .line 722
    .line 723
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 724
    move-result-object v0

    .line 725
    .line 726
    const/16 v2, 0x9

    .line 727
    .line 728
    .line 729
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 730
    const/4 v0, 0x7

    .line 731
    .line 732
    move-object/from16 v2, v34

    .line 733
    .line 734
    .line 735
    invoke-direct {v1, v6, v0, v2}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 736
    const/4 v0, 0x6

    .line 737
    .line 738
    const/16 v3, 0x8

    .line 739
    .line 740
    .line 741
    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    .line 743
    .line 744
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 745
    return-void

    .line 746
    .line 747
    :goto_8
    iget-object v2, v1, Lcom/google/android/exoplayer2/k1;->constructorFinished:Lcom/google/android/exoplayer2/util/g;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 751
    throw v0

    .line 752
    nop

    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
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
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method static synthetic A0(Lcom/google/android/exoplayer2/k1;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 4
    return-void
.end method

.method private static synthetic A1(Lcom/google/android/exoplayer2/i2;ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/d3$d;->R(Lcom/google/android/exoplayer2/i2;I)V

    .line 4
    return-void
.end method

.method static synthetic B0(Lcom/google/android/exoplayer2/k1;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->a2(Landroid/graphics/SurfaceTexture;)V

    .line 4
    return-void
.end method

.method private static synthetic B1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->E(Lcom/google/android/exoplayer2/z2;)V

    .line 6
    return-void
.end method

.method static synthetic C0(Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->V1()V

    .line 4
    return-void
.end method

.method private static synthetic C1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->F(Lcom/google/android/exoplayer2/z2;)V

    .line 6
    return-void
.end method

.method static synthetic D0(ZI)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->g1(ZI)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic D1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/c0;->tracks:Lcom/google/android/exoplayer2/e4;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->N(Lcom/google/android/exoplayer2/e4;)V

    .line 8
    return-void
.end method

.method static synthetic E0(Lcom/google/android/exoplayer2/k1;ZII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/k1;->f2(ZII)V

    .line 4
    return-void
.end method

.method private static synthetic E1(Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->B(Lcom/google/android/exoplayer2/n2;)V

    .line 4
    return-void
.end method

.method static synthetic F0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/u3;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->streamVolumeManager:Lcom/google/android/exoplayer2/u3;

    .line 3
    return-object p0
.end method

.method private static synthetic F1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3$d;->onLoadingChanged(Z)V

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onIsLoadingChanged(Z)V

    .line 11
    return-void
.end method

.method static synthetic G0(Lcom/google/android/exoplayer2/u3;)Lcom/google/android/exoplayer2/o;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/k1;->X0(Lcom/google/android/exoplayer2/u3;)Lcom/google/android/exoplayer2/o;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic G1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 3
    .line 4
    iget p0, p0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/d3$d;->onPlayerStateChanged(ZI)V

    .line 8
    return-void
.end method

.method static synthetic H0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/o;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->deviceInfo:Lcom/google/android/exoplayer2/o;

    .line 3
    return-object p0
.end method

.method private static synthetic H1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onPlaybackStateChanged(I)V

    .line 6
    return-void
.end method

.method static synthetic I0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->deviceInfo:Lcom/google/android/exoplayer2/o;

    .line 3
    return-object p1
.end method

.method private static synthetic I1(Lcom/google/android/exoplayer2/a3;ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/d3$d;->onPlayWhenReadyChanged(ZI)V

    .line 6
    return-void
.end method

.method static synthetic J0(Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->i2()V

    .line 4
    return-void
.end method

.method private static synthetic J1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onPlaybackSuppressionReasonChanged(I)V

    .line 6
    return-void
.end method

.method static synthetic K0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 3
    return-object p1
.end method

.method private static synthetic K1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/k1;->n1(Lcom/google/android/exoplayer2/a3;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onIsPlayingChanged(Z)V

    .line 8
    return-void
.end method

.method static synthetic L0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/analytics/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/a;

    .line 3
    return-object p0
.end method

.method private static synthetic L1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->o(Lcom/google/android/exoplayer2/c3;)V

    .line 6
    return-void
.end method

.method static synthetic M0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->videoFormat:Lcom/google/android/exoplayer2/a2;

    .line 3
    return-object p1
.end method

.method private M1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/z3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/a3;
    .locals 19
    .param p3    # Landroid/util/Pair;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/a3;",
            "Lcom/google/android/exoplayer2/z3;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/exoplayer2/a3;"
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
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    iget-object v5, v3, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/a3;->i(Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/a3;

    .line 30
    move-result-object v6

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/exoplayer2/a3;->k()Lcom/google/android/exoplayer2/source/b0$b;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget-wide v2, v0, Lcom/google/android/exoplayer2/k1;->maskingWindowPositionMs:J

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 46
    move-result-wide v12

    .line 47
    .line 48
    const-wide/16 v14, 0x0

    .line 49
    .line 50
    sget-object v16, Lcom/google/android/exoplayer2/source/h1;->EMPTY:Lcom/google/android/exoplayer2/source/h1;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/google/android/exoplayer2/k1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 56
    move-result-object v18

    .line 57
    move-object v7, v1

    .line 58
    move-wide v8, v12

    .line 59
    move-wide v10, v12

    .line 60
    .line 61
    move-object/from16 v17, v2

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/a3;->c(Lcom/google/android/exoplayer2/source/b0$b;JJJJLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/a3;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/a3;->b(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/a3;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    iget-wide v2, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 72
    .line 73
    iput-wide v2, v1, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 74
    return-object v1

    .line 75
    .line 76
    :cond_2
    iget-object v3, v6, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v7

    .line 83
    .line 84
    check-cast v7, Landroid/util/Pair;

    .line 85
    .line 86
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v7

    .line 91
    xor-int/2addr v7, v4

    .line 92
    .line 93
    if-eqz v7, :cond_3

    .line 94
    .line 95
    new-instance v8, Lcom/google/android/exoplayer2/source/b0$b;

    .line 96
    .line 97
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/b0$b;-><init>(Ljava/lang/Object;)V

    .line 101
    :goto_2
    move-object v14, v8

    .line 102
    goto :goto_3

    .line 103
    .line 104
    :cond_3
    iget-object v8, v6, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v2, Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 113
    move-result-wide v12

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/k1;->getContentPosition()J

    .line 117
    move-result-wide v8

    .line 118
    .line 119
    .line 120
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 121
    move-result-wide v8

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 125
    move-result v2

    .line 126
    .line 127
    if-nez v2, :cond_4

    .line 128
    .line 129
    iget-object v2, v0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 137
    move-result-wide v2

    .line 138
    sub-long/2addr v8, v2

    .line 139
    .line 140
    :cond_4
    if-nez v7, :cond_5

    .line 141
    .line 142
    cmp-long v2, v12, v8

    .line 143
    .line 144
    if-gez v2, :cond_6

    .line 145
    :cond_5
    move-object v0, v14

    .line 146
    .line 147
    goto/16 :goto_6

    .line 148
    .line 149
    :cond_6
    if-nez v2, :cond_a

    .line 150
    .line 151
    iget-object v2, v6, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 152
    .line 153
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 157
    move-result v2

    .line 158
    const/4 v3, -0x1

    .line 159
    .line 160
    if-eq v2, v3, :cond_7

    .line 161
    .line 162
    iget-object v3, v0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/z3;->j(ILcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    iget v2, v2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 169
    .line 170
    iget-object v3, v14, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v4, v0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    iget v3, v3, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 179
    .line 180
    if-eq v2, v3, :cond_9

    .line 181
    .line 182
    :cond_7
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 183
    .line 184
    iget-object v3, v0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 191
    move-result v1

    .line 192
    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    iget-object v1, v0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 196
    .line 197
    iget v2, v14, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 198
    .line 199
    iget v3, v14, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/z3$b;->e(II)J

    .line 203
    move-result-wide v1

    .line 204
    goto :goto_4

    .line 205
    .line 206
    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 207
    .line 208
    iget-wide v1, v1, Lcom/google/android/exoplayer2/z3$b;->durationUs:J

    .line 209
    .line 210
    :goto_4
    iget-wide v8, v6, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 211
    .line 212
    iget-wide v10, v6, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 213
    .line 214
    iget-wide v12, v6, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 215
    .line 216
    iget-wide v3, v6, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 217
    .line 218
    sub-long v3, v1, v3

    .line 219
    .line 220
    iget-object v5, v6, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 221
    .line 222
    iget-object v15, v6, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 223
    .line 224
    iget-object v7, v6, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 225
    .line 226
    move-object/from16 v18, v7

    .line 227
    move-object v7, v14

    .line 228
    move-object v0, v14

    .line 229
    .line 230
    move-object/from16 v17, v15

    .line 231
    move-wide v14, v3

    .line 232
    .line 233
    move-object/from16 v16, v5

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/a3;->c(Lcom/google/android/exoplayer2/source/b0$b;JJJJLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/a3;

    .line 237
    move-result-object v3

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/a3;->b(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/a3;

    .line 241
    move-result-object v6

    .line 242
    .line 243
    iput-wide v1, v6, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 244
    .line 245
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    .line 246
    .line 247
    goto/16 :goto_d

    .line 248
    :cond_a
    move-object v0, v14

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 252
    move-result v1

    .line 253
    xor-int/2addr v1, v4

    .line 254
    .line 255
    .line 256
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 257
    .line 258
    iget-wide v1, v6, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 259
    .line 260
    sub-long v3, v12, v8

    .line 261
    sub-long/2addr v1, v3

    .line 262
    .line 263
    const-wide/16 v3, 0x0

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 267
    move-result-wide v14

    .line 268
    .line 269
    iget-wide v1, v6, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 270
    .line 271
    iget-object v3, v6, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 272
    .line 273
    iget-object v4, v6, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v3

    .line 278
    .line 279
    if-eqz v3, :cond_b

    .line 280
    .line 281
    add-long v1, v12, v14

    .line 282
    .line 283
    :cond_b
    iget-object v3, v6, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 284
    .line 285
    iget-object v4, v6, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 286
    .line 287
    iget-object v5, v6, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 288
    move-object v7, v0

    .line 289
    move-wide v8, v12

    .line 290
    move-wide v10, v12

    .line 291
    .line 292
    move-object/from16 v16, v3

    .line 293
    .line 294
    move-object/from16 v17, v4

    .line 295
    .line 296
    move-object/from16 v18, v5

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/a3;->c(Lcom/google/android/exoplayer2/source/b0$b;JJJJLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/a3;

    .line 300
    move-result-object v6

    .line 301
    .line 302
    iput-wide v1, v6, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 303
    goto :goto_5

    .line 304
    .line 305
    .line 306
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 307
    move-result v1

    .line 308
    xor-int/2addr v1, v4

    .line 309
    .line 310
    .line 311
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 312
    .line 313
    const-wide/16 v14, 0x0

    .line 314
    .line 315
    if-eqz v7, :cond_c

    .line 316
    .line 317
    sget-object v1, Lcom/google/android/exoplayer2/source/h1;->EMPTY:Lcom/google/android/exoplayer2/source/h1;

    .line 318
    .line 319
    :goto_7
    move-object/from16 v16, v1

    .line 320
    goto :goto_8

    .line 321
    .line 322
    :cond_c
    iget-object v1, v6, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 323
    goto :goto_7

    .line 324
    :goto_8
    move-object v1, v0

    .line 325
    .line 326
    move-object/from16 v0, p0

    .line 327
    .line 328
    if-eqz v7, :cond_d

    .line 329
    .line 330
    iget-object v2, v0, Lcom/google/android/exoplayer2/k1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 331
    .line 332
    :goto_9
    move-object/from16 v17, v2

    .line 333
    goto :goto_a

    .line 334
    .line 335
    :cond_d
    iget-object v2, v6, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 336
    goto :goto_9

    .line 337
    .line 338
    :goto_a
    if-eqz v7, :cond_e

    .line 339
    .line 340
    .line 341
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 342
    move-result-object v2

    .line 343
    .line 344
    :goto_b
    move-object/from16 v18, v2

    .line 345
    goto :goto_c

    .line 346
    .line 347
    :cond_e
    iget-object v2, v6, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 348
    goto :goto_b

    .line 349
    :goto_c
    move-object v7, v1

    .line 350
    move-wide v8, v12

    .line 351
    move-wide v10, v12

    .line 352
    move-wide v2, v12

    .line 353
    .line 354
    .line 355
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/a3;->c(Lcom/google/android/exoplayer2/source/b0$b;JJJJLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/a3;

    .line 356
    move-result-object v4

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/a3;->b(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/a3;

    .line 360
    move-result-object v6

    .line 361
    .line 362
    iput-wide v2, v6, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 363
    :goto_d
    return-object v6
.end method

.method static synthetic N0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/video/a0;)Lcom/google/android/exoplayer2/video/a0;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->videoSize:Lcom/google/android/exoplayer2/video/a0;

    .line 3
    return-object p1
.end method

.method private N1(Lcom/google/android/exoplayer2/z3;IJ)Landroid/util/Pair;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/z3;",
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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iput p2, p0, Lcom/google/android/exoplayer2/k1;->maskingWindowIndex:I

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
    iput-wide p3, p0, Lcom/google/android/exoplayer2/k1;->maskingWindowPositionMs:J

    .line 22
    const/4 p1, 0x0

    .line 23
    .line 24
    iput p1, p0, Lcom/google/android/exoplayer2/k1;->maskingPeriodIndex:I

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->t()I

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
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/k1;->shuffleModeEnabled:Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/z3;->e(Z)I

    .line 44
    move-result p2

    .line 45
    .line 46
    iget-object p3, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/z3$d;->e()J

    .line 54
    move-result-wide p3

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :goto_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 60
    .line 61
    .line 62
    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 63
    move-result-wide v4

    .line 64
    move-object v0, p1

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method

.method static synthetic O0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/util/s;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 3
    return-object p0
.end method

.method private O1(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->surfaceSize:Lcom/google/android/exoplayer2/util/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g0;->b()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->surfaceSize:Lcom/google/android/exoplayer2/util/g0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g0;->a()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/g0;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/util/g0;-><init>(II)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->surfaceSize:Lcom/google/android/exoplayer2/util/g0;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/exoplayer2/l0;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/l0;-><init>(II)V

    .line 31
    .line 32
    const/16 p1, 0x18

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 36
    :cond_1
    return-void
.end method

.method static synthetic P0(Lcom/google/android/exoplayer2/k1;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->videoOutput:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method private P1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)J
    .locals 1

    .line 1
    .line 2
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 13
    move-result-wide p1

    .line 14
    add-long/2addr p3, p1

    .line 15
    return-wide p3
.end method

.method static synthetic Q0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/decoder/e;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/e;

    .line 3
    return-object p1
.end method

.method private Q1(II)Lcom/google/android/exoplayer2/a3;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-lt p2, p1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-gt p2, v1, :cond_0

    .line 14
    move v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    move-result v3

    .line 34
    .line 35
    iget v4, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 36
    add-int/2addr v4, v0

    .line 37
    .line 38
    iput v4, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->R1(II)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->Y0()Lcom/google/android/exoplayer2/z3;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    iget-object v5, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v2, v4}, Lcom/google/android/exoplayer2/k1;->f1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Landroid/util/Pair;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v5, v4, v2}, Lcom/google/android/exoplayer2/k1;->M1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/z3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/a3;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    iget v4, v2, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 58
    .line 59
    if-eq v4, v0, :cond_1

    .line 60
    const/4 v0, 0x4

    .line 61
    .line 62
    if-eq v4, v0, :cond_1

    .line 63
    .line 64
    if-ge p1, p2, :cond_1

    .line 65
    .line 66
    if-ne p2, v3, :cond_1

    .line 67
    .line 68
    iget-object v3, v2, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 72
    move-result v3

    .line 73
    .line 74
    if-lt v1, v3, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/a3;->g(I)Lcom/google/android/exoplayer2/a3;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/w1;->l0(IILcom/google/android/exoplayer2/source/y0;)V

    .line 86
    return-object v2
.end method

.method public static synthetic R(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->v1(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private R1(II)V
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
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/y0;->a(II)Lcom/google/android/exoplayer2/source/y0;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 21
    return-void
.end method

.method public static synthetic S(ZLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->u1(ZLcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private S1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->frameMetadataListener:Lcom/google/android/exoplayer2/k1$d;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->a1(Lcom/google/android/exoplayer2/h3$b;)Lcom/google/android/exoplayer2/h3;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const/16 v2, 0x2710

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/h3;->n(I)Lcom/google/android/exoplayer2/h3;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h3;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/h3;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h3;->l()Lcom/google/android/exoplayer2/h3;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/l;->i(Lcom/google/android/exoplayer2/video/spherical/l$b;)V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/google/android/exoplayer2/k1;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->textureView:Landroid/view/TextureView;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

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
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->textureView:Landroid/view/TextureView;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 59
    .line 60
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/k1;->textureView:Landroid/view/TextureView;

    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 70
    .line 71
    iput-object v1, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 72
    :cond_3
    return-void
.end method

.method public static synthetic T(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->B1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private T0(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/b0;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/u2$c;",
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
    new-instance v2, Lcom/google/android/exoplayer2/u2$c;

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Lcom/google/android/exoplayer2/source/b0;

    .line 21
    .line 22
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/k1;->useLazyPreparation:Z

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/u2$c;-><init>(Lcom/google/android/exoplayer2/source/b0;Z)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 31
    .line 32
    add-int v4, v1, p1

    .line 33
    .line 34
    new-instance v5, Lcom/google/android/exoplayer2/k1$e;

    .line 35
    .line 36
    iget-object v6, v2, Lcom/google/android/exoplayer2/u2$c;->uid:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/google/android/exoplayer2/u2$c;->mediaSource:Lcom/google/android/exoplayer2/source/w;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/w;->T()Lcom/google/android/exoplayer2/z3;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/k1$e;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3;)V

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
    iget-object p2, p0, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/y0;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/y0;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 64
    return-object v0
.end method

.method private T1(IJZ)V
    .locals 14

    .line 1
    move-object v11, p0

    .line 2
    move v0, p1

    .line 3
    .line 4
    move-wide/from16 v1, p2

    .line 5
    .line 6
    iget-object v3, v11, Lcom/google/android/exoplayer2/k1;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/a;

    .line 7
    .line 8
    .line 9
    invoke-interface {v3}, Lcom/google/android/exoplayer2/analytics/a;->p()V

    .line 10
    .line 11
    iget-object v3, v11, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 14
    .line 15
    if-ltz v0, :cond_3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 19
    move-result v4

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 25
    move-result v4

    .line 26
    .line 27
    if-ge v0, v4, :cond_3

    .line 28
    .line 29
    :cond_0
    iget v4, v11, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 30
    const/4 v5, 0x1

    .line 31
    add-int/2addr v4, v5

    .line 32
    .line 33
    iput v4, v11, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->isPlayingAd()Z

    .line 37
    move-result v4

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const-string v0, "ExoPlayerImpl"

    .line 42
    .line 43
    const-string v1, "seekTo ignored because an ad is playing"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    new-instance v0, Lcom/google/android/exoplayer2/w1$e;

    .line 49
    .line 50
    iget-object v1, v11, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/w1$e;-><init>(Lcom/google/android/exoplayer2/a3;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 57
    .line 58
    iget-object v1, v11, Lcom/google/android/exoplayer2/k1;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/w1$f;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/w1$f;->a(Lcom/google/android/exoplayer2/w1$e;)V

    .line 62
    return-void

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getPlaybackState()I

    .line 66
    move-result v4

    .line 67
    .line 68
    if-ne v4, v5, :cond_2

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v5, 0x2

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 74
    move-result v9

    .line 75
    .line 76
    iget-object v4, v11, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a3;->g(I)Lcom/google/android/exoplayer2/a3;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/k1;->N1(Lcom/google/android/exoplayer2/z3;IJ)Landroid/util/Pair;

    .line 84
    move-result-object v5

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/exoplayer2/k1;->M1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/z3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/a3;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    iget-object v5, v11, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 91
    .line 92
    .line 93
    invoke-static/range {p2 .. p3}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 94
    move-result-wide v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/w1;->y0(Lcom/google/android/exoplayer2/z3;IJ)V

    .line 98
    const/4 v2, 0x0

    .line 99
    const/4 v3, 0x1

    .line 100
    const/4 v5, 0x1

    .line 101
    const/4 v6, 0x1

    .line 102
    const/4 v7, 0x1

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/k1;->d1(Lcom/google/android/exoplayer2/a3;)J

    .line 106
    move-result-wide v12

    .line 107
    move-object v0, p0

    .line 108
    move-object v1, v4

    .line 109
    move v4, v5

    .line 110
    move v5, v6

    .line 111
    move v6, v7

    .line 112
    move-wide v7, v12

    .line 113
    .line 114
    move/from16 v10, p4

    .line 115
    .line 116
    .line 117
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/k1;->g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V

    .line 118
    return-void

    .line 119
    .line 120
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/e2;

    .line 121
    .line 122
    .line 123
    invoke-direct {v4, v3, p1, v1, v2}, Lcom/google/android/exoplayer2/e2;-><init>(Lcom/google/android/exoplayer2/z3;IJ)V

    .line 124
    throw v4
.end method

.method public static synthetic U(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->p1(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method private U0()Lcom/google/android/exoplayer2/n2;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getCurrentTimeline()Lcom/google/android/exoplayer2/z3;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 17
    move-result v1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n2;->b()Lcom/google/android/exoplayer2/n2$b;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/exoplayer2/i2;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/n2$b;->H(Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/n2$b;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n2$b;->F()Lcom/google/android/exoplayer2/n2;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method private U1(IILjava/lang/Object;)V
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-interface {v3}, Lcom/google/android/exoplayer2/m3;->getTrackType()I

    .line 12
    move-result v4

    .line 13
    .line 14
    if-ne v4, p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/k1;->a1(Lcom/google/android/exoplayer2/h3$b;)Lcom/google/android/exoplayer2/h3;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/h3;->n(I)Lcom/google/android/exoplayer2/h3;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/h3;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/h3;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/h3;->l()Lcom/google/android/exoplayer2/h3;

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

.method public static synthetic V(FLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->w1(FLcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private V1()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->volume:F

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->audioFocusManager:Lcom/google/android/exoplayer2/d;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/d;->g()F

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
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/exoplayer2/k1;->U1(IILjava/lang/Object;)V

    .line 19
    return-void
.end method

.method public static synthetic W(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->H1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic X(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->D1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private static X0(Lcom/google/android/exoplayer2/u3;)Lcom/google/android/exoplayer2/o;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/o;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u3;->d()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/u3;->c()I

    .line 10
    move-result p0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/o;-><init>(III)V

    .line 15
    return-object v0
.end method

.method public static synthetic Y(IILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->o1(IILcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private Y0()Lcom/google/android/exoplayer2/z3;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i3;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/i3;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/y0;)V

    .line 10
    return-object v0
.end method

.method private Y1(Ljava/util/List;IJZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/b0;",
            ">;IJZ)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    move/from16 v0, p2

    .line 5
    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/k1;->e1()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/k1;->getCurrentPosition()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    iget v4, v11, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 15
    const/4 v5, 0x1

    .line 16
    add-int/2addr v4, v5

    .line 17
    .line 18
    iput v4, v11, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 19
    .line 20
    iget-object v4, v11, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 24
    move-result v4

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v4, v11, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 33
    move-result v4

    .line 34
    .line 35
    .line 36
    invoke-direct {v11, v6, v4}, Lcom/google/android/exoplayer2/k1;->R1(II)V

    .line 37
    .line 38
    :cond_0
    move-object/from16 v4, p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v11, v6, v4}, Lcom/google/android/exoplayer2/k1;->T0(ILjava/util/List;)Ljava/util/List;

    .line 42
    move-result-object v13

    .line 43
    .line 44
    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/k1;->Y0()Lcom/google/android/exoplayer2/z3;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 50
    move-result v7

    .line 51
    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 56
    move-result v7

    .line 57
    .line 58
    if-ge v0, v7, :cond_2

    .line 59
    .line 60
    :cond_1
    move-wide/from16 v7, p3

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    new-instance v1, Lcom/google/android/exoplayer2/e2;

    .line 64
    .line 65
    move-wide/from16 v7, p3

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v4, v0, v7, v8}, Lcom/google/android/exoplayer2/e2;-><init>(Lcom/google/android/exoplayer2/z3;IJ)V

    .line 69
    throw v1

    .line 70
    :goto_0
    const/4 v9, -0x1

    .line 71
    .line 72
    if-eqz p5, :cond_3

    .line 73
    .line 74
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/k1;->shuffleModeEnabled:Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/z3;->e(Z)I

    .line 78
    move-result v0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 84
    move v14, v0

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_3
    if-ne v0, v9, :cond_4

    .line 88
    move v14, v1

    .line 89
    move-wide v1, v2

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v14, v0

    .line 92
    move-wide v1, v7

    .line 93
    .line 94
    :goto_1
    iget-object v0, v11, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 95
    .line 96
    .line 97
    invoke-direct {v11, v4, v14, v1, v2}, Lcom/google/android/exoplayer2/k1;->N1(Lcom/google/android/exoplayer2/z3;IJ)Landroid/util/Pair;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-direct {v11, v0, v4, v3}, Lcom/google/android/exoplayer2/k1;->M1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/z3;Landroid/util/Pair;)Lcom/google/android/exoplayer2/a3;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iget v3, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 105
    .line 106
    if-eq v14, v9, :cond_7

    .line 107
    .line 108
    if-eq v3, v5, :cond_7

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 112
    move-result v3

    .line 113
    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/z3;->t()I

    .line 118
    move-result v3

    .line 119
    .line 120
    if-lt v14, v3, :cond_5

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    const/4 v3, 0x2

    .line 123
    goto :goto_3

    .line 124
    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/a3;->g(I)Lcom/google/android/exoplayer2/a3;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    iget-object v12, v11, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 134
    move-result-wide v15

    .line 135
    .line 136
    iget-object v0, v11, Lcom/google/android/exoplayer2/k1;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 137
    .line 138
    move-object/from16 v17, v0

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer2/w1;->K0(Ljava/util/List;IJLcom/google/android/exoplayer2/source/y0;)V

    .line 142
    .line 143
    iget-object v0, v11, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 148
    .line 149
    iget-object v1, v3, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v0

    .line 156
    .line 157
    if-nez v0, :cond_8

    .line 158
    .line 159
    iget-object v0, v11, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 165
    move-result v0

    .line 166
    .line 167
    if-nez v0, :cond_8

    .line 168
    goto :goto_4

    .line 169
    :cond_8
    move v5, v6

    .line 170
    :goto_4
    const/4 v2, 0x0

    .line 171
    const/4 v4, 0x1

    .line 172
    const/4 v6, 0x0

    .line 173
    const/4 v7, 0x4

    .line 174
    .line 175
    .line 176
    invoke-direct {v11, v3}, Lcom/google/android/exoplayer2/k1;->d1(Lcom/google/android/exoplayer2/a3;)J

    .line 177
    move-result-wide v8

    .line 178
    const/4 v10, -0x1

    .line 179
    const/4 v12, 0x0

    .line 180
    .line 181
    move-object/from16 v0, p0

    .line 182
    move-object v1, v3

    .line 183
    move v3, v4

    .line 184
    move v4, v6

    .line 185
    move v6, v7

    .line 186
    move-wide v7, v8

    .line 187
    move v9, v10

    .line 188
    move v10, v12

    .line 189
    .line 190
    .line 191
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/k1;->g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V

    .line 192
    return-void
.end method

.method public static synthetic Z(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->J1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private Z0(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/i2;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/b0;",
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
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/b0$a;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Lcom/google/android/exoplayer2/i2;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/b0$a;->c(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/b0;

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

.method private Z1(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolder:Landroid/view/SurfaceHolder;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolder:Landroid/view/SurfaceHolder;

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 46
    :goto_0
    return-void
.end method

.method public static synthetic a0(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->L1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private a1(Lcom/google/android/exoplayer2/h3$b;)Lcom/google/android/exoplayer2/h3;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->e1()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v8, Lcom/google/android/exoplayer2/h3;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 11
    .line 12
    iget-object v4, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_0
    move v5, v0

    .line 18
    .line 19
    iget-object v6, p0, Lcom/google/android/exoplayer2/k1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/w1;->z()Landroid/os/Looper;

    .line 23
    move-result-object v7

    .line 24
    move-object v1, v8

    .line 25
    move-object v3, p1

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/h3;-><init>(Lcom/google/android/exoplayer2/h3$a;Lcom/google/android/exoplayer2/h3$b;Lcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/util/d;Landroid/os/Looper;)V

    .line 29
    return-object v8
.end method

.method private a2(Landroid/graphics/SurfaceTexture;)V
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
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->ownedSurface:Landroid/view/Surface;

    .line 11
    return-void
.end method

.method public static synthetic b0(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->K1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private b1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/a3;ZIZZ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/a3;",
            "Lcom/google/android/exoplayer2/a3;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p2, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    iget-object v2, p2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    iget v2, v2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 65
    .line 66
    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v0, v0, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v2, p1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    iget v2, v2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 85
    .line 86
    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    iget-object v1, v1, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

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
    iget-object p2, p2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 139
    .line 140
    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 141
    .line 142
    iget-object p1, p1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 143
    .line 144
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

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

.method private b2(Ljava/lang/Object;)V
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
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-interface {v6}, Lcom/google/android/exoplayer2/m3;->getTrackType()I

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
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/k1;->a1(Lcom/google/android/exoplayer2/h3$b;)Lcom/google/android/exoplayer2/h3;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/h3;->n(I)Lcom/google/android/exoplayer2/h3;

    .line 30
    move-result-object v5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/h3;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/h3;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/h3;->l()Lcom/google/android/exoplayer2/h3;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->videoOutput:Ljava/lang/Object;

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
    check-cast v1, Lcom/google/android/exoplayer2/h3;

    .line 67
    .line 68
    iget-wide v6, p0, Lcom/google/android/exoplayer2/k1;->detachSurfaceTimeoutMs:J

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/h3;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 80
    :cond_2
    move v5, v3

    .line 81
    .line 82
    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->videoOutput:Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->ownedSurface:Landroid/view/Surface;

    .line 85
    .line 86
    if-ne v0, v1, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 90
    const/4 v0, 0x0

    .line 91
    .line 92
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->ownedSurface:Landroid/view/Surface;

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v5, v3

    .line 95
    .line 96
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->videoOutput:Ljava/lang/Object;

    .line 97
    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    new-instance p1, Lcom/google/android/exoplayer2/y1;

    .line 101
    const/4 v0, 0x3

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/y1;-><init>(I)V

    .line 105
    .line 106
    const/16 v0, 0x3eb

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/q;->j(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/q;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-direct {p0, v3, p1}, Lcom/google/android/exoplayer2/k1;->d2(ZLcom/google/android/exoplayer2/q;)V

    .line 114
    :cond_5
    return-void
.end method

.method public static synthetic c0(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->C1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method public static synthetic d0(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->G1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private d1(Lcom/google/android/exoplayer2/a3;)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/google/android/exoplayer2/k1;->maskingWindowPositionMs:J

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-wide v0, p1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 26
    return-wide v0

    .line 27
    .line 28
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 29
    .line 30
    iget-object v1, p1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 31
    .line 32
    iget-wide v2, p1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/k1;->P1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)J

    .line 36
    move-result-wide v0

    .line 37
    return-wide v0
.end method

.method private d2(ZLcom/google/android/exoplayer2/q;)V
    .locals 13
    .param p2    # Lcom/google/android/exoplayer2/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/k1;->Q1(II)Lcom/google/android/exoplayer2/a3;

    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/a3;->e(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/a3;

    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 22
    .line 23
    iget-object v1, p1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/a3;->b(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/a3;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-wide v1, p1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 30
    .line 31
    iput-wide v1, p1, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    iput-wide v1, p1, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 36
    :goto_0
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/a3;->g(I)Lcom/google/android/exoplayer2/a3;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a3;->e(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/a3;

    .line 46
    move-result-object p1

    .line 47
    :cond_1
    move-object v3, p1

    .line 48
    .line 49
    iget p1, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 50
    add-int/2addr p1, v1

    .line 51
    .line 52
    iput p1, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 53
    .line 54
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/w1;->e1()V

    .line 58
    .line 59
    iget-object p1, v3, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 63
    move-result p1

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 73
    move-result p1

    .line 74
    .line 75
    if-nez p1, :cond_2

    .line 76
    move v7, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v7, v0

    .line 79
    :goto_1
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x1

    .line 81
    const/4 v6, 0x0

    .line 82
    const/4 v8, 0x4

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/k1;->d1(Lcom/google/android/exoplayer2/a3;)J

    .line 86
    move-result-wide v9

    .line 87
    const/4 v11, -0x1

    .line 88
    const/4 v12, 0x0

    .line 89
    move-object v2, p0

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/k1;->g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V

    .line 93
    return-void
.end method

.method public static synthetic e0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/w1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->r1(Lcom/google/android/exoplayer2/w1$e;)V

    return-void
.end method

.method private e1()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->maskingWindowIndex:I

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget v0, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 30
    return v0
.end method

.method private e2()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->availableCommands:Lcom/google/android/exoplayer2/d3$b;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->wrappingPlayer:Lcom/google/android/exoplayer2/d3;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->permanentAvailableCommands:Lcom/google/android/exoplayer2/d3$b;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->E(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/d3$b;)Lcom/google/android/exoplayer2/d3$b;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/k1;->availableCommands:Lcom/google/android/exoplayer2/d3$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/d3$b;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 21
    .line 22
    new-instance v1, Lcom/google/android/exoplayer2/b1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/b1;-><init>(Lcom/google/android/exoplayer2/k1;)V

    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 31
    :cond_0
    return-void
.end method

.method public static synthetic f0(ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/k1;->z1(ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private f1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Landroid/util/Pair;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/z3;",
            "Lcom/google/android/exoplayer2/z3;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getContentPosition()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 8
    move-result v2

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    const/4 v5, -0x1

    .line 15
    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 27
    move-result v9

    .line 28
    .line 29
    iget-object v7, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 30
    .line 31
    iget-object v8, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 35
    move-result-wide v10

    .line 36
    move-object v6, p1

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Landroid/util/Pair;

    .line 47
    .line 48
    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eq v1, v5, :cond_1

    .line 55
    return-object v0

    .line 56
    .line 57
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 58
    .line 59
    iget-object v7, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 60
    .line 61
    iget v8, p0, Lcom/google/android/exoplayer2/k1;->repeatMode:I

    .line 62
    .line 63
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/k1;->shuffleModeEnabled:Z

    .line 64
    move-object v11, p1

    .line 65
    move-object v12, p2

    .line 66
    .line 67
    .line 68
    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/w1;->w0(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 79
    .line 80
    iget p1, p1, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3$d;->e()J

    .line 90
    move-result-wide v0

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/exoplayer2/k1;->N1(Lcom/google/android/exoplayer2/z3;IJ)Landroid/util/Pair;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-direct {p0, p2, v5, v3, v4}, Lcom/google/android/exoplayer2/k1;->N1(Lcom/google/android/exoplayer2/z3;IJ)Landroid/util/Pair;

    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 104
    move-result p1

    .line 105
    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-eqz p1, :cond_4

    .line 113
    const/4 p1, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    const/4 p1, 0x0

    .line 116
    .line 117
    :goto_1
    if-eqz p1, :cond_5

    .line 118
    goto :goto_2

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->e1()I

    .line 122
    move-result v5

    .line 123
    .line 124
    :goto_2
    if-eqz p1, :cond_6

    .line 125
    move-wide v0, v3

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-direct {p0, p2, v5, v0, v1}, Lcom/google/android/exoplayer2/k1;->N1(Lcom/google/android/exoplayer2/z3;IJ)Landroid/util/Pair;

    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method

.method private f2(ZII)V
    .locals 11

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 v3, -0x1

    .line 6
    .line 7
    if-eq p2, v3, :cond_0

    .line 8
    move v3, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v3, v1

    .line 11
    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-eq p2, v2, :cond_1

    .line 15
    move v1, v2

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 18
    .line 19
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 20
    .line 21
    if-ne v4, v3, :cond_2

    .line 22
    .line 23
    iget v4, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 24
    .line 25
    if-ne v4, v1, :cond_2

    .line 26
    return-void

    .line 27
    .line 28
    :cond_2
    iget v4, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 29
    add-int/2addr v4, v2

    .line 30
    .line 31
    iput v4, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/a3;->d(ZI)Lcom/google/android/exoplayer2/a3;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/w1;->N0(ZI)V

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x5

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    const/4 v9, -0x1

    .line 51
    const/4 v10, 0x0

    .line 52
    move-object v0, p0

    .line 53
    move-object v1, v2

    .line 54
    move v2, v3

    .line 55
    move v3, p3

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/k1;->g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V

    .line 59
    return-void
.end method

.method public static synthetic g0(Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->E1(Lcom/google/android/exoplayer2/n2;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private static g1(ZI)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p6

    iget-object v10, v7, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    iput-object v8, v7, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 1
    iget-object v0, v10, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    iget-object v1, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z3;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    xor-int/lit8 v12, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v12

    move/from16 v6, p10

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/k1;->b1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/a3;ZIZZ)Landroid/util/Pair;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v7, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    iget-object v4, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/z3;->u()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    iget-object v3, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    iget-object v4, v8, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    iget-object v5, v7, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 7
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 8
    iget-object v4, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    iget-object v5, v7, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 9
    :cond_0
    sget-object v4, Lcom/google/android/exoplayer2/n2;->EMPTY:Lcom/google/android/exoplayer2/n2;

    iput-object v4, v7, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    :cond_1
    if-nez v1, :cond_2

    .line 10
    iget-object v4, v10, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    iget-object v5, v8, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 11
    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v2, v7, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n2;->b()Lcom/google/android/exoplayer2/n2$b;

    move-result-object v2

    iget-object v4, v8, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 13
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/n2$b;->J(Ljava/util/List;)Lcom/google/android/exoplayer2/n2$b;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n2$b;->F()Lcom/google/android/exoplayer2/n2;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/k1;->U0()Lcom/google/android/exoplayer2/n2;

    move-result-object v2

    :cond_3
    iget-object v4, v7, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 16
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/n2;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v11

    iput-object v2, v7, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 17
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    const/4 v6, 0x0

    if-eq v2, v5, :cond_4

    move v2, v11

    goto :goto_0

    :cond_4
    move v2, v6

    .line 18
    :goto_0
    iget v5, v10, Lcom/google/android/exoplayer2/a3;->playbackState:I

    iget v13, v8, Lcom/google/android/exoplayer2/a3;->playbackState:I

    if-eq v5, v13, :cond_5

    move v5, v11

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    .line 19
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/k1;->i2()V

    .line 20
    :cond_7
    iget-boolean v13, v10, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    iget-boolean v14, v8, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    if-eq v13, v14, :cond_8

    move v13, v11

    goto :goto_2

    :cond_8
    move v13, v6

    :goto_2
    if-eqz v13, :cond_9

    .line 21
    invoke-direct {v7, v14}, Lcom/google/android/exoplayer2/k1;->h2(Z)V

    :cond_9
    if-eqz v12, :cond_a

    iget-object v12, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 22
    new-instance v14, Lcom/google/android/exoplayer2/h1;

    move/from16 v15, p2

    invoke-direct {v14, v8, v15}, Lcom/google/android/exoplayer2/h1;-><init>(Lcom/google/android/exoplayer2/a3;I)V

    invoke-virtual {v12, v6, v14}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_a
    if-eqz p5, :cond_b

    move/from16 v6, p9

    .line 23
    invoke-direct {v7, v9, v10, v6}, Lcom/google/android/exoplayer2/k1;->j1(ILcom/google/android/exoplayer2/a3;I)Lcom/google/android/exoplayer2/d3$e;

    move-result-object v6

    move-wide/from16 v14, p7

    .line 24
    invoke-direct {v7, v14, v15}, Lcom/google/android/exoplayer2/k1;->i1(J)Lcom/google/android/exoplayer2/d3$e;

    move-result-object v12

    iget-object v14, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 25
    new-instance v15, Lcom/google/android/exoplayer2/p0;

    invoke-direct {v15, v9, v6, v12}, Lcom/google/android/exoplayer2/p0;-><init>(ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;)V

    const/16 v6, 0xb

    invoke-virtual {v14, v6, v15}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 26
    new-instance v6, Lcom/google/android/exoplayer2/q0;

    invoke-direct {v6, v3, v0}, Lcom/google/android/exoplayer2/q0;-><init>(Lcom/google/android/exoplayer2/i2;I)V

    invoke-virtual {v1, v11, v6}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 27
    :cond_c
    iget-object v0, v10, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    iget-object v1, v8, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    if-eq v0, v1, :cond_d

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 28
    new-instance v1, Lcom/google/android/exoplayer2/r0;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/r0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 29
    iget-object v0, v8, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 30
    new-instance v1, Lcom/google/android/exoplayer2/s0;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/s0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 31
    :cond_d
    iget-object v0, v10, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    iget-object v1, v8, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    if-eq v0, v1, :cond_e

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 32
    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/c0;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/b0;->f(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 33
    new-instance v1, Lcom/google/android/exoplayer2/t0;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/t0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_e
    if-eqz v4, :cond_f

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 34
    new-instance v3, Lcom/google/android/exoplayer2/u0;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/u0;-><init>(Lcom/google/android/exoplayer2/n2;)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_f
    if-eqz v13, :cond_10

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 35
    new-instance v1, Lcom/google/android/exoplayer2/v0;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/v0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_10
    const/4 v0, -0x1

    if-nez v5, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 36
    new-instance v3, Lcom/google/android/exoplayer2/x0;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/x0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_12
    if-eqz v5, :cond_13

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 37
    new-instance v3, Lcom/google/android/exoplayer2/y0;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/y0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_13
    if-eqz v2, :cond_14

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 38
    new-instance v2, Lcom/google/android/exoplayer2/i1;

    move/from16 v3, p3

    invoke-direct {v2, v8, v3}, Lcom/google/android/exoplayer2/i1;-><init>(Lcom/google/android/exoplayer2/a3;I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 39
    :cond_14
    iget v1, v10, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    iget v2, v8, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    if-eq v1, v2, :cond_15

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 40
    new-instance v2, Lcom/google/android/exoplayer2/j1;

    invoke-direct {v2, v8}, Lcom/google/android/exoplayer2/j1;-><init>(Lcom/google/android/exoplayer2/a3;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 41
    :cond_15
    invoke-static {v10}, Lcom/google/android/exoplayer2/k1;->n1(Lcom/google/android/exoplayer2/a3;)Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/k1;->n1(Lcom/google/android/exoplayer2/a3;)Z

    move-result v2

    if-eq v1, v2, :cond_16

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 42
    new-instance v2, Lcom/google/android/exoplayer2/m0;

    invoke-direct {v2, v8}, Lcom/google/android/exoplayer2/m0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 43
    :cond_16
    iget-object v1, v10, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    iget-object v2, v8, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/c3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 44
    new-instance v2, Lcom/google/android/exoplayer2/n0;

    invoke-direct {v2, v8}, Lcom/google/android/exoplayer2/n0;-><init>(Lcom/google/android/exoplayer2/a3;)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    :cond_17
    if-eqz p4, :cond_18

    iget-object v1, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 45
    new-instance v2, Lcom/google/android/exoplayer2/o0;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/o0;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 46
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/k1;->e2()V

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->f()V

    .line 48
    iget-boolean v0, v10, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    iget-boolean v1, v8, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    if-eq v0, v1, :cond_19

    iget-object v0, v7, Lcom/google/android/exoplayer2/k1;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/s$a;

    .line 50
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/s$a;->o(Z)V

    goto :goto_3

    :cond_19
    return-void
.end method

.method public static synthetic h0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->x1(Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private h2(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->priorityTaskManager:Lcom/google/android/exoplayer2/util/e0;

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
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/k1;->isPriorityTaskManagerRegistered:Z

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/e0;->a(I)V

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k1;->isPriorityTaskManagerRegistered:Z

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/k1;->isPriorityTaskManagerRegistered:Z

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/e0;->b(I)V

    .line 28
    .line 29
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/k1;->isPriorityTaskManagerRegistered:Z

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic i0(ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->t1(ILcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private i1(J)Lcom/google/android/exoplayer2/d3$e;
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 4
    move-result v2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 35
    move-result v0

    .line 36
    .line 37
    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    iget-object v3, v3, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

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
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 67
    move-result-wide v6

    .line 68
    .line 69
    new-instance p1, Lcom/google/android/exoplayer2/d3$e;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 72
    .line 73
    iget-object p2, p2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 77
    move-result p2

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    iget-object p2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lcom/google/android/exoplayer2/k1;->k1(Lcom/google/android/exoplayer2/a3;)J

    .line 85
    move-result-wide v8

    .line 86
    .line 87
    .line 88
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

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
    iget-object p2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 94
    .line 95
    iget-object p2, p2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 96
    .line 97
    iget v10, p2, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 98
    .line 99
    iget v11, p2, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 100
    move-object v0, p1

    .line 101
    .line 102
    .line 103
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/d3$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/i2;Ljava/lang/Object;IJJII)V

    .line 104
    return-object p1
.end method

.method private i2()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getPlaybackState()I

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->c1()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->wakeLockManager:Lcom/google/android/exoplayer2/f4;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getPlayWhenReady()Z

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
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/f4;->b(Z)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->wifiLockManager:Lcom/google/android/exoplayer2/g4;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getPlayWhenReady()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/g4;->b(Z)V

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->wakeLockManager:Lcom/google/android/exoplayer2/f4;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/f4;->b(Z)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->wifiLockManager:Lcom/google/android/exoplayer2/g4;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/g4;->b(Z)V

    .line 64
    :goto_2
    return-void
.end method

.method public static synthetic j0(Lcom/google/android/exoplayer2/i2;ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->A1(Lcom/google/android/exoplayer2/i2;ILcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private j1(ILcom/google/android/exoplayer2/a3;I)Lcom/google/android/exoplayer2/d3$e;
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    new-instance v2, Lcom/google/android/exoplayer2/z3$b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    .line 10
    .line 11
    iget-object v3, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 15
    move-result v3

    .line 16
    const/4 v4, -0x1

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iget-object v3, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v5, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 28
    .line 29
    iget v5, v2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 30
    .line 31
    iget-object v6, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 35
    move-result v6

    .line 36
    .line 37
    iget-object v7, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 38
    .line 39
    iget-object v8, v0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v7, v5, v8}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 43
    move-result-object v7

    .line 44
    .line 45
    iget-object v7, v7, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v8, v0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 48
    .line 49
    iget-object v8, v8, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

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
    iget-object v3, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    iget-object v3, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 74
    .line 75
    iget v4, v3, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 76
    .line 77
    iget v3, v3, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/z3$b;->e(II)J

    .line 81
    move-result-wide v2

    .line 82
    .line 83
    .line 84
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/k1;->k1(Lcom/google/android/exoplayer2/a3;)J

    .line 85
    move-result-wide v4

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 89
    .line 90
    iget v3, v3, Lcom/google/android/exoplayer2/source/z;->nextAdGroupIndex:I

    .line 91
    .line 92
    if-eq v3, v4, :cond_2

    .line 93
    .line 94
    iget-object v2, v0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lcom/google/android/exoplayer2/k1;->k1(Lcom/google/android/exoplayer2/a3;)J

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
    iget-wide v3, v2, Lcom/google/android/exoplayer2/z3$b;->positionInWindowUs:J

    .line 103
    .line 104
    iget-wide v11, v2, Lcom/google/android/exoplayer2/z3$b;->durationUs:J

    .line 105
    .line 106
    add-long v2, v3, v11

    .line 107
    goto :goto_1

    .line 108
    .line 109
    :cond_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 113
    move-result v3

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    iget-wide v2, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 118
    .line 119
    .line 120
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/k1;->k1(Lcom/google/android/exoplayer2/a3;)J

    .line 121
    move-result-wide v4

    .line 122
    goto :goto_2

    .line 123
    .line 124
    :cond_4
    iget-wide v2, v2, Lcom/google/android/exoplayer2/z3$b;->positionInWindowUs:J

    .line 125
    .line 126
    iget-wide v4, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 127
    add-long/2addr v2, v4

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :goto_2
    new-instance v17, Lcom/google/android/exoplayer2/d3$e;

    .line 131
    .line 132
    .line 133
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 134
    move-result-wide v11

    .line 135
    .line 136
    .line 137
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 138
    move-result-wide v13

    .line 139
    .line 140
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 141
    .line 142
    iget v15, v1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 143
    .line 144
    iget v1, v1, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 145
    .line 146
    move-object/from16 v5, v17

    .line 147
    .line 148
    move/from16 v16, v1

    .line 149
    .line 150
    .line 151
    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplayer2/d3$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/i2;Ljava/lang/Object;IJJII)V

    .line 152
    return-object v17
.end method

.method private j2()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->constructorFinished:Lcom/google/android/exoplayer2/util/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->b()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->s()Landroid/os/Looper;

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->s()Landroid/os/Looper;

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
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/o0;->z(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/k1;->throwsWhenUsingWrongThread:Z

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/k1;->hasNotifiedFullWrongThreadWarning:Z

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
    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/util/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/k1;->hasNotifiedFullWrongThreadWarning:Z

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

.method public static synthetic k0(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/k1;->F1(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private static k1(Lcom/google/android/exoplayer2/a3;)J
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/z3$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lcom/google/android/exoplayer2/z3$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

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
    iget-object p0, p0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 33
    .line 34
    iget v1, v1, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/z3$d;->f()J

    .line 42
    move-result-wide v0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 47
    move-result-wide v0

    .line 48
    .line 49
    iget-wide v2, p0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 50
    add-long/2addr v0, v2

    .line 51
    :goto_0
    return-wide v0
.end method

.method public static synthetic l0(Lcom/google/android/exoplayer2/a3;ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->y1(Lcom/google/android/exoplayer2/a3;ILcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private l1(Lcom/google/android/exoplayer2/w1$e;)V
    .locals 11

    .line 1
    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 3
    .line 4
    iget v2, p1, Lcom/google/android/exoplayer2/w1$e;->operationAcks:I

    .line 5
    sub-int/2addr v1, v2

    .line 6
    .line 7
    iput v1, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 8
    .line 9
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/w1$e;->positionDiscontinuity:Z

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v2, p1, Lcom/google/android/exoplayer2/w1$e;->discontinuityReason:I

    .line 15
    .line 16
    iput v2, p0, Lcom/google/android/exoplayer2/k1;->pendingDiscontinuityReason:I

    .line 17
    .line 18
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/k1;->pendingDiscontinuity:Z

    .line 19
    .line 20
    :cond_0
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/w1$e;->hasPlayWhenReadyChangeReason:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget v2, p1, Lcom/google/android/exoplayer2/w1$e;->playWhenReadyChangeReason:I

    .line 25
    .line 26
    iput v2, p0, Lcom/google/android/exoplayer2/k1;->pendingPlayWhenReadyChangeReason:I

    .line 27
    .line 28
    :cond_1
    if-nez v1, :cond_b

    .line 29
    .line 30
    iget-object v1, p1, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    const/4 v2, -0x1

    .line 51
    .line 52
    iput v2, p0, Lcom/google/android/exoplayer2/k1;->maskingWindowIndex:I

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    iput-wide v5, p0, Lcom/google/android/exoplayer2/k1;->maskingWindowPositionMs:J

    .line 57
    .line 58
    iput v4, p0, Lcom/google/android/exoplayer2/k1;->maskingPeriodIndex:I

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    move-object v2, v1

    .line 66
    .line 67
    check-cast v2, Lcom/google/android/exoplayer2/i3;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/i3;->K()Ljava/util/List;

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
    iget-object v6, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

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
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

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
    iget-object v6, p0, Lcom/google/android/exoplayer2/k1;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 99
    .line 100
    .line 101
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v6

    .line 103
    .line 104
    check-cast v6, Lcom/google/android/exoplayer2/k1$e;

    .line 105
    .line 106
    .line 107
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    check-cast v7, Lcom/google/android/exoplayer2/z3;

    .line 111
    .line 112
    .line 113
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/k1$e;->c(Lcom/google/android/exoplayer2/k1$e;Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/z3;

    .line 114
    .line 115
    add-int/lit8 v5, v5, 0x1

    .line 116
    goto :goto_1

    .line 117
    .line 118
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/k1;->pendingDiscontinuity:Z

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
    iget-object v2, p1, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 128
    .line 129
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 130
    .line 131
    iget-object v7, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 132
    .line 133
    iget-object v7, v7, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v2

    .line 138
    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    iget-object v2, p1, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 142
    .line 143
    iget-wide v7, v2, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 144
    .line 145
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 146
    .line 147
    iget-wide v9, v2, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 148
    .line 149
    cmp-long v2, v7, v9

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
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 159
    move-result v2

    .line 160
    .line 161
    if-nez v2, :cond_8

    .line 162
    .line 163
    iget-object v2, p1, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/z;->b()Z

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
    iget-object v2, p1, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 175
    .line 176
    iget-object v5, v2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 177
    .line 178
    iget-wide v6, v2, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/exoplayer2/k1;->P1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)J

    .line 182
    move-result-wide v1

    .line 183
    goto :goto_4

    .line 184
    .line 185
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 186
    .line 187
    iget-wide v1, v1, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 188
    :goto_4
    move-wide v7, v1

    .line 189
    :goto_5
    move v5, v3

    .line 190
    goto :goto_6

    .line 191
    :cond_9
    move-wide v7, v5

    .line 192
    goto :goto_5

    .line 193
    :cond_a
    move-wide v7, v5

    .line 194
    move v5, v4

    .line 195
    .line 196
    :goto_6
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/k1;->pendingDiscontinuity:Z

    .line 197
    .line 198
    iget-object v1, p1, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 199
    const/4 v2, 0x1

    .line 200
    .line 201
    iget v3, p0, Lcom/google/android/exoplayer2/k1;->pendingPlayWhenReadyChangeReason:I

    .line 202
    const/4 v4, 0x0

    .line 203
    .line 204
    iget v6, p0, Lcom/google/android/exoplayer2/k1;->pendingDiscontinuityReason:I

    .line 205
    const/4 v9, -0x1

    .line 206
    const/4 v10, 0x0

    .line 207
    move-object v0, p0

    .line 208
    .line 209
    .line 210
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/k1;->g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V

    .line 211
    :cond_b
    return-void
.end method

.method public static synthetic m0(Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/k1;->s1(Lcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private m1(I)I
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

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
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public static synthetic n0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/w1$e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->q1(Lcom/google/android/exoplayer2/w1$e;)V

    return-void
.end method

.method private static n1(Lcom/google/android/exoplayer2/a3;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static synthetic o0(Lcom/google/android/exoplayer2/a3;ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->I1(Lcom/google/android/exoplayer2/a3;ILcom/google/android/exoplayer2/d3$d;)V

    return-void
.end method

.method private static synthetic o1(IILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/d3$d;->onSurfaceSizeChanged(II)V

    .line 4
    return-void
.end method

.method static synthetic p0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->audioFormat:Lcom/google/android/exoplayer2/a2;

    .line 3
    return-object p1
.end method

.method private synthetic p1(Lcom/google/android/exoplayer2/d3$d;Lcom/google/android/exoplayer2/util/m;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->wrappingPlayer:Lcom/google/android/exoplayer2/d3;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/d3$c;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/d3$c;-><init>(Lcom/google/android/exoplayer2/util/m;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/d3$d;->P(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/d3$c;)V

    .line 11
    return-void
.end method

.method static synthetic q0(Lcom/google/android/exoplayer2/k1;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k1;->skipSilenceEnabled:Z

    .line 3
    return p0
.end method

.method private synthetic q1(Lcom/google/android/exoplayer2/w1$e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->l1(Lcom/google/android/exoplayer2/w1$e;)V

    .line 4
    return-void
.end method

.method static synthetic r0(Lcom/google/android/exoplayer2/k1;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k1;->skipSilenceEnabled:Z

    .line 3
    return p1
.end method

.method private synthetic r1(Lcom/google/android/exoplayer2/w1$e;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/z0;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/z0;-><init>(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/w1$e;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method static synthetic s0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/text/f;)Lcom/google/android/exoplayer2/text/f;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->currentCueGroup:Lcom/google/android/exoplayer2/text/f;

    .line 3
    return-object p1
.end method

.method private static synthetic s1(Lcom/google/android/exoplayer2/d3$d;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/y1;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/y1;-><init>(I)V

    .line 7
    .line 8
    const/16 v1, 0x3eb

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/q;->j(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/q;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/d3$d;->F(Lcom/google/android/exoplayer2/z2;)V

    .line 16
    return-void
.end method

.method static synthetic t0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/n2;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 3
    return-object p0
.end method

.method private static synthetic t1(ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onRepeatModeChanged(I)V

    .line 4
    return-void
.end method

.method static synthetic u0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/n2;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 3
    return-object p1
.end method

.method private static synthetic u1(ZLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onShuffleModeEnabledChanged(Z)V

    .line 4
    return-void
.end method

.method static synthetic v0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/n2;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->U0()Lcom/google/android/exoplayer2/n2;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic v1(Lcom/google/android/exoplayer2/trackselection/z;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->M(Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 4
    return-void
.end method

.method static synthetic w0(Lcom/google/android/exoplayer2/k1;)Lcom/google/android/exoplayer2/n2;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 3
    return-object p0
.end method

.method private static synthetic w1(FLcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/d3$d;->onVolumeChanged(F)V

    .line 4
    return-void
.end method

.method static synthetic x0(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/n2;)Lcom/google/android/exoplayer2/n2;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 3
    return-object p1
.end method

.method private synthetic x1(Lcom/google/android/exoplayer2/d3$d;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->availableCommands:Lcom/google/android/exoplayer2/d3$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/d3$d;->H(Lcom/google/android/exoplayer2/d3$b;)V

    .line 6
    return-void
.end method

.method static synthetic y0(Lcom/google/android/exoplayer2/k1;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 3
    return p0
.end method

.method private static synthetic y1(Lcom/google/android/exoplayer2/a3;ILcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/d3$d;->z(Lcom/google/android/exoplayer2/z3;I)V

    .line 6
    return-void
.end method

.method static synthetic z0(Lcom/google/android/exoplayer2/k1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private static synthetic z1(ILcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/d3$d;->onPositionDiscontinuity(I)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/d3$d;->y(Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;I)V

    .line 7
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/k1;->seekBackIncrementMs:J

    .line 6
    return-wide v0
.end method

.method public B(Lcom/google/android/exoplayer2/d3$d;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/s;->k(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public C(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/i2;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->Z0(Ljava/util/List;)Ljava/util/List;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/k1;->X1(Ljava/util/List;Z)V

    .line 11
    return-void
.end method

.method public D(Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/b0;->e()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/b0;->b()Lcom/google/android/exoplayer2/trackselection/z;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/z;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/b0;->j(Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 32
    .line 33
    new-instance v1, Lcom/google/android/exoplayer2/a1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/a1;-><init>(Lcom/google/android/exoplayer2/trackselection/z;)V

    .line 37
    .line 38
    const/16 p1, 0x13

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public F(Lcom/google/android/exoplayer2/d3$d;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/d3$d;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method protected K()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/k1;->T1(IJZ)V

    .line 17
    return-void
.end method

.method public R0(Lcom/google/android/exoplayer2/analytics/c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/analytics/c;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/a;->D(Lcom/google/android/exoplayer2/analytics/c;)V

    .line 12
    return-void
.end method

.method public S0(Lcom/google/android/exoplayer2/s$a;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public V0()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->S1()V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 15
    return-void
.end method

.method public W0(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->V0()V

    .line 13
    :cond_0
    return-void
.end method

.method public W1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/b0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/k1;->X1(Ljava/util/List;Z)V

    .line 8
    return-void
.end method

.method public X1(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/b0;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/k1;->Y1(Ljava/util/List;IJZ)V

    .line 16
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k1;->W1(Ljava/util/List;)V

    .line 11
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/c3;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/google/android/exoplayer2/c3;->DEFAULT:Lcom/google/android/exoplayer2/c3;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/c3;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a3;->f(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/a3;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/w1;->P0(Lcom/google/android/exoplayer2/c3;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x5

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    const/4 v10, -0x1

    .line 47
    const/4 v11, 0x0

    .line 48
    move-object v1, p0

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/k1;->g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V

    .line 52
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-wide v0, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public c1()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 8
    return v0
.end method

.method public c2(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->V0()V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->S1()V

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

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
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

    .line 58
    const/4 p1, 0x0

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 62
    :goto_0
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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

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
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k1;->W0(Landroid/view/SurfaceHolder;)V

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->textureView:Landroid/view/TextureView;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->V0()V

    .line 13
    :cond_0
    return-void
.end method

.method public bridge synthetic d()Lcom/google/android/exoplayer2/z2;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->h1()Lcom/google/android/exoplayer2/q;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lcom/google/android/exoplayer2/e4;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/c0;->tracks:Lcom/google/android/exoplayer2/e4;

    .line 10
    return-object v0
.end method

.method public getContentPosition()J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->isPlayingAd()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 25
    .line 26
    iget-wide v1, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    cmp-long v1, v1, v3

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 41
    move-result v1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3$d;->e()J

    .line 51
    move-result-wide v0

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3$b;->p()J

    .line 58
    move-result-wide v0

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 61
    .line 62
    iget-wide v2, v2, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 66
    move-result-wide v2

    .line 67
    add-long/2addr v0, v2

    .line 68
    :goto_0
    return-wide v0

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getCurrentPosition()J

    .line 72
    move-result-wide v0

    .line 73
    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->isPlayingAd()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 14
    .line 15
    iget v0, v0, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->isPlayingAd()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 14
    .line 15
    iget v0, v0, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->maskingPeriodIndex:I

    .line 16
    return v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->d1(Lcom/google/android/exoplayer2/a3;)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/z3;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 8
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->isPlayingAd()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 25
    .line 26
    iget v2, v1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 27
    .line 28
    iget v1, v1, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/z3$b;->e(II)J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 36
    move-result-wide v0

    .line 37
    return-wide v0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->G()J

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 8
    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/c3;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 8
    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 8
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->repeatMode:I

    .line 6
    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k1;->shuffleModeEnabled:Z

    .line 6
    return v0
.end method

.method public h()Lcom/google/android/exoplayer2/trackselection/z;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/b0;->b()Lcom/google/android/exoplayer2/trackselection/z;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public h1()Lcom/google/android/exoplayer2/q;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 8
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/k1;->seekForwardIncrementMs:J

    .line 6
    return-wide v0
.end method

.method public l()J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-wide v0, p0, Lcom/google/android/exoplayer2/k1;->maskingWindowPositionMs:J

    .line 16
    return-wide v0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 21
    .line 22
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 23
    .line 24
    iget-object v3, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 25
    .line 26
    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 27
    .line 28
    cmp-long v1, v1, v3

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->x()I

    .line 36
    move-result v1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3$d;->g()J

    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    .line 49
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 50
    .line 51
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 78
    .line 79
    iget v1, v1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/z3$b;->i(I)J

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
    iget-wide v0, v0, Lcom/google/android/exoplayer2/z3$b;->durationUs:J

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-wide v0, v1

    .line 94
    .line 95
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 96
    .line 97
    iget-object v3, v2, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 98
    .line 99
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/google/android/exoplayer2/k1;->P1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)J

    .line 103
    move-result-wide v0

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 107
    move-result-wide v0

    .line 108
    return-wide v0
.end method

.method public p()Lcom/google/android/exoplayer2/text/f;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->currentCueGroup:Lcom/google/android/exoplayer2/text/f;

    .line 6
    return-object v0
.end method

.method public prepare()V
    .locals 15

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getPlayWhenReady()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->audioFocusManager:Lcom/google/android/exoplayer2/d;

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/d;->p(ZI)I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/k1;->g1(ZI)I

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/k1;->f2(ZII)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 24
    .line 25
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a3;->e(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/a3;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/a3;->g(I)Lcom/google/android/exoplayer2/a3;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 50
    add-int/2addr v0, v3

    .line 51
    .line 52
    iput v0, p0, Lcom/google/android/exoplayer2/k1;->pendingOperationAcks:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/w1;->g0()V

    .line 58
    const/4 v6, 0x1

    .line 59
    const/4 v7, 0x1

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v9, 0x0

    .line 62
    const/4 v10, 0x5

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    const/4 v13, -0x1

    .line 69
    const/4 v14, 0x0

    .line 70
    move-object v4, p0

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/k1;->g2(Lcom/google/android/exoplayer2/a3;IIZZIJIZ)V

    .line 74
    return-void
.end method

.method public r()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

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
    const-string v1, "ExoPlayerLib/2.18.2"

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
    sget-object v2, Lcom/google/android/exoplayer2/util/o0;->DEVICE_DEBUG_INFO:Ljava/lang/String;

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
    invoke-static {}, Lcom/google/android/exoplayer2/x1;->b()Ljava/lang/String;

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
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 69
    .line 70
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 78
    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 83
    .line 84
    iput-object v2, p0, Lcom/google/android/exoplayer2/k1;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 85
    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/b;

    .line 87
    const/4 v1, 0x0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b;->b(Z)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->streamVolumeManager:Lcom/google/android/exoplayer2/u3;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u3;->g()V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->wakeLockManager:Lcom/google/android/exoplayer2/f4;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/f4;->b(Z)V

    .line 101
    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->wifiLockManager:Lcom/google/android/exoplayer2/g4;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/g4;->b(Z)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->audioFocusManager:Lcom/google/android/exoplayer2/d;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/d;->i()V

    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/w1;->i0()Z

    .line 116
    move-result v0

    .line 117
    .line 118
    if-nez v0, :cond_1

    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 121
    .line 122
    new-instance v3, Lcom/google/android/exoplayer2/e1;

    .line 123
    .line 124
    .line 125
    invoke-direct {v3}, Lcom/google/android/exoplayer2/e1;-><init>()V

    .line 126
    .line 127
    const/16 v4, 0xa

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v4, v3}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 131
    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->j()V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/p;

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/p;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    .line 143
    .line 144
    iget-object v3, p0, Lcom/google/android/exoplayer2/k1;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/a;

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/e;->f(Lcom/google/android/exoplayer2/upstream/e$a;)V

    .line 148
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 150
    const/4 v3, 0x1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/a3;->g(I)Lcom/google/android/exoplayer2/a3;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 157
    .line 158
    iget-object v4, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/a3;->b(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/a3;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 165
    .line 166
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 167
    .line 168
    iput-wide v4, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 169
    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 171
    .line 172
    const-wide/16 v4, 0x0

    .line 173
    .line 174
    iput-wide v4, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 175
    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/a;

    .line 177
    .line 178
    .line 179
    invoke-interface {v0}, Lcom/google/android/exoplayer2/analytics/a;->release()V

    .line 180
    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/b0;->g()V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->S1()V

    .line 188
    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->ownedSurface:Landroid/view/Surface;

    .line 190
    .line 191
    if-eqz v0, :cond_2

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 195
    .line 196
    iput-object v2, p0, Lcom/google/android/exoplayer2/k1;->ownedSurface:Landroid/view/Surface;

    .line 197
    .line 198
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k1;->isPriorityTaskManagerRegistered:Z

    .line 199
    .line 200
    if-eqz v0, :cond_3

    .line 201
    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->priorityTaskManager:Lcom/google/android/exoplayer2/util/e0;

    .line 203
    .line 204
    .line 205
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    check-cast v0, Lcom/google/android/exoplayer2/util/e0;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/e0;->b(I)V

    .line 212
    .line 213
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/k1;->isPriorityTaskManagerRegistered:Z

    .line 214
    .line 215
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/text/f;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/f;

    .line 216
    .line 217
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->currentCueGroup:Lcom/google/android/exoplayer2/text/f;

    .line 218
    .line 219
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/k1;->playerReleased:Z

    .line 220
    return-void
.end method

.method public s()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/k1;->T1(IJZ)V

    .line 8
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->audioFocusManager:Lcom/google/android/exoplayer2/d;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->getPlaybackState()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/d;->p(ZI)I

    .line 13
    move-result v0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/k1;->g1(ZI)I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/k1;->f2(ZII)V

    .line 21
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->repeatMode:I

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/k1;->repeatMode:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/w1;->R0(I)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/exoplayer2/g1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/g1;-><init>(I)V

    .line 22
    .line 23
    const/16 p1, 0x8

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->e2()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/s;->f()V

    .line 35
    :cond_0
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k1;->shuffleModeEnabled:Z

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k1;->shuffleModeEnabled:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->internalPlayer:Lcom/google/android/exoplayer2/w1;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/w1;->U0(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/exoplayer2/d1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/d1;-><init>(Z)V

    .line 22
    .line 23
    const/16 p1, 0x9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->i(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->e2()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/s;->f()V

    .line 35
    :cond_0
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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/j;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->S1()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->Z1(Landroid/view/SurfaceHolder;)V

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/spherical/l;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->S1()V

    .line 29
    move-object v0, p1

    .line 30
    .line 31
    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/l;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/exoplayer2/k1;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->frameMetadataListener:Lcom/google/android/exoplayer2/k1$d;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->a1(Lcom/google/android/exoplayer2/h3$b;)Lcom/google/android/exoplayer2/h3;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const/16 v1, 0x2710

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h3;->n(I)Lcom/google/android/exoplayer2/h3;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h3;->m(Ljava/lang/Object;)Lcom/google/android/exoplayer2/h3;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/h3;->l()Lcom/google/android/exoplayer2/h3;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/l;->d(Lcom/google/android/exoplayer2/video/spherical/l$b;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/l;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/l;->getVideoSurface()Landroid/view/Surface;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/k1;->Z1(Landroid/view/SurfaceHolder;)V

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
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k1;->c2(Landroid/view/SurfaceHolder;)V

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k1;->V0()V

    .line 9
    goto :goto_1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->S1()V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/k1;->textureView:Landroid/view/TextureView;

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
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->componentListener:Lcom/google/android/exoplayer2/k1$c;

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
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/k1;->b2(Ljava/lang/Object;)V

    .line 51
    const/4 p1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/k1;->a2(Landroid/graphics/SurfaceTexture;)V

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
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/k1;->O1(II)V

    .line 70
    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/o0;->o(FFF)F

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/exoplayer2/k1;->volume:F

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
    iput p1, p0, Lcom/google/android/exoplayer2/k1;->volume:F

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->V1()V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->listeners:Lcom/google/android/exoplayer2/util/s;

    .line 25
    .line 26
    new-instance v1, Lcom/google/android/exoplayer2/f1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/f1;-><init>(F)V

    .line 30
    .line 31
    const/16 p1, 0x16

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/s;->l(ILcom/google/android/exoplayer2/util/s$a;)V

    .line 35
    return-void
.end method

.method public u()Lcom/google/android/exoplayer2/d3$b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->availableCommands:Lcom/google/android/exoplayer2/d3$b;

    .line 6
    return-object v0
.end method

.method public v()Lcom/google/android/exoplayer2/video/a0;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->videoSize:Lcom/google/android/exoplayer2/video/a0;

    .line 6
    return-object v0
.end method

.method public x()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->e1()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    return v0
.end method

.method public z()Lcom/google/android/exoplayer2/n2;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k1;->j2()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/k1;->mediaMetadata:Lcom/google/android/exoplayer2/n2;

    .line 6
    return-object v0
.end method
