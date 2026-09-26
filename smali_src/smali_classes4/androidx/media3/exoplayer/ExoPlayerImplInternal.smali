.class final Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
.implements Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;
.implements Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
.implements Landroidx/media3/exoplayer/PlayerMessage$Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    }
.end annotation


# static fields
.field private static final ACTIVE_INTERVAL_MS:I = 0xa

.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_ADD_MEDIA_SOURCES:I = 0x12

.field private static final MSG_ATTEMPT_RENDERER_ERROR_RECOVERY:I = 0x19

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field private static final MSG_MOVE_MEDIA_SOURCES:I = 0x13

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x10

.field private static final MSG_PLAYLIST_UPDATE_REQUESTED:I = 0x16

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_REMOVE_MEDIA_SOURCES:I = 0x14

.field private static final MSG_RENDERER_CAPABILITIES_CHANGED:I = 0x1a

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEND_MESSAGE:I = 0xe

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0xf

.field private static final MSG_SET_FOREGROUND_MODE:I = 0xd

.field private static final MSG_SET_MEDIA_SOURCES:I = 0x11

.field private static final MSG_SET_OFFLOAD_SCHEDULING_ENABLED:I = 0x18

.field private static final MSG_SET_PAUSE_AT_END_OF_WINDOW:I = 0x17

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xb

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xc

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x15

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PLAYBACK_BUFFER_EMPTY_THRESHOLD_US:J = 0x7a120L

.field private static final PLAYBACK_STUCK_AFTER_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private final clock:Landroidx/media3/common/util/Clock;

.field private deliverPendingMessageAtStartPositionRequired:Z

.field private final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field private enabledRendererCount:I

.field private foregroundMode:Z

.field private final handler:Landroidx/media3/common/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isRebuffering:Z

.field private final livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field private final loadControl:Landroidx/media3/exoplayer/LoadControl;

.field private final mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

.field private final mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

.field private nextPendingMessageIndexHint:I

.field private offloadSchedulingEnabled:Z

.field private pauseAtEndOfWindow:Z

.field private pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPauseAtEndOfPeriod:Z

.field private pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field private playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private final playbackLooper:Landroid/os/Looper;

.field private playbackMaybeBecameStuckAtMs:J

.field private final queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

.field private final releaseTimeoutMs:J

.field private released:Z

.field private final rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Landroidx/media3/exoplayer/Renderer;

.field private final renderersToReset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private repeatMode:I

.field private requestForRendererSleep:Z

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field private setForegroundModeTimeoutMs:J

.field private shouldContinueLoading:Z

.field private shuffleModeEnabled:Z

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/LivePlaybackSpeedControl;JZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroid/os/Looper;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    move-object/from16 v4, p8

    .line 8
    .line 9
    move-wide/from16 v5, p11

    .line 10
    .line 11
    move-object/from16 v7, p15

    .line 12
    .line 13
    move-object/from16 v8, p17

    .line 14
    .line 15
    move-object/from16 v9, p18

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    move-object/from16 v10, p16

    .line 21
    .line 22
    iput-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 23
    .line 24
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 25
    .line 26
    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 27
    .line 28
    move-object/from16 v10, p3

    .line 29
    .line 30
    iput-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 31
    .line 32
    move-object/from16 v11, p4

    .line 33
    .line 34
    iput-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 35
    .line 36
    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 37
    .line 38
    move/from16 v12, p6

    .line 39
    .line 40
    iput v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 41
    .line 42
    move/from16 v12, p7

    .line 43
    .line 44
    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 45
    .line 46
    move-object/from16 v12, p9

    .line 47
    .line 48
    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 49
    .line 50
    move-object/from16 v12, p10

    .line 51
    .line 52
    iput-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 53
    .line 54
    iput-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 55
    .line 56
    iput-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    .line 57
    .line 58
    move/from16 v5, p13

    .line 59
    .line 60
    iput-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 61
    .line 62
    iput-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    .line 69
    iput-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 70
    .line 71
    .line 72
    invoke-interface/range {p4 .. p4}, Landroidx/media3/exoplayer/LoadControl;->getBackBufferDurationUs()J

    .line 73
    move-result-wide v5

    .line 74
    .line 75
    iput-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 76
    .line 77
    .line 78
    invoke-interface/range {p4 .. p4}, Landroidx/media3/exoplayer/LoadControl;->retainBackBufferFromKeyframe()Z

    .line 79
    move-result v5

    .line 80
    .line 81
    iput-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 82
    .line 83
    .line 84
    invoke-static/range {p3 .. p3}, Landroidx/media3/exoplayer/PlaybackInfo;->k(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    iput-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 88
    .line 89
    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 90
    .line 91
    .line 92
    invoke-direct {v6, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 93
    .line 94
    iput-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 95
    array-length v5, v1

    .line 96
    .line 97
    new-array v5, v5, [Landroidx/media3/exoplayer/RendererCapabilities;

    .line 98
    .line 99
    iput-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->d()Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 103
    move-result-object v5

    .line 104
    const/4 v6, 0x0

    .line 105
    :goto_0
    array-length v10, v1

    .line 106
    .line 107
    if-ge v6, v10, :cond_1

    .line 108
    .line 109
    aget-object v10, v1, v6

    .line 110
    .line 111
    .line 112
    invoke-interface {v10, v6, v8}, Landroidx/media3/exoplayer/Renderer;->h(ILandroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 113
    .line 114
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 115
    .line 116
    aget-object v11, v1, v6

    .line 117
    .line 118
    .line 119
    invoke-interface {v11}, Landroidx/media3/exoplayer/Renderer;->getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;

    .line 120
    move-result-object v11

    .line 121
    .line 122
    aput-object v11, v10, v6

    .line 123
    .line 124
    if-eqz v5, :cond_0

    .line 125
    .line 126
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 127
    .line 128
    aget-object v10, v10, v6

    .line 129
    .line 130
    .line 131
    invoke-interface {v10, v5}, Landroidx/media3/exoplayer/RendererCapabilities;->i(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V

    .line 132
    .line 133
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 134
    goto :goto_0

    .line 135
    .line 136
    :cond_1
    new-instance v1, Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, p0, v7}, Landroidx/media3/exoplayer/DefaultMediaClock;-><init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V

    .line 140
    .line 141
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 142
    .line 143
    new-instance v1, Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/google/common/collect/f1;->h()Ljava/util/Set;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 155
    .line 156
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    .line 157
    .line 158
    .line 159
    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 160
    .line 161
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 162
    .line 163
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    .line 164
    .line 165
    .line 166
    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 167
    .line 168
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->e(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 172
    const/4 v1, 0x1

    .line 173
    .line 174
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 175
    const/4 v1, 0x0

    .line 176
    .line 177
    move-object/from16 v2, p14

    .line 178
    .line 179
    .line 180
    invoke-interface {v7, v2, v1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    new-instance v3, Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 184
    .line 185
    .line 186
    invoke-direct {v3, v4, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;)V

    .line 187
    .line 188
    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 189
    .line 190
    new-instance v3, Landroidx/media3/exoplayer/MediaSourceList;

    .line 191
    .line 192
    .line 193
    invoke-direct {v3, p0, v4, v2, v8}, Landroidx/media3/exoplayer/MediaSourceList;-><init>(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 194
    .line 195
    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 196
    .line 197
    if-eqz v9, :cond_2

    .line 198
    .line 199
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 200
    .line 201
    iput-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 202
    goto :goto_1

    .line 203
    .line 204
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    .line 205
    .line 206
    const-string v2, "ExoPlayer:Playback"

    .line 207
    .line 208
    const/16 v3, -0x10

    .line 209
    .line 210
    .line 211
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 212
    .line 213
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 223
    .line 224
    :goto_1
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 225
    .line 226
    .line 227
    invoke-interface {v7, v1, p0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 231
    return-void
.end method

.method private A(Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
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
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroidx/media3/exoplayer/PlaybackInfo;->l()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->e(Z)I

    .line 27
    move-result v6

    .line 28
    .line 29
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 30
    .line 31
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    move-object v3, p1

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 44
    .line 45
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1, v4, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->F(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 57
    move-result-wide v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, v4}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 71
    .line 72
    iget p1, v3, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 75
    .line 76
    iget v4, v3, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroidx/media3/common/Timeline$Period;->o(I)I

    .line 80
    move-result v0

    .line 81
    .line 82
    if-ne p1, v0, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Period;->j()J

    .line 88
    move-result-wide v1

    .line 89
    :cond_1
    move-wide v4, v1

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method

.method static A0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p5, p4}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 4
    move-result p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Landroidx/media3/common/Timeline;->m()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v4, p4

    .line 12
    move p4, v1

    .line 13
    .line 14
    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    if-ne p4, v1, :cond_1

    .line 17
    move-object v3, p5

    .line 18
    move-object v5, p1

    .line 19
    move-object v6, p0

    .line 20
    move v7, p2

    .line 21
    move v8, p3

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->h(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    .line 25
    move-result v4

    .line 26
    .line 27
    if-ne v4, v1, :cond_0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p5, v4}, Landroidx/media3/common/Timeline;->q(I)Ljava/lang/Object;

    .line 32
    move-result-object p4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p6, p4}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 36
    move-result p4

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p6, p4}, Landroidx/media3/common/Timeline;->q(I)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    :goto_2
    return-object p0
.end method

.method private B0(JJ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    const/4 v1, 0x2

    .line 4
    add-long/2addr p1, p3

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    .line 8
    return-void
.end method

.method private C()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 3
    .line 4
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private D(J)J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-wide v1

    .line 12
    .line 13
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->y(J)J

    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr p1, v3

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method

.method private D0(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 13
    .line 14
    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-object v2, v0

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 25
    .line 26
    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 27
    .line 28
    cmp-long v1, v3, v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 33
    .line 34
    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 35
    .line 36
    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 37
    const/4 v10, 0x5

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, v0

    .line 40
    move v9, p1

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 47
    :cond_0
    return-void
.end method

.method private E(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->y(Landroidx/media3/exoplayer/source/MediaPeriod;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 12
    .line 13
    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->C(J)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V()V

    .line 20
    return-void
.end method

.method private E0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 7
    const/4 v8, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 11
    .line 12
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    iget v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 18
    .line 19
    iget-boolean v5, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 20
    .line 21
    iget-object v6, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 22
    .line 23
    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 24
    .line 25
    move-object/from16 v2, p1

    .line 26
    .line 27
    .line 28
    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    const/4 v6, 0x0

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 42
    .line 43
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 44
    .line 45
    .line 46
    invoke-direct {v11, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    .line 47
    move-result-object v7

    .line 48
    .line 49
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 52
    .line 53
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 59
    move-result-wide v12

    .line 60
    .line 61
    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 62
    .line 63
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->u()Z

    .line 67
    move-result v7

    .line 68
    xor-int/2addr v7, v8

    .line 69
    move v10, v7

    .line 70
    .line 71
    move-wide/from16 v16, v4

    .line 72
    :goto_0
    move-wide v4, v12

    .line 73
    .line 74
    move-wide/from16 v12, v16

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v9, Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 86
    move-result-wide v12

    .line 87
    .line 88
    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 89
    .line 90
    cmp-long v9, v9, v4

    .line 91
    .line 92
    if-nez v9, :cond_1

    .line 93
    move-wide v9, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    move-wide v9, v12

    .line 96
    .line 97
    :goto_1
    iget-object v14, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 98
    .line 99
    iget-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 100
    .line 101
    iget-object v15, v15, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14, v15, v7, v12, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->F(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 105
    move-result-object v7

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 109
    move-result v14

    .line 110
    .line 111
    if-eqz v14, :cond_3

    .line 112
    .line 113
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 114
    .line 115
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 116
    .line 117
    iget-object v5, v7, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v12, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5, v12}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 123
    .line 124
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 125
    .line 126
    iget v5, v7, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v5}, Landroidx/media3/common/Timeline$Period;->o(I)I

    .line 130
    move-result v4

    .line 131
    .line 132
    iget v5, v7, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 133
    .line 134
    if-ne v4, v5, :cond_2

    .line 135
    .line 136
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Period;->j()J

    .line 140
    move-result-wide v4

    .line 141
    move-wide v12, v4

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move-wide v12, v2

    .line 144
    :goto_2
    move-wide v4, v12

    .line 145
    move-wide v12, v9

    .line 146
    move-object v9, v7

    .line 147
    move v10, v8

    .line 148
    goto :goto_4

    .line 149
    .line 150
    :cond_3
    iget-wide v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 151
    .line 152
    cmp-long v4, v14, v4

    .line 153
    .line 154
    if-nez v4, :cond_4

    .line 155
    move v4, v8

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    move v4, v6

    .line 158
    .line 159
    :goto_3
    move-wide/from16 v16, v9

    .line 160
    move v10, v4

    .line 161
    move-object v9, v7

    .line 162
    goto :goto_0

    .line 163
    .line 164
    :goto_4
    :try_start_0
    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 165
    .line 166
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->u()Z

    .line 170
    move-result v7

    .line 171
    .line 172
    if-eqz v7, :cond_5

    .line 173
    .line 174
    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 175
    goto :goto_5

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    move-wide v7, v4

    .line 178
    .line 179
    goto/16 :goto_a

    .line 180
    :cond_5
    const/4 v0, 0x4

    .line 181
    .line 182
    if-nez v1, :cond_7

    .line 183
    .line 184
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 185
    .line 186
    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 187
    .line 188
    if-eq v1, v8, :cond_6

    .line 189
    .line 190
    .line 191
    invoke-direct {v11, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s0(ZZZZ)V

    .line 195
    :goto_5
    move-wide v7, v4

    .line 196
    .line 197
    goto/16 :goto_9

    .line 198
    .line 199
    :cond_7
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 200
    .line 201
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v1}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v1

    .line 206
    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    iget-boolean v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 218
    .line 219
    if-eqz v7, :cond_8

    .line 220
    .line 221
    cmp-long v2, v4, v2

    .line 222
    .line 223
    if-eqz v2, :cond_8

    .line 224
    .line 225
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 226
    .line 227
    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, v4, v5, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->a(JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 231
    move-result-wide v1

    .line 232
    goto :goto_6

    .line 233
    :cond_8
    move-wide v1, v4

    .line 234
    .line 235
    .line 236
    :goto_6
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 237
    move-result-wide v14

    .line 238
    .line 239
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 240
    .line 241
    iget-wide v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 242
    .line 243
    .line 244
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 245
    move-result-wide v6

    .line 246
    .line 247
    cmp-long v3, v14, v6

    .line 248
    .line 249
    if-nez v3, :cond_b

    .line 250
    .line 251
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 252
    .line 253
    iget v6, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 254
    const/4 v7, 0x2

    .line 255
    .line 256
    if-eq v6, v7, :cond_9

    .line 257
    const/4 v7, 0x3

    .line 258
    .line 259
    if-ne v6, v7, :cond_b

    .line 260
    .line 261
    :cond_9
    iget-wide v7, v3, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const/4 v0, 0x2

    .line 263
    .line 264
    move-object/from16 v1, p0

    .line 265
    move-object v2, v9

    .line 266
    move-wide v3, v7

    .line 267
    move-wide v5, v12

    .line 268
    move v9, v10

    .line 269
    move v10, v0

    .line 270
    .line 271
    .line 272
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 276
    return-void

    .line 277
    :cond_a
    move-wide v1, v4

    .line 278
    .line 279
    :cond_b
    :try_start_1
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 280
    .line 281
    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 282
    .line 283
    if-ne v3, v0, :cond_c

    .line 284
    move v0, v8

    .line 285
    goto :goto_7

    .line 286
    :cond_c
    const/4 v0, 0x0

    .line 287
    .line 288
    .line 289
    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J

    .line 290
    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    .line 292
    cmp-long v0, v4, v14

    .line 293
    .line 294
    if-eqz v0, :cond_d

    .line 295
    goto :goto_8

    .line 296
    :cond_d
    const/4 v8, 0x0

    .line 297
    :goto_8
    or-int/2addr v10, v8

    .line 298
    .line 299
    :try_start_2
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 300
    .line 301
    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 302
    .line 303
    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 304
    const/4 v8, 0x1

    .line 305
    .line 306
    move-object/from16 v1, p0

    .line 307
    move-object v2, v4

    .line 308
    move-object v3, v9

    .line 309
    move-wide v6, v12

    .line 310
    .line 311
    .line 312
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    move-wide v7, v14

    .line 314
    :goto_9
    const/4 v0, 0x2

    .line 315
    .line 316
    move-object/from16 v1, p0

    .line 317
    move-object v2, v9

    .line 318
    move-wide v3, v7

    .line 319
    move-wide v5, v12

    .line 320
    move v9, v10

    .line 321
    move v10, v0

    .line 322
    .line 323
    .line 324
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 328
    return-void

    .line 329
    :catchall_1
    move-exception v0

    .line 330
    move-wide v7, v14

    .line 331
    :goto_a
    const/4 v14, 0x2

    .line 332
    .line 333
    move-object/from16 v1, p0

    .line 334
    move-object v2, v9

    .line 335
    move-wide v3, v7

    .line 336
    move-wide v5, v12

    .line 337
    move v9, v10

    .line 338
    move v10, v14

    .line 339
    .line 340
    .line 341
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 342
    move-result-object v1

    .line 343
    .line 344
    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 345
    throw v0
.end method

.method private F(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->i(Ljava/io/IOException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 15
    .line 16
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;->g(Landroidx/media3/common/MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    .line 23
    .line 24
    const-string v0, "Playback error"

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p2, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l1(ZZ)V

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 40
    return-void
.end method

.method private F0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    :goto_0
    move v5, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    move-object v1, p0

    .line 21
    move-object v2, p1

    .line 22
    move-wide v3, p2

    .line 23
    move v6, p4

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method private G(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 18
    .line 19
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 20
    .line 21
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    xor-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()J

    .line 48
    move-result-wide v3

    .line 49
    .line 50
    :goto_1
    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C()J

    .line 56
    move-result-wide v3

    .line 57
    .line 58
    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    :cond_3
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-boolean p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 71
    .line 72
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->n()Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o1(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 84
    :cond_4
    return-void
.end method

.method private G0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m1()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-nez p5, :cond_0

    .line 10
    .line 11
    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 12
    .line 13
    iget p5, p5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 14
    const/4 v2, 0x3

    .line 15
    .line 16
    if-ne p5, v2, :cond_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 20
    .line 21
    :cond_1
    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 25
    move-result-object p5

    .line 26
    move-object v2, p5

    .line 27
    .line 28
    :goto_0
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 31
    .line 32
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    :goto_1
    if-nez p4, :cond_4

    .line 47
    .line 48
    if-ne p5, v2, :cond_4

    .line 49
    .line 50
    if-eqz v2, :cond_7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->z(J)J

    .line 54
    move-result-wide p4

    .line 55
    .line 56
    const-wide/16 v3, 0x0

    .line 57
    .line 58
    cmp-long p1, p4, v3

    .line 59
    .line 60
    if-gez p1, :cond_7

    .line 61
    .line 62
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 63
    array-length p4, p1

    .line 64
    move p5, v0

    .line 65
    .line 66
    :goto_2
    if-ge p5, p4, :cond_5

    .line 67
    .line 68
    aget-object v3, p1, p5

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o(Landroidx/media3/exoplayer/Renderer;)V

    .line 72
    .line 73
    add-int/lit8 p5, p5, 0x1

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    if-eqz v2, :cond_7

    .line 77
    .line 78
    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    if-eq p1, v2, :cond_6

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->b()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->D(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const-wide p4, 0xe8d4a51000L

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p4, p5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->x(J)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r()V

    .line 107
    .line 108
    :cond_7
    if-eqz v2, :cond_a

    .line 109
    .line 110
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->D(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 114
    .line 115
    iget-boolean p1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 116
    .line 117
    if-nez p1, :cond_8

    .line 118
    .line 119
    iget-object p1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodInfo;->b(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iput-object p1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 126
    goto :goto_4

    .line 127
    .line 128
    :cond_8
    iget-boolean p1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    iget-object p1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    .line 136
    move-result-wide p2

    .line 137
    .line 138
    iget-object p1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 139
    .line 140
    iget-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 141
    .line 142
    sub-long p4, p2, p4

    .line 143
    .line 144
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, p4, p5, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 148
    .line 149
    .line 150
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(J)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V()V

    .line 154
    goto :goto_5

    .line 155
    .line 156
    :cond_a
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f()V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(J)V

    .line 163
    .line 164
    .line 165
    :goto_5
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 166
    .line 167
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 171
    return-wide p2
.end method

.method private H(Landroidx/media3/common/Timeline;Z)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v12, p1

    .line 5
    .line 6
    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 7
    .line 8
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 9
    .line 10
    iget-object v4, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 11
    .line 12
    iget v5, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 13
    .line 14
    iget-boolean v6, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 15
    .line 16
    iget-object v7, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 17
    .line 18
    iget-object v8, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    .line 23
    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;Landroidx/media3/exoplayer/MediaPeriodQueue;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 24
    move-result-object v7

    .line 25
    .line 26
    iget-object v9, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 27
    .line 28
    iget-wide v13, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 29
    .line 30
    iget-boolean v0, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 31
    .line 32
    iget-wide v5, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 33
    .line 34
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 35
    .line 36
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v9}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v15, 0x0

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 47
    .line 48
    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 49
    .line 50
    cmp-long v1, v5, v1

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    move/from16 v16, v15

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    :goto_0
    move/from16 v16, v10

    .line 59
    :goto_1
    const/4 v8, 0x0

    .line 60
    .line 61
    const/16 v17, 0x3

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    const/4 v4, 0x4

    .line 68
    .line 69
    :try_start_0
    iget-boolean v1, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 74
    .line 75
    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 76
    .line 77
    if-eq v1, v10, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v11, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    .line 84
    move/from16 v20, v4

    .line 85
    move-object v15, v8

    .line 86
    const/4 v10, -0x1

    .line 87
    .line 88
    goto/16 :goto_a

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_2
    invoke-direct {v11, v15, v15, v15, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s0(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    :cond_3
    if-nez v16, :cond_5

    .line 94
    .line 95
    :try_start_1
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 96
    .line 97
    :try_start_2
    iget-wide v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 98
    .line 99
    .line 100
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z()J

    .line 101
    move-result-wide v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    .line 103
    move-object/from16 v2, p1

    .line 104
    const/4 v10, -0x1

    .line 105
    .line 106
    const/16 v20, 0x4

    .line 107
    .line 108
    move-wide/from16 v25, v5

    .line 109
    .line 110
    move-wide/from16 v5, v22

    .line 111
    .line 112
    .line 113
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->J(Landroidx/media3/common/Timeline;JJ)Z

    .line 114
    move-result v0

    .line 115
    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    .line 119
    invoke-direct {v11, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0(Z)V

    .line 120
    .line 121
    :cond_4
    move-wide/from16 v5, v25

    .line 122
    goto :goto_5

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    move-object v15, v8

    .line 125
    .line 126
    move-wide/from16 v5, v25

    .line 127
    .line 128
    goto/16 :goto_a

    .line 129
    :catchall_2
    move-exception v0

    .line 130
    .line 131
    move-wide/from16 v25, v5

    .line 132
    const/4 v10, -0x1

    .line 133
    .line 134
    const/16 v20, 0x4

    .line 135
    :goto_3
    move-object v15, v8

    .line 136
    .line 137
    goto/16 :goto_a

    .line 138
    :catchall_3
    move-exception v0

    .line 139
    .line 140
    move/from16 v20, v4

    .line 141
    .line 142
    move-wide/from16 v25, v5

    .line 143
    const/4 v10, -0x1

    .line 144
    goto :goto_3

    .line 145
    .line 146
    :cond_5
    move/from16 v20, v4

    .line 147
    .line 148
    move-wide/from16 v25, v5

    .line 149
    const/4 v10, -0x1

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 153
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    :try_start_4
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 161
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 162
    .line 163
    :goto_4
    if-eqz v1, :cond_7

    .line 164
    .line 165
    :try_start_5
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 166
    .line 167
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v9}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v2

    .line 172
    .line 173
    if-eqz v2, :cond_6

    .line 174
    .line 175
    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 176
    .line 177
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v12, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    iput-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->A()V

    .line 187
    .line 188
    .line 189
    :cond_6
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 190
    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 191
    goto :goto_4

    .line 192
    .line 193
    :cond_7
    move-wide/from16 v5, v25

    .line 194
    .line 195
    .line 196
    :try_start_6
    invoke-direct {v11, v9, v5, v6, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J

    .line 197
    move-result-wide v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 198
    .line 199
    move-wide/from16 v21, v0

    .line 200
    goto :goto_6

    .line 201
    :catchall_4
    move-exception v0

    .line 202
    goto :goto_3

    .line 203
    :catchall_5
    move-exception v0

    .line 204
    .line 205
    move-wide/from16 v5, v25

    .line 206
    goto :goto_3

    .line 207
    .line 208
    :goto_5
    move-wide/from16 v21, v5

    .line 209
    .line 210
    :goto_6
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 211
    .line 212
    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 213
    .line 214
    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 215
    .line 216
    iget-boolean v0, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    .line 217
    .line 218
    if-eqz v0, :cond_8

    .line 219
    .line 220
    move-wide/from16 v6, v21

    .line 221
    goto :goto_7

    .line 222
    .line 223
    :cond_8
    move-wide/from16 v6, v18

    .line 224
    :goto_7
    const/4 v0, 0x0

    .line 225
    .line 226
    move-object/from16 v1, p0

    .line 227
    .line 228
    move-object/from16 v2, p1

    .line 229
    move-object v3, v9

    .line 230
    move-object v15, v8

    .line 231
    move v8, v0

    .line 232
    .line 233
    .line 234
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 235
    .line 236
    if-nez v16, :cond_9

    .line 237
    .line 238
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 239
    .line 240
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 241
    .line 242
    cmp-long v0, v13, v0

    .line 243
    .line 244
    if-eqz v0, :cond_c

    .line 245
    .line 246
    :cond_9
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 247
    .line 248
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 249
    .line 250
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 251
    .line 252
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 253
    .line 254
    if-eqz v16, :cond_a

    .line 255
    .line 256
    if-eqz p2, :cond_a

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 260
    move-result v2

    .line 261
    .line 262
    if-nez v2, :cond_a

    .line 263
    .line 264
    iget-object v2, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 271
    .line 272
    if-nez v0, :cond_a

    .line 273
    .line 274
    const/16 v24, 0x1

    .line 275
    goto :goto_8

    .line 276
    .line 277
    :cond_a
    const/16 v24, 0x0

    .line 278
    .line 279
    :goto_8
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 280
    .line 281
    iget-wide v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 282
    .line 283
    .line 284
    invoke-virtual {v12, v1}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 285
    move-result v0

    .line 286
    .line 287
    if-ne v0, v10, :cond_b

    .line 288
    .line 289
    move/from16 v10, v20

    .line 290
    goto :goto_9

    .line 291
    .line 292
    :cond_b
    move/from16 v10, v17

    .line 293
    .line 294
    :goto_9
    move-object/from16 v1, p0

    .line 295
    move-object v2, v9

    .line 296
    .line 297
    move-wide/from16 v3, v21

    .line 298
    move-wide v5, v13

    .line 299
    .line 300
    move/from16 v9, v24

    .line 301
    .line 302
    .line 303
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 304
    move-result-object v0

    .line 305
    .line 306
    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 307
    .line 308
    .line 309
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0()V

    .line 310
    .line 311
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 312
    .line 313
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 314
    .line 315
    .line 316
    invoke-direct {v11, v12, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x0(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    .line 317
    .line 318
    iget-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 322
    move-result-object v0

    .line 323
    .line 324
    iput-object v0, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 328
    move-result v0

    .line 329
    .line 330
    if-nez v0, :cond_d

    .line 331
    .line 332
    iput-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 333
    :cond_d
    const/4 v1, 0x0

    .line 334
    .line 335
    .line 336
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 337
    return-void

    .line 338
    .line 339
    :goto_a
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 340
    .line 341
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 342
    .line 343
    iget-object v8, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 344
    .line 345
    iget-boolean v1, v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    .line 346
    .line 347
    if-eqz v1, :cond_e

    .line 348
    .line 349
    move-wide/from16 v18, v5

    .line 350
    .line 351
    :cond_e
    const/16 v21, 0x0

    .line 352
    .line 353
    move-object/from16 v1, p0

    .line 354
    .line 355
    move-object/from16 v2, p1

    .line 356
    move-object v3, v9

    .line 357
    .line 358
    move-wide/from16 v25, v5

    .line 359
    move-object v5, v8

    .line 360
    .line 361
    move-wide/from16 v6, v18

    .line 362
    .line 363
    move/from16 v8, v21

    .line 364
    .line 365
    .line 366
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 367
    .line 368
    if-nez v16, :cond_f

    .line 369
    .line 370
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 371
    .line 372
    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 373
    .line 374
    cmp-long v1, v13, v1

    .line 375
    .line 376
    if-eqz v1, :cond_12

    .line 377
    .line 378
    :cond_f
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 379
    .line 380
    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 381
    .line 382
    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 383
    .line 384
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 385
    .line 386
    if-eqz v16, :cond_10

    .line 387
    .line 388
    if-eqz p2, :cond_10

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 392
    move-result v3

    .line 393
    .line 394
    if-nez v3, :cond_10

    .line 395
    .line 396
    iget-object v3, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 400
    move-result-object v1

    .line 401
    .line 402
    iget-boolean v1, v1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 403
    .line 404
    if-nez v1, :cond_10

    .line 405
    .line 406
    const/16 v24, 0x1

    .line 407
    goto :goto_b

    .line 408
    .line 409
    :cond_10
    const/16 v24, 0x0

    .line 410
    .line 411
    :goto_b
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 412
    .line 413
    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 414
    .line 415
    .line 416
    invoke-virtual {v12, v2}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 417
    move-result v1

    .line 418
    .line 419
    if-ne v1, v10, :cond_11

    .line 420
    .line 421
    move/from16 v10, v20

    .line 422
    goto :goto_c

    .line 423
    .line 424
    :cond_11
    move/from16 v10, v17

    .line 425
    .line 426
    :goto_c
    move-object/from16 v1, p0

    .line 427
    move-object v2, v9

    .line 428
    .line 429
    move-wide/from16 v3, v25

    .line 430
    move-wide v5, v13

    .line 431
    .line 432
    move/from16 v9, v24

    .line 433
    .line 434
    .line 435
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 436
    move-result-object v1

    .line 437
    .line 438
    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 439
    .line 440
    .line 441
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0()V

    .line 442
    .line 443
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 444
    .line 445
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 446
    .line 447
    .line 448
    invoke-direct {v11, v12, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x0(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    .line 449
    .line 450
    iget-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 454
    move-result-object v1

    .line 455
    .line 456
    iput-object v1, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 457
    .line 458
    .line 459
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 460
    move-result v1

    .line 461
    .line 462
    if-nez v1, :cond_13

    .line 463
    .line 464
    iput-object v15, v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 465
    :cond_13
    const/4 v1, 0x0

    .line 466
    .line 467
    .line 468
    invoke-direct {v11, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 469
    throw v0
.end method

.method private H0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->f()J

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
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 46
    .line 47
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 48
    .line 49
    iget v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 50
    .line 51
    iget-boolean v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 52
    .line 53
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 54
    .line 55
    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 56
    move-object v2, v0

    .line 57
    move-object v3, v4

    .line 58
    .line 59
    .line 60
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->k(Z)V

    .line 79
    :goto_0
    return-void
.end method

.method private I(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->y(Landroidx/media3/exoplayer/source/MediaPeriod;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->p(FLandroidx/media3/common/Timeline;)V

    .line 31
    .line 32
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 33
    .line 34
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->n()Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o1(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-ne p1, v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 56
    .line 57
    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(J)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r()V

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 66
    .line 67
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 68
    .line 69
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 70
    .line 71
    iget-wide v7, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 72
    .line 73
    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 74
    const/4 v9, 0x0

    .line 75
    const/4 v10, 0x5

    .line 76
    move-object v1, p0

    .line 77
    move-wide v3, v7

    .line 78
    .line 79
    .line 80
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V()V

    .line 87
    return-void
.end method

.method private I0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->c()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 14
    .line 15
    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 16
    const/4 v0, 0x3

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    if-ne p1, v1, :cond_2

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 30
    .line 31
    const/16 v1, 0xf

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private J(Landroidx/media3/common/PlaybackParameters;FZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 7
    const/4 p4, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 11
    .line 12
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->g(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 19
    .line 20
    :cond_1
    iget p3, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s1(F)V

    .line 24
    .line 25
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 26
    array-length p4, p3

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    :goto_0
    if-ge v0, p4, :cond_3

    .line 30
    .line 31
    aget-object v1, p3, v0

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget v2, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, p2, v2}, Landroidx/media3/exoplayer/Renderer;->d(FF)V

    .line 39
    .line 40
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return-void
.end method

.method private J0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->c()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v0, "TAG"

    .line 17
    .line 18
    const-string v1, "Trying to send message on a dead thread."

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->k(Z)V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v0, v2}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    new-instance v1, Landroidx/media3/exoplayer/p1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/p1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method private K(Landroidx/media3/common/PlaybackParameters;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 7
    return-void
.end method

.method private K0(J)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

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
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(Landroidx/media3/exoplayer/Renderer;J)V

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method private L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 14
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    .line 4
    move-wide/from16 v5, p4

    .line 5
    .line 6
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 13
    .line 14
    cmp-long v1, p2, v3

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 31
    .line 32
    :goto_1
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0()V

    .line 36
    .line 37
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 38
    .line 39
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 40
    .line 41
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 44
    .line 45
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Landroidx/media3/exoplayer/MediaSourceList;->t()Z

    .line 49
    move-result v7

    .line 50
    .line 51
    if-eqz v7, :cond_5

    .line 52
    .line 53
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    sget-object v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 62
    goto :goto_2

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->n()Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    :goto_2
    if-nez v1, :cond_3

    .line 69
    .line 70
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    :goto_3
    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Lcom/google/common/collect/a0;

    .line 81
    move-result-object v7

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-object v8, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 86
    .line 87
    iget-wide v9, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 88
    .line 89
    cmp-long v9, v9, v5

    .line 90
    .line 91
    if-eqz v9, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v5, v6}, Landroidx/media3/exoplayer/MediaPeriodInfo;->a(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 95
    move-result-object v8

    .line 96
    .line 97
    iput-object v8, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 98
    :cond_4
    move-object v11, v3

    .line 99
    move-object v12, v4

    .line 100
    move-object v13, v7

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_5
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 104
    .line 105
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v7}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v7

    .line 110
    .line 111
    if-nez v7, :cond_6

    .line 112
    .line 113
    sget-object v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 114
    .line 115
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 119
    move-result-object v4

    .line 120
    move-object v11, v1

    .line 121
    move-object v12, v3

    .line 122
    move-object v13, v4

    .line 123
    goto :goto_4

    .line 124
    :cond_6
    move-object v13, v1

    .line 125
    move-object v11, v3

    .line 126
    move-object v12, v4

    .line 127
    .line 128
    :goto_4
    if-eqz p8, :cond_7

    .line 129
    .line 130
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 131
    .line 132
    move/from16 v3, p9

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->e(I)V

    .line 136
    .line 137
    :cond_7
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C()J

    .line 141
    move-result-wide v9

    .line 142
    move-object v2, p1

    .line 143
    .line 144
    move-wide/from16 v3, p2

    .line 145
    .line 146
    move-wide/from16 v5, p4

    .line 147
    .line 148
    move-wide/from16 v7, p6

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {v1 .. v13}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 152
    move-result-object v1

    .line 153
    return-object v1
.end method

.method private L0(Landroidx/media3/exoplayer/Renderer;J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    .line 4
    .line 5
    instance-of v0, p1, Landroidx/media3/exoplayer/text/TextRenderer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroidx/media3/exoplayer/text/TextRenderer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/text/TextRenderer;->N(J)V

    .line 13
    :cond_0
    return-void
.end method

.method private M(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 7
    .line 8
    iget-boolean p2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-boolean p2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    instance-of p2, p1, Landroidx/media3/exoplayer/text/TextRenderer;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    instance-of p2, p1, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->c()J

    .line 26
    move-result-wide p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->m()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    cmp-long p1, p1, v0

    .line 33
    .line 34
    if-ltz p1, :cond_1

    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    return p1
.end method

.method private N()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    move v1, v2

    .line 14
    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 16
    array-length v4, v3

    .line 17
    .line 18
    if-ge v1, v4, :cond_3

    .line 19
    .line 20
    aget-object v3, v3, v1

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 23
    .line 24
    aget-object v4, v4, v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    if-ne v5, v4, :cond_2

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v3, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-nez v3, :cond_1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    return v2

    .line 50
    :cond_3
    const/4 v0, 0x1

    .line 51
    return v0
.end method

.method private N0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->reset()V

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    if-eqz p2, :cond_2

    .line 39
    monitor-enter p0

    .line 40
    const/4 p1, 0x1

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 47
    monitor-exit p0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method private static O(ZLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;J)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_3

    .line 4
    .line 5
    cmp-long p0, p2, p6

    .line 6
    .line 7
    if-nez p0, :cond_3

    .line 8
    .line 9
    iget-object p0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p2, p4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 22
    move-result p0

    .line 23
    const/4 p2, 0x1

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    iget p0, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p5, p0}, Landroidx/media3/common/Timeline$Period;->v(I)Z

    .line 31
    move-result p0

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget p0, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 36
    .line 37
    iget p3, p1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5, p0, p3}, Landroidx/media3/common/Timeline$Period;->k(II)I

    .line 41
    move-result p0

    .line 42
    const/4 p3, 0x4

    .line 43
    .line 44
    if-eq p0, p3, :cond_1

    .line 45
    .line 46
    iget p0, p1, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 47
    .line 48
    iget p1, p1, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p0, p1}, Landroidx/media3/common/Timeline$Period;->k(II)I

    .line 52
    move-result p0

    .line 53
    const/4 p1, 0x2

    .line 54
    .line 55
    if-eq p0, p1, :cond_1

    .line 56
    move v0, p2

    .line 57
    :cond_1
    return v0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p4}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    iget p0, p4, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p5, p0}, Landroidx/media3/common/Timeline$Period;->v(I)Z

    .line 69
    move-result p0

    .line 70
    .line 71
    if-eqz p0, :cond_3

    .line 72
    move v0, p2

    .line 73
    :cond_3
    :goto_0
    return v0
.end method

.method private O0(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->b(Landroidx/media3/common/PlaybackParameters;)V

    .line 13
    return-void
.end method

.method private P()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->k()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    const-wide/high16 v4, -0x8000000000000000L

    .line 17
    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    return v1

    .line 22
    :cond_1
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method private P0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->a(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 16
    .line 17
    new-instance v1, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->b(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->c(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->a(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->d(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J

    .line 36
    move-result-wide v3

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->b(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->c(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/MediaSourceList;->D(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/common/Timeline;Z)V

    .line 60
    return-void
.end method

.method private static Q(Landroidx/media3/exoplayer/Renderer;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getState()I

    .line 4
    move-result p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private R()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 9
    .line 10
    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 11
    .line 12
    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    cmp-long v0, v1, v3

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 26
    .line 27
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 28
    .line 29
    cmp-long v0, v3, v1

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_1

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

.method private R0(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 12
    .line 13
    iget-boolean p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 22
    :cond_1
    return-void
.end method

.method private static S(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline$Period;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method private S0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0()V

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0(Z)V

    .line 28
    const/4 p1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method private synthetic T()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private synthetic U(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    .line 7
    const-string v0, "ExoPlayerImplInternal"

    .line 8
    .line 9
    const-string v1, "Unexpected error delivering message on external thread."

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 18
    throw v0
.end method

.method private U0(ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 6
    .line 7
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->c(I)V

    .line 11
    .line 12
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1, p2}, Landroidx/media3/exoplayer/PlaybackInfo;->e(ZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 19
    const/4 p2, 0x0

    .line 20
    .line 21
    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0(Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m1()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q1()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 40
    .line 41
    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 42
    const/4 p2, 0x3

    .line 43
    const/4 p3, 0x2

    .line 44
    .line 45
    if-ne p1, p2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j1()V

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, p3}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    if-ne p1, p3, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p3}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method private V()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f1()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n1()V

    .line 23
    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->a(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 23
    .line 24
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 32
    :cond_0
    return-void
.end method

.method private W0(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O0(Landroidx/media3/common/PlaybackParameters;)V

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K(Landroidx/media3/common/PlaybackParameters;Z)V

    .line 14
    return-void
.end method

.method private X(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_f

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-wide/16 v0, 0x1

    .line 27
    sub-long/2addr p1, v0

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 42
    move-result v0

    .line 43
    .line 44
    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    if-lez v1, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 60
    .line 61
    add-int/lit8 v4, v1, -0x1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v3, v2

    .line 70
    .line 71
    :goto_0
    if-eqz v3, :cond_5

    .line 72
    .line 73
    iget v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 74
    .line 75
    if-gt v4, v0, :cond_3

    .line 76
    .line 77
    if-ne v4, v0, :cond_5

    .line 78
    .line 79
    iget-wide v3, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 80
    .line 81
    cmp-long v3, v3, p1

    .line 82
    .line 83
    if-lez v3, :cond_5

    .line 84
    .line 85
    :cond_3
    add-int/lit8 v3, v1, -0x1

    .line 86
    .line 87
    if-lez v3, :cond_4

    .line 88
    .line 89
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 90
    .line 91
    add-int/lit8 v1, v1, -0x2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move-object v1, v2

    .line 100
    :goto_1
    move v7, v3

    .line 101
    move-object v3, v1

    .line 102
    move v1, v7

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 109
    move-result v3

    .line 110
    .line 111
    if-ge v1, v3, :cond_6

    .line 112
    .line 113
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 120
    goto :goto_2

    .line 121
    :cond_6
    move-object v3, v2

    .line 122
    .line 123
    :goto_2
    if-eqz v3, :cond_8

    .line 124
    .line 125
    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 126
    .line 127
    if-eqz v4, :cond_8

    .line 128
    .line 129
    iget v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 130
    .line 131
    if-lt v4, v0, :cond_7

    .line 132
    .line 133
    if-ne v4, v0, :cond_8

    .line 134
    .line 135
    iget-wide v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 136
    .line 137
    cmp-long v4, v4, p1

    .line 138
    .line 139
    if-gtz v4, :cond_8

    .line 140
    .line 141
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result v3

    .line 148
    .line 149
    if-ge v1, v3, :cond_6

    .line 150
    .line 151
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_8
    :goto_3
    if-eqz v3, :cond_e

    .line 161
    .line 162
    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 163
    .line 164
    if-eqz v4, :cond_e

    .line 165
    .line 166
    iget v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 167
    .line 168
    if-ne v4, v0, :cond_e

    .line 169
    .line 170
    iget-wide v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 171
    .line 172
    cmp-long v6, v4, p1

    .line 173
    .line 174
    if-lez v6, :cond_e

    .line 175
    .line 176
    cmp-long v4, v4, p3

    .line 177
    .line 178
    if-gtz v4, :cond_e

    .line 179
    .line 180
    :try_start_0
    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(Landroidx/media3/exoplayer/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Landroidx/media3/exoplayer/PlayerMessage;->b()Z

    .line 189
    move-result v4

    .line 190
    .line 191
    if-nez v4, :cond_a

    .line 192
    .line 193
    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->j()Z

    .line 197
    move-result v3

    .line 198
    .line 199
    if-eqz v3, :cond_9

    .line 200
    goto :goto_4

    .line 201
    .line 202
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 203
    goto :goto_5

    .line 204
    .line 205
    :cond_a
    :goto_4
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    .line 210
    :goto_5
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 214
    move-result v3

    .line 215
    .line 216
    if-ge v1, v3, :cond_b

    .line 217
    .line 218
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v3

    .line 223
    .line 224
    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 225
    goto :goto_3

    .line 226
    :cond_b
    move-object v3, v2

    .line 227
    goto :goto_3

    .line 228
    :catchall_0
    move-exception p1

    .line 229
    .line 230
    iget-object p2, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Landroidx/media3/exoplayer/PlayerMessage;->b()Z

    .line 234
    move-result p2

    .line 235
    .line 236
    if-nez p2, :cond_c

    .line 237
    .line 238
    iget-object p2, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Landroidx/media3/exoplayer/PlayerMessage;->j()Z

    .line 242
    move-result p2

    .line 243
    .line 244
    if-eqz p2, :cond_d

    .line 245
    .line 246
    :cond_c
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 250
    :cond_d
    throw p1

    .line 251
    .line 252
    :cond_e
    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    .line 253
    :cond_f
    :goto_6
    return-void
.end method

.method private Y()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->C(J)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->H()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q(JLandroidx/media3/exoplayer/PlaybackInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 30
    .line 31
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 32
    .line 33
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Landroidx/media3/exoplayer/LoadControl;->getAllocator()Landroidx/media3/exoplayer/upstream/Allocator;

    .line 39
    move-result-object v7

    .line 40
    .line 41
    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 42
    .line 43
    iget-object v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 44
    move-object v9, v0

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->g([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 51
    .line 52
    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, p0, v3, v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->e(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    .line 56
    .line 57
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    if-ne v2, v1, :cond_0

    .line 64
    .line 65
    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(J)V

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 73
    .line 74
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n1()V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V()V

    .line 90
    :goto_0
    return-void
.end method

.method private Y0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->K(Landroidx/media3/common/Timeline;I)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0(Z)V

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 23
    return-void
.end method

.method private Z()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e1()Z

    .line 6
    move-result v2

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W()V

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->b()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 34
    .line 35
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 36
    .line 37
    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x1

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 47
    .line 48
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 49
    .line 50
    iget v4, v2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 51
    const/4 v5, -0x1

    .line 52
    .line 53
    if-ne v4, v5, :cond_1

    .line 54
    .line 55
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 56
    .line 57
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 58
    .line 59
    iget v6, v4, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 60
    .line 61
    if-ne v6, v5, :cond_1

    .line 62
    .line 63
    iget v2, v2, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    .line 64
    .line 65
    iget v4, v4, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    .line 66
    .line 67
    if-eq v2, v4, :cond_1

    .line 68
    move v2, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v2, v0

    .line 71
    .line 72
    :goto_1
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 73
    .line 74
    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 75
    .line 76
    iget-wide v10, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 77
    .line 78
    iget-wide v8, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 79
    .line 80
    xor-int/lit8 v12, v2, 0x1

    .line 81
    const/4 v13, 0x0

    .line 82
    move-object v4, p0

    .line 83
    move-wide v6, v10

    .line 84
    .line 85
    .line 86
    invoke-direct/range {v4 .. v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q1()V

    .line 96
    move v1, v3

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method private Z0(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-void
.end method

.method private a0()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 13
    move-result-object v1

    .line 14
    const/4 v8, 0x0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodHolder;->m()J

    .line 52
    move-result-wide v3

    .line 53
    .line 54
    cmp-long v1, v1, v3

    .line 55
    .line 56
    if-gez v1, :cond_3

    .line 57
    return-void

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 61
    move-result-object v11

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->c()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 67
    move-result-object v12

    .line 68
    .line 69
    .line 70
    invoke-virtual {v12}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 71
    move-result-object v13

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 74
    .line 75
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 76
    .line 77
    iget-object v1, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 78
    .line 79
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 80
    .line 81
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 82
    .line 83
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    const/4 v7, 0x0

    .line 90
    move-object v0, p0

    .line 91
    move-object v1, v3

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 95
    .line 96
    iget-boolean v0, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    .line 104
    move-result-wide v0

    .line 105
    .line 106
    cmp-long v0, v0, v9

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12}, Landroidx/media3/exoplayer/MediaPeriodHolder;->m()J

    .line 112
    move-result-wide v0

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K0(J)V

    .line 116
    return-void

    .line 117
    :cond_4
    move v0, v8

    .line 118
    .line 119
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 120
    array-length v1, v1

    .line 121
    .line 122
    if-ge v0, v1, :cond_8

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c(I)Z

    .line 126
    move-result v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c(I)Z

    .line 130
    move-result v2

    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 135
    .line 136
    aget-object v1, v1, v0

    .line 137
    .line 138
    .line 139
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    .line 140
    move-result v1

    .line 141
    .line 142
    if-nez v1, :cond_7

    .line 143
    .line 144
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 145
    .line 146
    aget-object v1, v1, v0

    .line 147
    .line 148
    .line 149
    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    .line 150
    move-result v1

    .line 151
    const/4 v3, -0x2

    .line 152
    .line 153
    if-ne v1, v3, :cond_5

    .line 154
    const/4 v1, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    move v1, v8

    .line 157
    .line 158
    :goto_1
    iget-object v3, v11, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 159
    .line 160
    aget-object v3, v3, v0

    .line 161
    .line 162
    iget-object v4, v13, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 163
    .line 164
    aget-object v4, v4, v0

    .line 165
    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v2

    .line 171
    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    if-eqz v1, :cond_7

    .line 175
    .line 176
    :cond_6
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 177
    .line 178
    aget-object v1, v1, v0

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12}, Landroidx/media3/exoplayer/MediaPeriodHolder;->m()J

    .line 182
    move-result-wide v2

    .line 183
    .line 184
    .line 185
    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(Landroidx/media3/exoplayer/Renderer;J)V

    .line 186
    .line 187
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto :goto_0

    .line 189
    :cond_8
    return-void

    .line 190
    .line 191
    :cond_9
    :goto_2
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 192
    .line 193
    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    .line 194
    .line 195
    if-nez v1, :cond_a

    .line 196
    .line 197
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 198
    .line 199
    if-eqz v1, :cond_d

    .line 200
    .line 201
    :cond_a
    :goto_3
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 202
    array-length v2, v1

    .line 203
    .line 204
    if-ge v8, v2, :cond_d

    .line 205
    .line 206
    aget-object v1, v1, v8

    .line 207
    .line 208
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 209
    .line 210
    aget-object v2, v2, v8

    .line 211
    .line 212
    if-eqz v2, :cond_c

    .line 213
    .line 214
    .line 215
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    if-ne v3, v2, :cond_c

    .line 219
    .line 220
    .line 221
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    .line 222
    move-result v2

    .line 223
    .line 224
    if-eqz v2, :cond_c

    .line 225
    .line 226
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 227
    .line 228
    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 229
    .line 230
    cmp-long v4, v2, v9

    .line 231
    .line 232
    if-eqz v4, :cond_b

    .line 233
    .line 234
    const-wide/high16 v4, -0x8000000000000000L

    .line 235
    .line 236
    cmp-long v2, v2, v4

    .line 237
    .line 238
    if-eqz v2, :cond_b

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->l()J

    .line 242
    move-result-wide v2

    .line 243
    .line 244
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 245
    .line 246
    iget-wide v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 247
    add-long/2addr v2, v4

    .line 248
    goto :goto_4

    .line 249
    :cond_b
    move-wide v2, v9

    .line 250
    .line 251
    .line 252
    :goto_4
    invoke-direct {p0, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L0(Landroidx/media3/exoplayer/Renderer;J)V

    .line 253
    .line 254
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 255
    goto :goto_3

    .line 256
    :cond_d
    return-void
.end method

.method private b0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eq v1, v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p0()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r()V

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private b1(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->L(Landroidx/media3/common/Timeline;Z)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0(Z)V

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 23
    return-void
.end method

.method private c0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->i()Landroidx/media3/common/Timeline;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/common/Timeline;Z)V

    .line 11
    return-void
.end method

.method private c1(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->E(Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/common/Timeline;Z)V

    .line 17
    return-void
.end method

.method private d0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 9
    .line 10
    iget v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    .line 11
    .line 12
    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    .line 13
    .line 14
    iget v3, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/media3/exoplayer/MediaSourceList;->w(IIILandroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/common/Timeline;Z)V

    .line 25
    return-void
.end method

.method private d1(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 3
    .line 4
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 5
    .line 6
    if-eq v1, p1, :cond_1

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    iput-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 23
    :cond_1
    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U(Landroidx/media3/exoplayer/PlayerMessage;)V

    return-void
.end method

.method private e0()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_1
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->a()V

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private e1()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    return v1

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->m()J

    .line 34
    move-result-wide v4

    .line 35
    .line 36
    cmp-long v2, v2, v4

    .line 37
    .line 38
    if-ltz v2, :cond_3

    .line 39
    .line 40
    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_3
    return v1
.end method

.method private f0(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_1
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v4, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->c(Z)V

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private f1()Z
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->k()J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D(J)J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    if-ne v0, v4, :cond_1

    .line 31
    .line 32
    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->y(J)J

    .line 36
    move-result-wide v4

    .line 37
    :goto_0
    move-wide v10, v4

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->y(J)J

    .line 44
    move-result-wide v4

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 47
    .line 48
    iget-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 49
    sub-long/2addr v4, v6

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :goto_1
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget v9, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 61
    move-wide v5, v10

    .line 62
    move-wide v7, v2

    .line 63
    .line 64
    .line 65
    invoke-interface/range {v4 .. v9}, Landroidx/media3/exoplayer/LoadControl;->a(JJF)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    .line 71
    const-wide/32 v4, 0x7a120

    .line 72
    .line 73
    cmp-long v4, v2, v4

    .line 74
    .line 75
    if-gez v4, :cond_3

    .line 76
    .line 77
    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 78
    .line 79
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    cmp-long v4, v4, v6

    .line 82
    .line 83
    if-gtz v4, :cond_2

    .line 84
    .line 85
    iget-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 86
    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 96
    .line 97
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 98
    .line 99
    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v4, v5, v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 103
    .line 104
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iget v9, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 113
    move-wide v5, v10

    .line 114
    move-wide v7, v2

    .line 115
    .line 116
    .line 117
    invoke-interface/range {v4 .. v9}, Landroidx/media3/exoplayer/LoadControl;->a(JJF)Z

    .line 118
    move-result v0

    .line 119
    :cond_3
    return v0
.end method

.method private g0()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_1
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->b()V

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private g1()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 3
    .line 4
    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 9
    .line 10
    if-nez v0, :cond_0

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

.method public static synthetic h(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private h1(Z)Z
    .locals 13

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R()Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    return v0

    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 16
    .line 17
    iget-boolean p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    return v1

    .line 22
    .line 23
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 32
    .line 33
    iget-object v3, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 34
    .line 35
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->b()J

    .line 47
    move-result-wide v2

    .line 48
    :goto_0
    move-wide v11, v2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :cond_3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->q()Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 70
    .line 71
    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    .line 72
    .line 73
    if-eqz v3, :cond_4

    .line 74
    move v3, v1

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v3, v0

    .line 77
    .line 78
    :goto_2
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 79
    .line 80
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 84
    move-result v4

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    iget-boolean v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 89
    .line 90
    if-nez v2, :cond_5

    .line 91
    move v2, v1

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    move v2, v0

    .line 94
    .line 95
    :goto_3
    if-nez v3, :cond_6

    .line 96
    .line 97
    if-nez v2, :cond_6

    .line 98
    .line 99
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 100
    .line 101
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 102
    .line 103
    iget-object v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 104
    .line 105
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 106
    .line 107
    iget-object v6, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C()J

    .line 111
    move-result-wide v7

    .line 112
    .line 113
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iget v9, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 120
    .line 121
    iget-boolean v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 122
    .line 123
    .line 124
    invoke-interface/range {v4 .. v12}, Landroidx/media3/exoplayer/LoadControl;->b(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaPeriodId;JFZJ)Z

    .line 125
    move-result p1

    .line 126
    .line 127
    if-eqz p1, :cond_7

    .line 128
    :cond_6
    move v0, v1

    .line 129
    :cond_7
    return v0
.end method

.method static synthetic i(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 3
    return p1
.end method

.method private i1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->h()Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 40
    .line 41
    iget-boolean p2, p1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iget-wide p1, p1, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    .line 52
    cmp-long p1, p1, v2

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    const/4 v1, 0x1

    .line 56
    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic j(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    return-object p0
.end method

.method private j0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s0(ZZZZ)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/exoplayer/LoadControl;->onPrepared()V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->d()Landroidx/media3/datasource/TransferListener;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaSourceList;->x(Landroidx/media3/datasource/TransferListener;)V

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 49
    return-void
.end method

.method private j1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->f()V

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 11
    array-length v2, v1

    .line 12
    .line 13
    :goto_0
    if-ge v0, v2, :cond_1

    .line 14
    .line 15
    aget-object v3, v1, v0

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 19
    move-result v4

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->start()V

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method private k(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 9
    const/4 v1, -0x1

    .line 10
    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->r()I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->b(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->c(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1, p1}, Landroidx/media3/exoplayer/MediaSourceList;->f(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/common/Timeline;Z)V

    .line 32
    return-void
.end method

.method private l0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s0(ZZZZ)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0()V

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/media3/exoplayer/LoadControl;->onReleased()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 24
    :cond_0
    monitor-enter p0

    .line 25
    .line 26
    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method private l1(ZZ)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move p1, v0

    .line 13
    .line 14
    .line 15
    :goto_1
    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s0(ZZZZ)V

    .line 16
    .line 17
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/media3/exoplayer/LoadControl;->onStopped()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 29
    return-void
.end method

.method private m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r0()V

    .line 4
    return-void
.end method

.method private m0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 4
    array-length v1, v1

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 9
    .line 10
    aget-object v1, v1, v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->e()V

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->release()V

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private m1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->g()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 17
    move-result v4

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t(Landroidx/media3/exoplayer/Renderer;)V

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method private n(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->j()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->g()Landroidx/media3/exoplayer/PlayerMessage$Target;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->i()I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlayerMessage;->e()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->k(Z)V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->k(Z)V

    .line 32
    throw v1
.end method

.method private n0(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaSourceList;->B(IILandroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H(Landroidx/media3/common/Timeline;Z)V

    .line 17
    return-void
.end method

.method private n1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    .line 26
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 27
    .line 28
    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    .line 29
    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->b(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 37
    :cond_2
    return-void
.end method

.method private o(Landroidx/media3/exoplayer/Renderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

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
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->a(Landroidx/media3/exoplayer/Renderer;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t(Landroidx/media3/exoplayer/Renderer;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->disable()V

    .line 19
    .line 20
    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 25
    return-void
.end method

.method private o1(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Landroidx/media3/exoplayer/LoadControl;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 5
    .line 6
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 9
    .line 10
    iget-object v5, p3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 11
    move-object v2, p1

    .line 12
    move-object v4, p2

    .line 13
    .line 14
    .line 15
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/LoadControl;->c(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 16
    return-void
.end method

.method private p()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->uptimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 11
    const/4 v4, 0x2

    .line 12
    .line 13
    .line 14
    invoke-interface {v3, v4}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p1()V

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 20
    .line 21
    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 22
    const/4 v5, 0x1

    .line 23
    .line 24
    if-eq v3, v5, :cond_21

    .line 25
    const/4 v6, 0x4

    .line 26
    .line 27
    if-ne v3, v6, :cond_0

    .line 28
    .line 29
    goto/16 :goto_10

    .line 30
    .line 31
    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    const-wide/16 v7, 0xa

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0(JJ)V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    const-string v9, "doSomeWork"

    .line 46
    .line 47
    .line 48
    invoke-static {v9}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q1()V

    .line 52
    .line 53
    iget-boolean v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 54
    .line 55
    const-wide/16 v10, 0x3e8

    .line 56
    const/4 v12, 0x0

    .line 57
    .line 58
    if-eqz v9, :cond_a

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v13

    .line 63
    mul-long/2addr v13, v10

    .line 64
    .line 65
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 66
    .line 67
    iget-object v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 68
    .line 69
    iget-wide v7, v15, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 70
    .line 71
    iget-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 72
    sub-long/2addr v7, v10

    .line 73
    .line 74
    iget-boolean v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 75
    .line 76
    .line 77
    invoke-interface {v9, v7, v8, v10}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 78
    move v8, v5

    .line 79
    move v9, v8

    .line 80
    move v7, v12

    .line 81
    .line 82
    :goto_0
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 83
    array-length v11, v10

    .line 84
    .line 85
    if-ge v7, v11, :cond_b

    .line 86
    .line 87
    aget-object v10, v10, v7

    .line 88
    .line 89
    .line 90
    invoke-static {v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 91
    move-result v11

    .line 92
    .line 93
    if-nez v11, :cond_2

    .line 94
    goto :goto_7

    .line 95
    .line 96
    :cond_2
    iget-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 97
    .line 98
    .line 99
    invoke-interface {v10, v4, v5, v13, v14}, Landroidx/media3/exoplayer/Renderer;->render(JJ)V

    .line 100
    .line 101
    if-eqz v8, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-interface {v10}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    .line 105
    move-result v4

    .line 106
    .line 107
    if-eqz v4, :cond_3

    .line 108
    const/4 v8, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    move v8, v12

    .line 111
    .line 112
    :goto_1
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 113
    .line 114
    aget-object v4, v4, v7

    .line 115
    .line 116
    .line 117
    invoke-interface {v10}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 118
    move-result-object v5

    .line 119
    .line 120
    if-eq v4, v5, :cond_4

    .line 121
    const/4 v4, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v4, v12

    .line 124
    .line 125
    :goto_2
    if-nez v4, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-interface {v10}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    .line 129
    move-result v5

    .line 130
    .line 131
    if-eqz v5, :cond_5

    .line 132
    const/4 v5, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move v5, v12

    .line 135
    .line 136
    :goto_3
    if-nez v4, :cond_7

    .line 137
    .line 138
    if-nez v5, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-interface {v10}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    .line 142
    move-result v4

    .line 143
    .line 144
    if-nez v4, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-interface {v10}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    .line 148
    move-result v4

    .line 149
    .line 150
    if-eqz v4, :cond_6

    .line 151
    goto :goto_4

    .line 152
    :cond_6
    move v4, v12

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    :goto_4
    const/4 v4, 0x1

    .line 155
    .line 156
    :goto_5
    if-eqz v9, :cond_8

    .line 157
    .line 158
    if-eqz v4, :cond_8

    .line 159
    const/4 v9, 0x1

    .line 160
    goto :goto_6

    .line 161
    :cond_8
    move v9, v12

    .line 162
    .line 163
    :goto_6
    if-nez v4, :cond_9

    .line 164
    .line 165
    .line 166
    invoke-interface {v10}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    .line 167
    .line 168
    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 169
    const/4 v4, 0x2

    .line 170
    const/4 v5, 0x1

    .line 171
    goto :goto_0

    .line 172
    .line 173
    :cond_a
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 174
    .line 175
    .line 176
    invoke-interface {v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 177
    const/4 v8, 0x1

    .line 178
    const/4 v9, 0x1

    .line 179
    .line 180
    :cond_b
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 181
    .line 182
    iget-wide v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 188
    .line 189
    if-eqz v8, :cond_d

    .line 190
    .line 191
    iget-boolean v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 192
    .line 193
    if-eqz v7, :cond_d

    .line 194
    .line 195
    cmp-long v7, v4, v13

    .line 196
    .line 197
    if-eqz v7, :cond_c

    .line 198
    .line 199
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 200
    .line 201
    iget-wide v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 202
    .line 203
    cmp-long v4, v4, v7

    .line 204
    .line 205
    if-gtz v4, :cond_d

    .line 206
    :cond_c
    const/4 v4, 0x1

    .line 207
    goto :goto_8

    .line 208
    :cond_d
    move v4, v12

    .line 209
    .line 210
    :goto_8
    if-eqz v4, :cond_e

    .line 211
    .line 212
    iget-boolean v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 213
    .line 214
    if-eqz v5, :cond_e

    .line 215
    .line 216
    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 217
    .line 218
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 219
    .line 220
    iget v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 221
    const/4 v7, 0x5

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v12, v5, v12, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U0(ZIZI)V

    .line 225
    :cond_e
    const/4 v5, 0x3

    .line 226
    .line 227
    if-eqz v4, :cond_f

    .line 228
    .line 229
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 230
    .line 231
    iget-boolean v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    .line 232
    .line 233
    if-eqz v4, :cond_f

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 237
    .line 238
    .line 239
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m1()V

    .line 240
    goto :goto_9

    .line 241
    .line 242
    :cond_f
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 243
    .line 244
    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 245
    const/4 v7, 0x2

    .line 246
    .line 247
    if-ne v4, v7, :cond_10

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h1(Z)Z

    .line 251
    move-result v4

    .line 252
    .line 253
    if-eqz v4, :cond_10

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 257
    const/4 v4, 0x0

    .line 258
    .line 259
    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 260
    .line 261
    .line 262
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1()Z

    .line 263
    move-result v4

    .line 264
    .line 265
    if-eqz v4, :cond_14

    .line 266
    .line 267
    .line 268
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j1()V

    .line 269
    goto :goto_9

    .line 270
    .line 271
    :cond_10
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 272
    .line 273
    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 274
    .line 275
    if-ne v4, v5, :cond_14

    .line 276
    .line 277
    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 278
    .line 279
    if-nez v4, :cond_11

    .line 280
    .line 281
    .line 282
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R()Z

    .line 283
    move-result v4

    .line 284
    .line 285
    if-eqz v4, :cond_12

    .line 286
    goto :goto_9

    .line 287
    .line 288
    :cond_11
    if-nez v9, :cond_14

    .line 289
    .line 290
    .line 291
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1()Z

    .line 292
    move-result v4

    .line 293
    .line 294
    iput-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 295
    const/4 v4, 0x2

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d1(I)V

    .line 299
    .line 300
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 301
    .line 302
    if-eqz v4, :cond_13

    .line 303
    .line 304
    .line 305
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g0()V

    .line 306
    .line 307
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 308
    .line 309
    .line 310
    invoke-interface {v4}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->c()V

    .line 311
    .line 312
    .line 313
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m1()V

    .line 314
    .line 315
    :cond_14
    :goto_9
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 316
    .line 317
    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 318
    const/4 v7, 0x2

    .line 319
    .line 320
    if-ne v4, v7, :cond_19

    .line 321
    move v4, v12

    .line 322
    .line 323
    :goto_a
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 324
    array-length v8, v7

    .line 325
    .line 326
    if-ge v4, v8, :cond_16

    .line 327
    .line 328
    aget-object v7, v7, v4

    .line 329
    .line 330
    .line 331
    invoke-static {v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 332
    move-result v7

    .line 333
    .line 334
    if-eqz v7, :cond_15

    .line 335
    .line 336
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 337
    .line 338
    aget-object v7, v7, v4

    .line 339
    .line 340
    .line 341
    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 342
    move-result-object v7

    .line 343
    .line 344
    iget-object v8, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 345
    .line 346
    aget-object v8, v8, v4

    .line 347
    .line 348
    if-ne v7, v8, :cond_15

    .line 349
    .line 350
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 351
    .line 352
    aget-object v7, v7, v4

    .line 353
    .line 354
    .line 355
    invoke-interface {v7}, Landroidx/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    .line 356
    .line 357
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 358
    goto :goto_a

    .line 359
    .line 360
    :cond_16
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 361
    .line 362
    iget-boolean v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    .line 363
    .line 364
    if-nez v4, :cond_19

    .line 365
    .line 366
    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 367
    .line 368
    .line 369
    const-wide/32 v7, 0x7a120

    .line 370
    .line 371
    cmp-long v3, v3, v7

    .line 372
    .line 373
    if-gez v3, :cond_19

    .line 374
    .line 375
    .line 376
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P()Z

    .line 377
    move-result v3

    .line 378
    .line 379
    if-eqz v3, :cond_19

    .line 380
    .line 381
    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 382
    .line 383
    cmp-long v3, v3, v13

    .line 384
    .line 385
    if-nez v3, :cond_17

    .line 386
    .line 387
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 388
    .line 389
    .line 390
    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    .line 391
    move-result-wide v3

    .line 392
    .line 393
    iput-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 394
    goto :goto_b

    .line 395
    .line 396
    :cond_17
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 397
    .line 398
    .line 399
    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    .line 400
    move-result-wide v3

    .line 401
    .line 402
    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 403
    sub-long/2addr v3, v7

    .line 404
    .line 405
    const-wide/16 v7, 0xfa0

    .line 406
    .line 407
    cmp-long v3, v3, v7

    .line 408
    .line 409
    if-gez v3, :cond_18

    .line 410
    goto :goto_b

    .line 411
    .line 412
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 413
    .line 414
    const-string v2, "Playback stuck buffering and not loading"

    .line 415
    .line 416
    .line 417
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 418
    throw v1

    .line 419
    .line 420
    :cond_19
    iput-wide v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 421
    .line 422
    .line 423
    :goto_b
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1()Z

    .line 424
    move-result v3

    .line 425
    .line 426
    if-eqz v3, :cond_1a

    .line 427
    .line 428
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 429
    .line 430
    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 431
    .line 432
    if-ne v3, v5, :cond_1a

    .line 433
    const/4 v3, 0x1

    .line 434
    goto :goto_c

    .line 435
    :cond_1a
    move v3, v12

    .line 436
    .line 437
    :goto_c
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 438
    .line 439
    if-eqz v4, :cond_1b

    .line 440
    .line 441
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 442
    .line 443
    if-eqz v4, :cond_1b

    .line 444
    .line 445
    if-eqz v3, :cond_1b

    .line 446
    const/4 v15, 0x1

    .line 447
    goto :goto_d

    .line 448
    :cond_1b
    move v15, v12

    .line 449
    .line 450
    :goto_d
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 451
    .line 452
    iget-boolean v7, v4, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    .line 453
    .line 454
    if-eq v7, v15, :cond_1c

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v15}, Landroidx/media3/exoplayer/PlaybackInfo;->i(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 458
    move-result-object v4

    .line 459
    .line 460
    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 461
    .line 462
    :cond_1c
    iput-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 463
    .line 464
    if-nez v15, :cond_20

    .line 465
    .line 466
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 467
    .line 468
    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 469
    .line 470
    if-ne v4, v6, :cond_1d

    .line 471
    goto :goto_f

    .line 472
    .line 473
    :cond_1d
    if-nez v3, :cond_1e

    .line 474
    const/4 v3, 0x2

    .line 475
    .line 476
    if-ne v4, v3, :cond_1f

    .line 477
    .line 478
    :cond_1e
    const-wide/16 v3, 0xa

    .line 479
    goto :goto_e

    .line 480
    .line 481
    :cond_1f
    if-ne v4, v5, :cond_20

    .line 482
    .line 483
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 484
    .line 485
    if-eqz v3, :cond_20

    .line 486
    .line 487
    const-wide/16 v3, 0x3e8

    .line 488
    .line 489
    .line 490
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0(JJ)V

    .line 491
    goto :goto_f

    .line 492
    .line 493
    .line 494
    :goto_e
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0(JJ)V

    .line 495
    .line 496
    .line 497
    :cond_20
    :goto_f
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 498
    :cond_21
    :goto_10
    return-void
.end method

.method private p0()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    .line 15
    :goto_0
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 16
    array-length v6, v5

    .line 17
    const/4 v7, 0x1

    .line 18
    .line 19
    if-ge v3, v6, :cond_5

    .line 20
    .line 21
    aget-object v8, v5, v3

    .line 22
    .line 23
    .line 24
    invoke-static {v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 25
    move-result v5

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    goto :goto_2

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {v8}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 35
    .line 36
    aget-object v6, v6, v3

    .line 37
    .line 38
    if-eq v5, v6, :cond_1

    .line 39
    move v5, v7

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v2

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c(I)Z

    .line 45
    move-result v6

    .line 46
    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    if-nez v5, :cond_2

    .line 50
    goto :goto_2

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-interface {v8}, Landroidx/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    .line 54
    move-result v5

    .line 55
    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 59
    .line 60
    aget-object v5, v5, v3

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    .line 64
    move-result-object v9

    .line 65
    .line 66
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 67
    .line 68
    aget-object v10, v5, v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->m()J

    .line 72
    move-result-wide v11

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->l()J

    .line 76
    move-result-wide v13

    .line 77
    .line 78
    .line 79
    invoke-interface/range {v8 .. v14}, Landroidx/media3/exoplayer/Renderer;->f([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-interface {v8}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    .line 84
    move-result v5

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o(Landroidx/media3/exoplayer/Renderer;)V

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move v4, v7

    .line 92
    .line 93
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    goto :goto_0

    .line 95
    .line 96
    :cond_5
    xor-int/lit8 v0, v4, 0x1

    .line 97
    return v0
.end method

.method private p1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->t()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z()V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private q(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 5
    .line 6
    aget-object v1, v1, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    .line 29
    if-ne v2, v3, :cond_1

    .line 30
    move v9, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v9, v4

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    iget-object v6, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 39
    .line 40
    aget-object v6, v6, p1

    .line 41
    .line 42
    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 43
    .line 44
    aget-object v3, v3, p1

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    .line 48
    move-result-object v7

    .line 49
    .line 50
    .line 51
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g1()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 57
    .line 58
    iget v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 59
    const/4 v8, 0x3

    .line 60
    .line 61
    if-ne v3, v8, :cond_2

    .line 62
    move v14, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v14, v4

    .line 65
    .line 66
    :goto_1
    if-nez p2, :cond_3

    .line 67
    .line 68
    if-eqz v14, :cond_3

    .line 69
    move v8, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v8, v4

    .line 72
    .line 73
    :goto_2
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 74
    add-int/2addr v3, v5

    .line 75
    .line 76
    iput v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 77
    .line 78
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 84
    .line 85
    aget-object v5, v3, p1

    .line 86
    .line 87
    iget-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->m()J

    .line 91
    move-result-wide v12

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->l()J

    .line 95
    move-result-wide v15

    .line 96
    move-object v2, v1

    .line 97
    move-object v3, v6

    .line 98
    move-object v4, v7

    .line 99
    move-wide v6, v10

    .line 100
    move-wide v10, v12

    .line 101
    move-wide v12, v15

    .line 102
    .line 103
    .line 104
    invoke-interface/range {v2 .. v13}, Landroidx/media3/exoplayer/Renderer;->g(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJ)V

    .line 105
    .line 106
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    .line 110
    .line 111
    const/16 v3, 0xb

    .line 112
    .line 113
    .line 114
    invoke-interface {v1, v3, v2}, Landroidx/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    .line 115
    .line 116
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->c(Landroidx/media3/exoplayer/Renderer;)V

    .line 120
    .line 121
    if-eqz v14, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->start()V

    .line 125
    :cond_4
    return-void
.end method

.method private q0()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v10, p0

    .line 3
    .line 4
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 11
    .line 12
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    .line 25
    :goto_0
    if-eqz v1, :cond_b

    .line 26
    .line 27
    iget-boolean v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    iget-object v4, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    .line 35
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->v(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 39
    move-result-object v13

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v13, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Z

    .line 47
    move-result v4

    .line 48
    const/4 v9, 0x0

    .line 49
    .line 50
    if-nez v4, :cond_9

    .line 51
    const/4 v8, 0x4

    .line 52
    .line 53
    if-eqz v3, :cond_7

    .line 54
    .line 55
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->D(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 65
    move-result v16

    .line 66
    .line 67
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 68
    array-length v0, v0

    .line 69
    .line 70
    new-array v7, v0, [Z

    .line 71
    .line 72
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 73
    .line 74
    iget-wide v14, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 75
    move-object v12, v6

    .line 76
    .line 77
    move-object/from16 v17, v7

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v12 .. v17}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    .line 81
    move-result-wide v12

    .line 82
    .line 83
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 84
    .line 85
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 86
    .line 87
    if-eq v1, v8, :cond_1

    .line 88
    .line 89
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 90
    .line 91
    cmp-long v0, v12, v0

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    const/4 v14, 0x1

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v14, v9

    .line 97
    .line 98
    :goto_1
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 99
    .line 100
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 101
    .line 102
    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 103
    .line 104
    iget-wide v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 105
    const/4 v15, 0x5

    .line 106
    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    move-wide/from16 v16, v2

    .line 110
    move-wide v2, v12

    .line 111
    move-object v11, v6

    .line 112
    .line 113
    move-object/from16 v18, v7

    .line 114
    .line 115
    move-wide/from16 v6, v16

    .line 116
    move v8, v14

    .line 117
    move v9, v15

    .line 118
    .line 119
    .line 120
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iput-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 124
    .line 125
    if-eqz v14, :cond_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v10, v12, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(J)V

    .line 129
    .line 130
    :cond_2
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 131
    array-length v0, v0

    .line 132
    .line 133
    new-array v0, v0, [Z

    .line 134
    const/4 v9, 0x0

    .line 135
    .line 136
    :goto_2
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 137
    array-length v2, v1

    .line 138
    .line 139
    if-ge v9, v2, :cond_5

    .line 140
    .line 141
    aget-object v1, v1, v9

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 145
    move-result v2

    .line 146
    .line 147
    aput-boolean v2, v0, v9

    .line 148
    .line 149
    iget-object v3, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 150
    .line 151
    aget-object v3, v3, v9

    .line 152
    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    .line 156
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    if-eq v3, v2, :cond_3

    .line 160
    .line 161
    .line 162
    invoke-direct {v10, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o(Landroidx/media3/exoplayer/Renderer;)V

    .line 163
    goto :goto_3

    .line 164
    .line 165
    :cond_3
    aget-boolean v2, v18, v9

    .line 166
    .line 167
    if-eqz v2, :cond_4

    .line 168
    .line 169
    iget-wide v2, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 170
    .line 171
    .line 172
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    .line 173
    .line 174
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 175
    goto :goto_2

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-direct {v10, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s([Z)V

    .line 179
    :cond_6
    :goto_4
    const/4 v5, 0x1

    .line 180
    goto :goto_5

    .line 181
    .line 182
    :cond_7
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->D(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 186
    .line 187
    iget-boolean v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 188
    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 192
    .line 193
    iget-wide v2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 194
    .line 195
    iget-wide v4, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->y(J)J

    .line 199
    move-result-wide v4

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 203
    move-result-wide v2

    .line 204
    const/4 v4, 0x0

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v13, v2, v3, v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    .line 208
    goto :goto_4

    .line 209
    .line 210
    .line 211
    :goto_5
    invoke-direct {v10, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G(Z)V

    .line 212
    .line 213
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 214
    .line 215
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 216
    const/4 v1, 0x4

    .line 217
    .line 218
    if-eq v0, v1, :cond_8

    .line 219
    .line 220
    .line 221
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V()V

    .line 222
    .line 223
    .line 224
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q1()V

    .line 225
    .line 226
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 227
    const/4 v1, 0x2

    .line 228
    .line 229
    .line 230
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 231
    :cond_8
    return-void

    .line 232
    :cond_9
    move v4, v9

    .line 233
    const/4 v5, 0x1

    .line 234
    .line 235
    if-ne v1, v2, :cond_a

    .line 236
    move v3, v4

    .line 237
    .line 238
    .line 239
    :cond_a
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 240
    move-result-object v1

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    :cond_b
    :goto_6
    return-void
.end method

.method private q1()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    .line 24
    move-result-wide v4

    .line 25
    move-wide v6, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-wide v6, v2

    .line 28
    .line 29
    :goto_0
    cmp-long v1, v6, v2

    .line 30
    const/4 v10, 0x0

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(J)V

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 38
    .line 39
    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 40
    .line 41
    cmp-long v0, v6, v0

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 46
    .line 47
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 48
    .line 49
    iget-wide v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 50
    const/4 v8, 0x1

    .line 51
    const/4 v9, 0x5

    .line 52
    move-object v0, p0

    .line 53
    move-wide v2, v6

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    if-eq v0, v2, :cond_3

    .line 71
    const/4 v2, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move v2, v10

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->h(Z)J

    .line 77
    move-result-wide v1

    .line 78
    .line 79
    iput-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->y(J)J

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 86
    .line 87
    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(JJ)V

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->o(J)V

    .line 96
    .line 97
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()J

    .line 107
    move-result-wide v2

    .line 108
    .line 109
    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 110
    .line 111
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C()J

    .line 115
    move-result-wide v1

    .line 116
    .line 117
    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 120
    .line 121
    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 122
    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 126
    const/4 v2, 0x3

    .line 127
    .line 128
    if-ne v1, v2, :cond_5

    .line 129
    .line 130
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 131
    .line 132
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 136
    move-result v0

    .line 137
    .line 138
    if-eqz v0, :cond_5

    .line 139
    .line 140
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 141
    .line 142
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 143
    .line 144
    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 145
    .line 146
    const/high16 v1, 0x3f800000    # 1.0f

    .line 147
    .line 148
    cmpl-float v0, v0, v1

    .line 149
    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w()J

    .line 156
    move-result-wide v1

    .line 157
    .line 158
    .line 159
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C()J

    .line 160
    move-result-wide v3

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->a(JJ)F

    .line 164
    move-result v0

    .line 165
    .line 166
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 173
    .line 174
    cmpl-float v1, v1, v0

    .line 175
    .line 176
    if-eqz v1, :cond_5

    .line 177
    .line 178
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 179
    .line 180
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v0}, Landroidx/media3/common/PlaybackParameters;->d(F)Landroidx/media3/common/PlaybackParameters;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O0(Landroidx/media3/common/PlaybackParameters;)V

    .line 188
    .line 189
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 190
    .line 191
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 192
    .line 193
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, v0, v1, v10, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 203
    :cond_5
    return-void
.end method

.method private r()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    new-array v0, v0, [Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s([Z)V

    .line 9
    return-void
.end method

.method private r0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q0()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0(Z)V

    .line 8
    return-void
.end method

.method private r1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i1(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 20
    .line 21
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p2

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O0(Landroidx/media3/common/PlaybackParameters;)V

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 37
    .line 38
    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 39
    .line 40
    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 41
    const/4 p3, 0x0

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p2, p1, p3, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 45
    :cond_1
    return-void

    .line 46
    .line 47
    :cond_2
    iget-object v0, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 65
    .line 66
    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    check-cast v1, Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->e(Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 81
    .line 82
    cmp-long v2, p5, v0

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 87
    .line 88
    iget-object p2, p2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1, p2, p5, p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    .line 92
    move-result-wide p1

    .line 93
    .line 94
    .line 95
    invoke-interface {p3, p1, p2}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->d(J)V

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 99
    .line 100
    iget-object p1, p1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->u()Z

    .line 104
    move-result p2

    .line 105
    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    iget-object p2, p4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 109
    .line 110
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2, p4}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 117
    .line 118
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p2, p4}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    iget-object p2, p2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    const/4 p2, 0x0

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-static {p2, p1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    move-result p1

    .line 131
    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    if-eqz p7, :cond_6

    .line 135
    .line 136
    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 137
    .line 138
    .line 139
    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;->d(J)V

    .line 140
    :cond_6
    :goto_2
    return-void
.end method

.method private s([Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    .line 14
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 15
    array-length v4, v4

    .line 16
    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c(I)Z

    .line 21
    move-result v4

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 28
    .line 29
    aget-object v5, v5, v3

    .line 30
    .line 31
    .line 32
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 38
    .line 39
    aget-object v4, v4, v3

    .line 40
    .line 41
    .line 42
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->reset()V

    .line 43
    .line 44
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 48
    array-length v3, v3

    .line 49
    .line 50
    if-ge v2, v3, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c(I)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    aget-boolean v3, p1, v2

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q(IZ)V

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 p1, 0x1

    .line 66
    .line 67
    iput-boolean p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    .line 68
    return-void
.end method

.method private s0(ZZZZ)V
    .locals 31

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    .line 15
    .line 16
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->g()V

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v4, 0xe8d4a51000L

    .line 25
    .line 26
    iput-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 27
    .line 28
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 29
    array-length v5, v4

    .line 30
    move v6, v3

    .line 31
    .line 32
    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    .line 33
    .line 34
    if-ge v6, v5, :cond_0

    .line 35
    .line 36
    aget-object v0, v4, v6

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o(Landroidx/media3/exoplayer/Renderer;)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    .line 44
    .line 45
    :goto_1
    const-string v8, "Disable failed."

    .line 46
    .line 47
    .line 48
    invoke-static {v7, v8, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 56
    array-length v5, v4

    .line 57
    move v6, v3

    .line 58
    .line 59
    :goto_3
    if-ge v6, v5, :cond_2

    .line 60
    .line 61
    aget-object v0, v4, v6

    .line 62
    .line 63
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    move-result v8

    .line 68
    .line 69
    if-eqz v8, :cond_1

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    goto :goto_4

    .line 74
    :catch_2
    move-exception v0

    .line 75
    move-object v8, v0

    .line 76
    .line 77
    const-string v0, "Reset failed."

    .line 78
    .line 79
    .line 80
    invoke-static {v7, v0, v8}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 83
    goto :goto_3

    .line 84
    .line 85
    :cond_2
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 86
    .line 87
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 88
    .line 89
    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 90
    .line 91
    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 92
    .line 93
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 104
    .line 105
    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline$Period;)Z

    .line 109
    move-result v0

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    goto :goto_5

    .line 113
    .line 114
    :cond_3
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 115
    .line 116
    iget-wide v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_4
    :goto_5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 120
    .line 121
    iget-wide v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 122
    .line 123
    :goto_6
    if-eqz p2, :cond_5

    .line 124
    .line 125
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 126
    .line 127
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 128
    .line 129
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 138
    .line 139
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 145
    move-result-wide v5

    .line 146
    .line 147
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v0}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v0

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 159
    .line 160
    if-nez v0, :cond_5

    .line 161
    const/4 v0, 0x1

    .line 162
    .line 163
    :goto_7
    move-wide/from16 v26, v5

    .line 164
    move-wide v8, v7

    .line 165
    goto :goto_8

    .line 166
    :cond_5
    move v0, v3

    .line 167
    goto :goto_7

    .line 168
    .line 169
    :goto_8
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f()V

    .line 173
    .line 174
    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 175
    .line 176
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 177
    .line 178
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 179
    .line 180
    if-eqz p3, :cond_6

    .line 181
    .line 182
    instance-of v5, v3, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 183
    .line 184
    if-eqz v5, :cond_6

    .line 185
    .line 186
    check-cast v3, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 187
    .line 188
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaSourceList;->q()Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 192
    move-result-object v5

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/PlaylistTimeline;->I(Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 196
    move-result-object v3

    .line 197
    .line 198
    iget v5, v4, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 199
    const/4 v6, -0x1

    .line 200
    .line 201
    if-eq v5, v6, :cond_6

    .line 202
    .line 203
    iget-object v5, v4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 204
    .line 205
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v5, v6}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 209
    .line 210
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 211
    .line 212
    iget v5, v5, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 213
    .line 214
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v5, v6}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 218
    move-result-object v5

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Window;->h()Z

    .line 222
    move-result v5

    .line 223
    .line 224
    if-eqz v5, :cond_6

    .line 225
    .line 226
    new-instance v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 227
    .line 228
    iget-object v6, v4, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 229
    .line 230
    iget-wide v10, v4, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 231
    .line 232
    .line 233
    invoke-direct {v5, v6, v10, v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 234
    move-object v6, v3

    .line 235
    .line 236
    move-object/from16 v18, v5

    .line 237
    goto :goto_9

    .line 238
    :cond_6
    move-object v6, v3

    .line 239
    .line 240
    move-object/from16 v18, v4

    .line 241
    .line 242
    :goto_9
    new-instance v3, Landroidx/media3/exoplayer/PlaybackInfo;

    .line 243
    .line 244
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 245
    .line 246
    iget v12, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 247
    .line 248
    if-eqz p4, :cond_7

    .line 249
    :goto_a
    move-object v13, v2

    .line 250
    goto :goto_b

    .line 251
    .line 252
    :cond_7
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 253
    goto :goto_a

    .line 254
    :goto_b
    const/4 v14, 0x0

    .line 255
    .line 256
    if-eqz v0, :cond_8

    .line 257
    .line 258
    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 259
    :goto_c
    move-object v15, v2

    .line 260
    goto :goto_d

    .line 261
    .line 262
    :cond_8
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 263
    goto :goto_c

    .line 264
    .line 265
    :goto_d
    if-eqz v0, :cond_9

    .line 266
    .line 267
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 268
    .line 269
    :goto_e
    move-object/from16 v16, v2

    .line 270
    goto :goto_f

    .line 271
    .line 272
    :cond_9
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 273
    goto :goto_e

    .line 274
    .line 275
    :goto_f
    if-eqz v0, :cond_a

    .line 276
    .line 277
    .line 278
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    :goto_10
    move-object/from16 v17, v0

    .line 282
    goto :goto_11

    .line 283
    .line 284
    :cond_a
    iget-object v0, v4, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 285
    goto :goto_10

    .line 286
    .line 287
    :goto_11
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 288
    .line 289
    iget-boolean v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 290
    .line 291
    move/from16 v19, v2

    .line 292
    .line 293
    iget v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    .line 294
    .line 295
    move/from16 v20, v2

    .line 296
    .line 297
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 298
    .line 299
    move-object/from16 v21, v0

    .line 300
    .line 301
    const-wide/16 v24, 0x0

    .line 302
    .line 303
    const-wide/16 v28, 0x0

    .line 304
    .line 305
    const/16 v30, 0x0

    .line 306
    move-object v5, v3

    .line 307
    .line 308
    move-object/from16 v7, v18

    .line 309
    .line 310
    move-wide/from16 v10, v26

    .line 311
    .line 312
    move-wide/from16 v22, v26

    .line 313
    .line 314
    .line 315
    invoke-direct/range {v5 .. v30}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    .line 316
    .line 317
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 318
    .line 319
    if-eqz p3, :cond_b

    .line 320
    .line 321
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Landroidx/media3/exoplayer/MediaSourceList;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->z()V

    .line 325
    :cond_b
    return-void
.end method

.method private s1(F)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->o()Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_1
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {v4, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private t(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->stop()V

    .line 11
    :cond_0
    return-void
.end method

.method private t0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 11
    .line 12
    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

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
    .line 23
    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 24
    return-void
.end method

.method private declared-synchronized t1(Lcom/google/common/base/u;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/u<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    .line 7
    move-result-wide v0

    .line 8
    add-long/2addr v0, p2

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    check-cast v3, Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v3, p2, v3

    .line 26
    .line 27
    if-lez v3, :cond_0

    .line 28
    .line 29
    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->a()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    const/4 p2, 0x1

    .line 40
    move v2, p2

    .line 41
    .line 42
    :goto_1
    :try_start_2
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->clock:Landroidx/media3/common/util/Clock;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    .line 46
    move-result-wide p2

    .line 47
    .line 48
    sub-long p2, v0, p2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :cond_1
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_2
    monitor-exit p0

    .line 62
    throw p1
.end method

.method private u0(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v0, 0xe8d4a51000L

    .line 14
    add-long/2addr p1, v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->z(J)J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/DefaultMediaClock;->d(J)V

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 29
    array-length p2, p1

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    :goto_1
    if-ge v0, p2, :cond_2

    .line 33
    .line 34
    aget-object v1, p1, v0

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-wide v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/Renderer;->resetPosition(J)V

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0()V

    .line 52
    return-void
.end method

.method private v([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Lcom/google/common/collect/a0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/common/Metadata;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/a0$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/common/collect/a0$a;-><init>()V

    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    aget-object v5, p1, v3

    .line 14
    .line 15
    if-eqz v5, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v5, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    iget-object v5, v5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    new-instance v5, Landroidx/media3/common/Metadata;

    .line 26
    .line 27
    new-array v6, v2, [Landroidx/media3/common/Metadata$Entry;

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v5}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    if-eqz v4, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 47
    move-result-object p1

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 52
    move-result-object p1

    .line 53
    :goto_2
    return-object p1
.end method

.method private static v0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iget p2, p2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2, p3, v0}, Landroidx/media3/common/Timeline;->k(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 22
    .line 23
    iget-wide v0, p3, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    cmp-long p3, v0, v2

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    const-wide/16 v2, 0x1

    .line 35
    sub-long/2addr v0, v2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b(IJLjava/lang/Object;)V

    .line 45
    return-void
.end method

.method private w()J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 7
    .line 8
    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 9
    .line 10
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private static w0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v10, p6

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 12
    const/4 v11, 0x0

    .line 13
    const/4 v12, 0x1

    .line 14
    .line 15
    const-wide/high16 v13, -0x8000000000000000L

    .line 16
    .line 17
    if-nez v2, :cond_3

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->f()J

    .line 23
    move-result-wide v1

    .line 24
    .line 25
    cmp-long v1, v1, v13

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->f()J

    .line 39
    move-result-wide v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 43
    move-result-wide v1

    .line 44
    .line 45
    :goto_0
    new-instance v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 46
    .line 47
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroidx/media3/exoplayer/PlayerMessage;->h()Landroidx/media3/common/Timeline;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->d()I

    .line 57
    move-result v5

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4, v5, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 61
    const/4 v4, 0x0

    .line 62
    .line 63
    move-object/from16 v1, p1

    .line 64
    move-object v2, v3

    .line 65
    move v3, v4

    .line 66
    .line 67
    move/from16 v4, p3

    .line 68
    .line 69
    move/from16 v5, p4

    .line 70
    .line 71
    move-object/from16 v6, p5

    .line 72
    .line 73
    move-object/from16 v7, p6

    .line 74
    .line 75
    .line 76
    invoke-static/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    if-nez v1, :cond_1

    .line 80
    return v11

    .line 81
    .line 82
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 86
    move-result v2

    .line 87
    .line 88
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 94
    move-result-wide v3

    .line 95
    .line 96
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2, v3, v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b(IJLjava/lang/Object;)V

    .line 100
    .line 101
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlayerMessage;->f()J

    .line 105
    move-result-wide v1

    .line 106
    .line 107
    cmp-long v1, v1, v13

    .line 108
    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    .line 112
    invoke-static {v8, p0, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    .line 113
    :cond_2
    return v12

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 117
    move-result v2

    .line 118
    const/4 v3, -0x1

    .line 119
    .line 120
    if-ne v2, v3, :cond_4

    .line 121
    return v11

    .line 122
    .line 123
    :cond_4
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->f()J

    .line 127
    move-result-wide v3

    .line 128
    .line 129
    cmp-long v3, v3, v13

    .line 130
    .line 131
    if-nez v3, :cond_5

    .line 132
    .line 133
    .line 134
    invoke-static {v8, p0, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)V

    .line 135
    return v12

    .line 136
    .line 137
    :cond_5
    iput v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 138
    .line 139
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2, v10}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 143
    .line 144
    iget-boolean v2, v10, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 145
    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    iget v2, v10, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2, v9}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    iget v2, v2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 155
    .line 156
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 160
    move-result v1

    .line 161
    .line 162
    if-ne v2, v1, :cond_6

    .line 163
    .line 164
    iget-wide v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p6 .. p6}, Landroidx/media3/common/Timeline$Period;->r()J

    .line 168
    move-result-wide v3

    .line 169
    .line 170
    add-long v5, v1, v3

    .line 171
    .line 172
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v1, v10}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    iget v4, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 179
    .line 180
    move-object/from16 v1, p1

    .line 181
    .line 182
    move-object/from16 v2, p5

    .line 183
    .line 184
    move-object/from16 v3, p6

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v2}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 194
    move-result v2

    .line 195
    .line 196
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v3, Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 202
    move-result-wide v3

    .line 203
    .line 204
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v2, v3, v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->b(IJLjava/lang/Object;)V

    .line 208
    :cond_6
    return v12
.end method

.method private static x(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    .line 11
    :goto_0
    new-array v2, v1, [Landroidx/media3/common/Format;

    .line 12
    .line 13
    :goto_1
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    aput-object v3, v2, v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    return-object v2
.end method

.method private x0(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->u()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v0, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    move-object v2, v1

    .line 31
    .line 32
    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 33
    .line 34
    iget v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 35
    .line 36
    iget-boolean v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 37
    .line 38
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 39
    .line 40
    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    .line 44
    .line 45
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Landroidx/media3/exoplayer/PlayerMessage;

    .line 59
    const/4 v2, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/PlayerMessage;->k(Z)V

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method private y(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    iget p2, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 16
    .line 17
    iget-wide v0, p1, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    cmp-long p2, v0, v2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->h()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 35
    .line 36
    iget-boolean p2, p1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->c()J

    .line 43
    move-result-wide p1

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->window:Landroidx/media3/common/Timeline$Window;

    .line 46
    .line 47
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 48
    sub-long/2addr p1, v0

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 52
    move-result-wide p1

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->period:Landroidx/media3/common/Timeline$Period;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->r()J

    .line 58
    move-result-wide v0

    .line 59
    add-long/2addr p3, v0

    .line 60
    sub-long/2addr p1, p3

    .line 61
    return-wide p1

    .line 62
    :cond_1
    :goto_0
    return-wide v2
.end method

.method private static y0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;Landroidx/media3/exoplayer/MediaPeriodQueue;IZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    .locals 30
    .param p2    # Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move-object/from16 v9, p2

    .line 7
    .line 8
    move/from16 v10, p5

    .line 9
    .line 10
    move-object/from16 v11, p7

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/Timeline;->u()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroidx/media3/exoplayer/PlaybackInfo;->l()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x1

    .line 32
    const/4 v9, 0x0

    .line 33
    move-object v1, v0

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_0
    iget-object v14, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 40
    .line 41
    iget-object v12, v14, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-static {v8, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline$Period;)Z

    .line 45
    move-result v13

    .line 46
    .line 47
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    if-eqz v13, :cond_1

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    iget-wide v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 59
    :goto_0
    move-wide v15, v0

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-wide v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :goto_2
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    const/4 v6, -0x1

    .line 70
    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    const/16 v20, 0x1

    .line 74
    .line 75
    if-eqz v9, :cond_6

    .line 76
    const/4 v2, 0x1

    .line 77
    .line 78
    move-object/from16 v0, p0

    .line 79
    .line 80
    move-object/from16 v1, p2

    .line 81
    .line 82
    move/from16 v3, p4

    .line 83
    .line 84
    move/from16 v4, p5

    .line 85
    .line 86
    move-object/from16 v5, p6

    .line 87
    .line 88
    move-object/from16 v21, v14

    .line 89
    move v14, v6

    .line 90
    .line 91
    move-object/from16 v6, p7

    .line 92
    .line 93
    .line 94
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v10}, Landroidx/media3/common/Timeline;->e(Z)I

    .line 101
    move-result v0

    .line 102
    move v6, v0

    .line 103
    move-wide v0, v15

    .line 104
    .line 105
    move/from16 v2, v19

    .line 106
    move v3, v2

    .line 107
    .line 108
    move/from16 v4, v20

    .line 109
    goto :goto_5

    .line 110
    .line 111
    :cond_3
    iget-wide v1, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 112
    .line 113
    cmp-long v1, v1, v17

    .line 114
    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, v0, v11}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iget v6, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 124
    move-wide v0, v15

    .line 125
    .line 126
    move/from16 v2, v19

    .line 127
    goto :goto_3

    .line 128
    .line 129
    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 137
    move-result-wide v0

    .line 138
    move v6, v14

    .line 139
    .line 140
    move/from16 v2, v20

    .line 141
    .line 142
    :goto_3
    iget v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 143
    const/4 v4, 0x4

    .line 144
    .line 145
    if-ne v3, v4, :cond_5

    .line 146
    .line 147
    move/from16 v3, v20

    .line 148
    goto :goto_4

    .line 149
    .line 150
    :cond_5
    move/from16 v3, v19

    .line 151
    .line 152
    :goto_4
    move/from16 v4, v19

    .line 153
    .line 154
    :goto_5
    move-object/from16 v9, p6

    .line 155
    .line 156
    move/from16 v29, v2

    .line 157
    .line 158
    move/from16 v27, v3

    .line 159
    .line 160
    move/from16 v28, v4

    .line 161
    move v3, v6

    .line 162
    .line 163
    :goto_6
    move-object/from16 v6, v21

    .line 164
    .line 165
    goto/16 :goto_a

    .line 166
    .line 167
    :cond_6
    move-object/from16 v21, v14

    .line 168
    move v14, v6

    .line 169
    .line 170
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 174
    move-result v0

    .line 175
    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v10}, Landroidx/media3/common/Timeline;->e(Z)I

    .line 180
    move-result v0

    .line 181
    .line 182
    :goto_7
    move-object/from16 v9, p6

    .line 183
    move v3, v0

    .line 184
    move-wide v0, v15

    .line 185
    .line 186
    move/from16 v27, v19

    .line 187
    .line 188
    move/from16 v28, v27

    .line 189
    .line 190
    move/from16 v29, v28

    .line 191
    goto :goto_6

    .line 192
    .line 193
    .line 194
    :cond_7
    invoke-virtual {v7, v12}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 195
    move-result v0

    .line 196
    .line 197
    if-ne v0, v14, :cond_9

    .line 198
    .line 199
    iget-object v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 200
    .line 201
    move-object/from16 v0, p6

    .line 202
    .line 203
    move-object/from16 v1, p7

    .line 204
    .line 205
    move/from16 v2, p4

    .line 206
    .line 207
    move/from16 v3, p5

    .line 208
    move-object v4, v12

    .line 209
    .line 210
    move-object/from16 v6, p0

    .line 211
    .line 212
    .line 213
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Ljava/lang/Object;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    if-nez v0, :cond_8

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v10}, Landroidx/media3/common/Timeline;->e(Z)I

    .line 220
    move-result v0

    .line 221
    .line 222
    move/from16 v4, v20

    .line 223
    goto :goto_8

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-virtual {v7, v0, v11}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 230
    .line 231
    move/from16 v4, v19

    .line 232
    .line 233
    :goto_8
    move-object/from16 v9, p6

    .line 234
    move v3, v0

    .line 235
    .line 236
    move/from16 v28, v4

    .line 237
    move-wide v0, v15

    .line 238
    .line 239
    move/from16 v27, v19

    .line 240
    .line 241
    move/from16 v29, v27

    .line 242
    goto :goto_6

    .line 243
    .line 244
    :cond_9
    cmp-long v0, v15, v17

    .line 245
    .line 246
    if-nez v0, :cond_a

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 253
    goto :goto_7

    .line 254
    .line 255
    :cond_a
    if-eqz v13, :cond_c

    .line 256
    .line 257
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 258
    .line 259
    move-object/from16 v6, v21

    .line 260
    .line 261
    iget-object v1, v6, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1, v11}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 265
    .line 266
    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 267
    .line 268
    iget v1, v11, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 269
    .line 270
    move-object/from16 v9, p6

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1, v9}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 274
    move-result-object v0

    .line 275
    .line 276
    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 277
    .line 278
    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 279
    .line 280
    iget-object v2, v6, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 284
    move-result v1

    .line 285
    .line 286
    if-ne v0, v1, :cond_b

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/Timeline$Period;->r()J

    .line 290
    move-result-wide v0

    .line 291
    .line 292
    add-long v4, v15, v0

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    iget v3, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 299
    .line 300
    move-object/from16 v0, p0

    .line 301
    .line 302
    move-object/from16 v1, p6

    .line 303
    .line 304
    move-object/from16 v2, p7

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 308
    move-result-object v0

    .line 309
    .line 310
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 311
    .line 312
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v0, Ljava/lang/Long;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 318
    move-result-wide v0

    .line 319
    goto :goto_9

    .line 320
    :cond_b
    move-wide v0, v15

    .line 321
    :goto_9
    move v3, v14

    .line 322
    .line 323
    move/from16 v27, v19

    .line 324
    .line 325
    move/from16 v28, v27

    .line 326
    .line 327
    move/from16 v29, v20

    .line 328
    goto :goto_a

    .line 329
    .line 330
    :cond_c
    move-object/from16 v9, p6

    .line 331
    .line 332
    move-object/from16 v6, v21

    .line 333
    move v3, v14

    .line 334
    move-wide v0, v15

    .line 335
    .line 336
    move/from16 v27, v19

    .line 337
    .line 338
    move/from16 v28, v27

    .line 339
    .line 340
    move/from16 v29, v28

    .line 341
    .line 342
    :goto_a
    if-eq v3, v14, :cond_d

    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 348
    .line 349
    move-object/from16 v0, p0

    .line 350
    .line 351
    move-object/from16 v1, p6

    .line 352
    .line 353
    move-object/from16 v2, p7

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 357
    move-result-object v0

    .line 358
    .line 359
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 360
    .line 361
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Ljava/lang/Long;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 367
    move-result-wide v0

    .line 368
    .line 369
    move-object/from16 v2, p3

    .line 370
    .line 371
    move-wide/from16 v25, v17

    .line 372
    goto :goto_b

    .line 373
    .line 374
    :cond_d
    move-object/from16 v2, p3

    .line 375
    .line 376
    move-wide/from16 v25, v0

    .line 377
    .line 378
    .line 379
    :goto_b
    invoke-virtual {v2, v7, v12, v0, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->F(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 380
    move-result-object v2

    .line 381
    .line 382
    iget v3, v2, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    .line 383
    .line 384
    if-eq v3, v14, :cond_f

    .line 385
    .line 386
    iget v4, v6, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    .line 387
    .line 388
    if-eq v4, v14, :cond_e

    .line 389
    .line 390
    if-lt v3, v4, :cond_e

    .line 391
    goto :goto_c

    .line 392
    .line 393
    :cond_e
    move/from16 v3, v19

    .line 394
    goto :goto_d

    .line 395
    .line 396
    :cond_f
    :goto_c
    move/from16 v3, v20

    .line 397
    .line 398
    :goto_d
    iget-object v4, v6, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result v4

    .line 403
    .line 404
    if-eqz v4, :cond_10

    .line 405
    .line 406
    .line 407
    invoke-virtual {v6}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 408
    move-result v4

    .line 409
    .line 410
    if-nez v4, :cond_10

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 414
    move-result v4

    .line 415
    .line 416
    if-nez v4, :cond_10

    .line 417
    .line 418
    if-eqz v3, :cond_10

    .line 419
    goto :goto_e

    .line 420
    .line 421
    :cond_10
    move/from16 v20, v19

    .line 422
    .line 423
    .line 424
    :goto_e
    invoke-virtual {v7, v12, v11}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 425
    move-result-object v17

    .line 426
    move v12, v13

    .line 427
    move-object v13, v6

    .line 428
    move-object v3, v6

    .line 429
    move-wide v14, v15

    .line 430
    .line 431
    move-object/from16 v16, v2

    .line 432
    .line 433
    move-wide/from16 v18, v25

    .line 434
    .line 435
    .line 436
    invoke-static/range {v12 .. v19}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O(ZLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;J)Z

    .line 437
    move-result v4

    .line 438
    .line 439
    if-nez v20, :cond_11

    .line 440
    .line 441
    if-eqz v4, :cond_12

    .line 442
    :cond_11
    move-object v2, v3

    .line 443
    .line 444
    .line 445
    :cond_12
    invoke-virtual {v2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 446
    move-result v4

    .line 447
    .line 448
    if-eqz v4, :cond_13

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 452
    move-result v0

    .line 453
    .line 454
    if-eqz v0, :cond_14

    .line 455
    .line 456
    iget-wide v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 457
    .line 458
    :cond_13
    :goto_f
    move-wide/from16 v23, v0

    .line 459
    goto :goto_10

    .line 460
    .line 461
    :cond_14
    iget-object v0, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v7, v0, v11}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 465
    .line 466
    iget v0, v2, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 467
    .line 468
    iget v1, v2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11, v1}, Landroidx/media3/common/Timeline$Period;->o(I)I

    .line 472
    move-result v1

    .line 473
    .line 474
    if-ne v0, v1, :cond_15

    .line 475
    .line 476
    .line 477
    invoke-virtual/range {p7 .. p7}, Landroidx/media3/common/Timeline$Period;->j()J

    .line 478
    move-result-wide v0

    .line 479
    goto :goto_f

    .line 480
    .line 481
    :cond_15
    const-wide/16 v0, 0x0

    .line 482
    goto :goto_f

    .line 483
    .line 484
    :goto_10
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 485
    .line 486
    move-object/from16 v21, v0

    .line 487
    .line 488
    move-object/from16 v22, v2

    .line 489
    .line 490
    .line 491
    invoke-direct/range {v21 .. v29}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    .line 492
    return-object v0
.end method

.method private z()J
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    return-wide v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->l()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 18
    .line 19
    if-nez v3, :cond_1

    .line 20
    return-wide v1

    .line 21
    :cond_1
    const/4 v3, 0x0

    .line 22
    .line 23
    :goto_0
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 24
    array-length v5, v4

    .line 25
    .line 26
    if-ge v3, v5, :cond_5

    .line 27
    .line 28
    aget-object v4, v4, v3

    .line 29
    .line 30
    .line 31
    invoke-static {v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(Landroidx/media3/exoplayer/Renderer;)Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    .line 41
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->getStream()Landroidx/media3/exoplayer/source/SampleStream;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 45
    .line 46
    aget-object v5, v5, v3

    .line 47
    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Landroidx/media3/exoplayer/Renderer;

    .line 52
    .line 53
    aget-object v4, v4, v3

    .line 54
    .line 55
    .line 56
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->c()J

    .line 57
    move-result-wide v4

    .line 58
    .line 59
    const-wide/high16 v6, -0x8000000000000000L

    .line 60
    .line 61
    cmp-long v8, v4, v6

    .line 62
    .line 63
    if-nez v8, :cond_3

    .line 64
    return-wide v6

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 68
    move-result-wide v1

    .line 69
    .line 70
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    return-wide v1
.end method

.method private static z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;",
            "ZIZ",
            "Landroidx/media3/common/Timeline$Window;",
            "Landroidx/media3/common/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    .line 4
    move-object/from16 v8, p6

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->timeline:Landroidx/media3/common/Timeline;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->u()Z

    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    return-object v9

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->u()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    move-object v10, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v10, v1

    .line 24
    .line 25
    :goto_0
    :try_start_0
    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    .line 26
    .line 27
    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 28
    move-object v1, v10

    .line 29
    .line 30
    move-object/from16 v2, p5

    .line 31
    .line 32
    move-object/from16 v3, p6

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v10}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    return-object v1

    .line 44
    .line 45
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 49
    move-result v2

    .line 50
    const/4 v3, -0x1

    .line 51
    .line 52
    if-eq v2, v3, :cond_4

    .line 53
    .line 54
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v2, v8}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    iget-boolean v2, v2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget v2, v8, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 65
    .line 66
    move-object/from16 v11, p5

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v2, v11}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    iget v2, v2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 73
    .line 74
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, v3}, Landroidx/media3/common/Timeline;->f(Ljava/lang/Object;)I

    .line 78
    move-result v3

    .line 79
    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    .line 82
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1, v8}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    iget v3, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 89
    .line 90
    iget-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    .line 91
    move-object v0, p0

    .line 92
    .line 93
    move-object/from16 v1, p5

    .line 94
    .line 95
    move-object/from16 v2, p6

    .line 96
    .line 97
    .line 98
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 99
    move-result-object v1

    .line 100
    :cond_3
    return-object v1

    .line 101
    .line 102
    :cond_4
    move-object/from16 v11, p5

    .line 103
    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 107
    .line 108
    move-object/from16 v0, p5

    .line 109
    .line 110
    move-object/from16 v1, p6

    .line 111
    move v2, p3

    .line 112
    .line 113
    move/from16 v3, p4

    .line 114
    move-object v5, v10

    .line 115
    move-object v6, p0

    .line 116
    .line 117
    .line 118
    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0, v8}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    iget v3, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 133
    move-object v0, p0

    .line 134
    .line 135
    move-object/from16 v1, p5

    .line 136
    .line 137
    move-object/from16 v2, p6

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 141
    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :catch_0
    :cond_5
    return-object v9
.end method


# virtual methods
.method public B()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public C0(Landroidx/media3/common/Timeline;IJ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 8
    const/4 p1, 0x3

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 16
    return-void
.end method

.method public declared-synchronized M0(Z)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const/16 v0, 0xd

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    .line 35
    return v1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v0, v2, v2, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 52
    .line 53
    new-instance v0, Landroidx/media3/exoplayer/r1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/r1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 57
    .line 58
    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t1(Lcom/google/common/base/u;J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 65
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    monitor-exit p0

    .line 67
    return p1

    .line 68
    :cond_2
    :goto_0
    monitor-exit p0

    .line 69
    return v1

    .line 70
    :goto_1
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public Q0(Ljava/util/List;IJLandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;IJ",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    new-instance v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    .line 5
    const/4 v7, 0x0

    .line 6
    move-object v1, v8

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p5

    .line 9
    move v4, p2

    .line 10
    move-wide v5, p3

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;IJLandroidx/media3/exoplayer/ExoPlayerImplInternal$1;)V

    .line 14
    .line 15
    const/16 p1, 0x11

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v8}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 23
    return-void
.end method

.method public T0(ZI)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, p1, p2}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 11
    return-void
.end method

.method public V0(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 11
    return-void
.end method

.method public X0(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0xb

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, p1, v2}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 13
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0x16

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 8
    return-void
.end method

.method public a1(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 13
    return-void
.end method

.method public b(Landroidx/media3/exoplayer/Renderer;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v0, 0x1a

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 8
    return-void
.end method

.method public declared-synchronized c(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 21
    .line 22
    const/16 v1, 0xe

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    .line 36
    .line 37
    const-string v1, "Ignoring messages sent after release."

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlayerMessage;->k(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public d(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 12
    return-void
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 6
    return-void
.end method

.method public h0(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 12
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    .line 2
    const-string v1, "Playback error"

    .line 3
    .line 4
    const-string v2, "ExoPlayerImplInternal"

    .line 5
    .line 6
    const/16 v3, 0x3e8

    .line 7
    const/4 v11, 0x0

    .line 8
    const/4 v12, 0x1

    .line 9
    .line 10
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    .line 13
    packed-switch v4, :pswitch_data_0

    .line 14
    return v11

    .line 15
    .line 16
    .line 17
    :pswitch_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r0()V

    .line 18
    .line 19
    goto/16 :goto_f

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    :catch_1
    move-exception v0

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    :catch_2
    move-exception v0

    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    :catch_3
    move-exception v0

    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    :catch_4
    move-exception v0

    .line 33
    .line 34
    goto/16 :goto_9

    .line 35
    :catch_5
    move-exception v0

    .line 36
    .line 37
    goto/16 :goto_c

    .line 38
    :catch_6
    move-exception v0

    .line 39
    .line 40
    goto/16 :goto_d

    .line 41
    .line 42
    .line 43
    :pswitch_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()V

    .line 44
    .line 45
    goto/16 :goto_f

    .line 46
    .line 47
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    if-ne v0, v12, :cond_0

    .line 50
    move v0, v12

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v0, v11

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R0(Z)V

    .line 56
    .line 57
    goto/16 :goto_f

    .line 58
    .line 59
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    move v0, v12

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move v0, v11

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S0(Z)V

    .line 68
    .line 69
    goto/16 :goto_f

    .line 70
    .line 71
    .line 72
    :pswitch_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0()V

    .line 73
    .line 74
    goto/16 :goto_f

    .line 75
    .line 76
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c1(Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 82
    .line 83
    goto/16 :goto_f

    .line 84
    .line 85
    :pswitch_6
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 88
    .line 89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v4, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n0(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 95
    .line 96
    goto/16 :goto_f

    .line 97
    .line 98
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    .line 104
    .line 105
    goto/16 :goto_f

    .line 106
    .line 107
    :pswitch_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    .line 110
    .line 111
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    .line 115
    .line 116
    goto/16 :goto_f

    .line 117
    .line 118
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    .line 124
    .line 125
    goto/16 :goto_f

    .line 126
    .line 127
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v0, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K(Landroidx/media3/common/PlaybackParameters;Z)V

    .line 133
    .line 134
    goto/16 :goto_f

    .line 135
    .line 136
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 142
    .line 143
    goto/16 :goto_f

    .line 144
    .line 145
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    .line 148
    .line 149
    .line 150
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H0(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 151
    .line 152
    goto/16 :goto_f

    .line 153
    .line 154
    :pswitch_d
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 155
    .line 156
    if-eqz v4, :cond_2

    .line 157
    move v4, v12

    .line 158
    goto :goto_2

    .line 159
    :cond_2
    move v4, v11

    .line 160
    .line 161
    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, v4, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 167
    .line 168
    goto/16 :goto_f

    .line 169
    .line 170
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 171
    .line 172
    if-eqz v0, :cond_3

    .line 173
    move v0, v12

    .line 174
    goto :goto_3

    .line 175
    :cond_3
    move v0, v11

    .line 176
    .line 177
    .line 178
    :goto_3
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b1(Z)V

    .line 179
    .line 180
    goto/16 :goto_f

    .line 181
    .line 182
    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 183
    .line 184
    .line 185
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y0(I)V

    .line 186
    .line 187
    goto/16 :goto_f

    .line 188
    .line 189
    .line 190
    :pswitch_10
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q0()V

    .line 191
    .line 192
    goto/16 :goto_f

    .line 193
    .line 194
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 197
    .line 198
    .line 199
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 200
    .line 201
    goto/16 :goto_f

    .line 202
    .line 203
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 209
    .line 210
    goto/16 :goto_f

    .line 211
    .line 212
    .line 213
    :pswitch_13
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l0()V

    .line 214
    return v12

    .line 215
    .line 216
    .line 217
    :pswitch_14
    invoke-direct {p0, v11, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l1(ZZ)V

    .line 218
    .line 219
    goto/16 :goto_f

    .line 220
    .line 221
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Landroidx/media3/exoplayer/SeekParameters;

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z0(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 227
    .line 228
    goto/16 :goto_f

    .line 229
    .line 230
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    .line 233
    .line 234
    .line 235
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W0(Landroidx/media3/common/PlaybackParameters;)V

    .line 236
    .line 237
    goto/16 :goto_f

    .line 238
    .line 239
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    .line 245
    .line 246
    goto/16 :goto_f

    .line 247
    .line 248
    .line 249
    :pswitch_18
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p()V

    .line 250
    .line 251
    goto/16 :goto_f

    .line 252
    .line 253
    :pswitch_19
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 254
    .line 255
    if-eqz v4, :cond_4

    .line 256
    move v4, v12

    .line 257
    goto :goto_4

    .line 258
    :cond_4
    move v4, v11

    .line 259
    .line 260
    :goto_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 261
    .line 262
    .line 263
    invoke-direct {p0, v4, v0, v12, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U0(ZIZI)V

    .line 264
    .line 265
    goto/16 :goto_f

    .line 266
    .line 267
    .line 268
    :pswitch_1a
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .line 270
    goto/16 :goto_f

    .line 271
    .line 272
    :goto_5
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 273
    .line 274
    if-nez v4, :cond_5

    .line 275
    .line 276
    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    .line 277
    .line 278
    if-eqz v4, :cond_6

    .line 279
    .line 280
    :cond_5
    const/16 v3, 0x3ec

    .line 281
    .line 282
    .line 283
    :cond_6
    invoke-static {v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->k(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 284
    move-result-object v0

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    invoke-direct {p0, v12, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l1(ZZ)V

    .line 291
    .line 292
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 299
    .line 300
    goto/16 :goto_f

    .line 301
    .line 302
    :goto_6
    const/16 v1, 0x7d0

    .line 303
    .line 304
    .line 305
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Ljava/io/IOException;I)V

    .line 306
    .line 307
    goto/16 :goto_f

    .line 308
    .line 309
    :goto_7
    const/16 v1, 0x3ea

    .line 310
    .line 311
    .line 312
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Ljava/io/IOException;I)V

    .line 313
    .line 314
    goto/16 :goto_f

    .line 315
    .line 316
    :goto_8
    iget v1, v0, Landroidx/media3/datasource/DataSourceException;->reason:I

    .line 317
    .line 318
    .line 319
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Ljava/io/IOException;I)V

    .line 320
    .line 321
    goto/16 :goto_f

    .line 322
    .line 323
    :goto_9
    iget v1, v0, Landroidx/media3/common/ParserException;->dataType:I

    .line 324
    .line 325
    if-ne v1, v12, :cond_8

    .line 326
    .line 327
    iget-boolean v1, v0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    .line 328
    .line 329
    if-eqz v1, :cond_7

    .line 330
    .line 331
    const/16 v1, 0xbb9

    .line 332
    :goto_a
    move v3, v1

    .line 333
    goto :goto_b

    .line 334
    .line 335
    :cond_7
    const/16 v1, 0xbbb

    .line 336
    goto :goto_a

    .line 337
    :cond_8
    const/4 v2, 0x4

    .line 338
    .line 339
    if-ne v1, v2, :cond_a

    .line 340
    .line 341
    iget-boolean v1, v0, Landroidx/media3/common/ParserException;->contentIsMalformed:Z

    .line 342
    .line 343
    if-eqz v1, :cond_9

    .line 344
    .line 345
    const/16 v1, 0xbba

    .line 346
    goto :goto_a

    .line 347
    .line 348
    :cond_9
    const/16 v1, 0xbbc

    .line 349
    goto :goto_a

    .line 350
    .line 351
    .line 352
    :cond_a
    :goto_b
    invoke-direct {p0, v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Ljava/io/IOException;I)V

    .line 353
    .line 354
    goto/16 :goto_f

    .line 355
    .line 356
    :goto_c
    iget v1, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    .line 357
    .line 358
    .line 359
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F(Ljava/io/IOException;I)V

    .line 360
    .line 361
    goto/16 :goto_f

    .line 362
    .line 363
    :goto_d
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 364
    .line 365
    if-ne v3, v12, :cond_b

    .line 366
    .line 367
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 371
    move-result-object v3

    .line 372
    .line 373
    if-eqz v3, :cond_b

    .line 374
    .line 375
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 376
    .line 377
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->g(Landroidx/media3/common/MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 381
    move-result-object v0

    .line 382
    .line 383
    :cond_b
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    .line 384
    .line 385
    if-eqz v3, :cond_c

    .line 386
    .line 387
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 388
    .line 389
    if-nez v3, :cond_c

    .line 390
    .line 391
    const-string v1, "Recoverable renderer error"

    .line 392
    .line 393
    .line 394
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    .line 396
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 397
    .line 398
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 399
    .line 400
    const/16 v2, 0x19

    .line 401
    .line 402
    .line 403
    invoke-interface {v1, v2, v0}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 404
    move-result-object v0

    .line 405
    .line 406
    .line 407
    invoke-interface {v1, v0}, Landroidx/media3/common/util/HandlerWrapper;->c(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    .line 408
    goto :goto_f

    .line 409
    .line 410
    :cond_c
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 411
    .line 412
    if-eqz v3, :cond_d

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 416
    .line 417
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 418
    .line 419
    .line 420
    :cond_d
    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    .line 422
    iget v1, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 423
    .line 424
    if-ne v1, v12, :cond_f

    .line 425
    .line 426
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 430
    move-result-object v1

    .line 431
    .line 432
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 436
    move-result-object v2

    .line 437
    .line 438
    if-eq v1, v2, :cond_f

    .line 439
    .line 440
    :goto_e
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 444
    move-result-object v1

    .line 445
    .line 446
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 450
    move-result-object v2

    .line 451
    .line 452
    if-eq v1, v2, :cond_e

    .line 453
    .line 454
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->b()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 458
    goto :goto_e

    .line 459
    .line 460
    :cond_e
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->queue:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 464
    move-result-object v1

    .line 465
    .line 466
    .line 467
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-result-object v1

    .line 469
    .line 470
    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 471
    .line 472
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->info:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 473
    .line 474
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 475
    .line 476
    iget-wide v7, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 477
    .line 478
    iget-wide v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 479
    const/4 v9, 0x1

    .line 480
    const/4 v10, 0x0

    .line 481
    move-object v1, p0

    .line 482
    move-wide v3, v7

    .line 483
    .line 484
    .line 485
    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 486
    move-result-object v1

    .line 487
    .line 488
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 489
    .line 490
    .line 491
    :cond_f
    invoke-direct {p0, v12, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l1(ZZ)V

    .line 492
    .line 493
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 497
    move-result-object v0

    .line 498
    .line 499
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 500
    .line 501
    .line 502
    :goto_f
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W()V

    .line 503
    return v12

    .line 504
    nop

    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 11
    return-void
.end method

.method public declared-synchronized k0()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 21
    const/4 v1, 0x7

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 25
    .line 26
    new-instance v0, Landroidx/media3/exoplayer/q1;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/q1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    .line 30
    .line 31
    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t1(Lcom/google/common/base/u;J)V

    .line 35
    .line 36
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    .line 38
    return v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    monitor-exit p0

    .line 42
    const/4 v0, 0x1

    .line 43
    return v0

    .line 44
    :goto_1
    monitor-exit p0

    .line 45
    throw v0
.end method

.method public k1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 11
    return-void
.end method

.method public l(ILjava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    new-instance v8, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    .line 5
    const/4 v4, -0x1

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v1, v8

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Landroidx/media3/exoplayer/source/ShuffleOrder;IJLandroidx/media3/exoplayer/ExoPlayerImplInternal$1;)V

    .line 18
    .line 19
    const/16 p2, 0x12

    .line 20
    const/4 p3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p2, p1, p3, v8}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 28
    return-void
.end method

.method public o0(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0x14

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 12
    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 12
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3
    .line 4
    const/16 v1, 0xa

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 8
    return-void
.end method

.method public u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    return-void
.end method
