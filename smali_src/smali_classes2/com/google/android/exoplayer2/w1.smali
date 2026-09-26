.class final Lcom/google/android/exoplayer2/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/y$a;
.implements Lcom/google/android/exoplayer2/trackselection/b0$a;
.implements Lcom/google/android/exoplayer2/u2$d;
.implements Lcom/google/android/exoplayer2/l$a;
.implements Lcom/google/android/exoplayer2/h3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/w1$c;,
        Lcom/google/android/exoplayer2/w1$b;,
        Lcom/google/android/exoplayer2/w1$d;,
        Lcom/google/android/exoplayer2/w1$g;,
        Lcom/google/android/exoplayer2/w1$h;,
        Lcom/google/android/exoplayer2/w1$f;,
        Lcom/google/android/exoplayer2/w1$e;
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

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

.field private final clock:Lcom/google/android/exoplayer2/util/d;

.field private deliverPendingMessageAtStartPositionRequired:Z

.field private final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

.field private enabledRendererCount:I

.field private foregroundMode:Z

.field private final handler:Lcom/google/android/exoplayer2/util/p;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isRebuffering:Z

.field private final livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

.field private final loadControl:Lcom/google/android/exoplayer2/g2;

.field private final mediaClock:Lcom/google/android/exoplayer2/l;

.field private final mediaSourceList:Lcom/google/android/exoplayer2/u2;

.field private nextPendingMessageIndexHint:I

.field private offloadSchedulingEnabled:Z

.field private pauseAtEndOfWindow:Z

.field private pendingInitialSeekPosition:Lcom/google/android/exoplayer2/w1$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/w1$d;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPauseAtEndOfPeriod:Z

.field private pendingRecoverableRendererError:Lcom/google/android/exoplayer2/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final period:Lcom/google/android/exoplayer2/z3$b;

.field private playbackInfo:Lcom/google/android/exoplayer2/a3;

.field private playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/w1$f;

.field private final playbackLooper:Landroid/os/Looper;

.field private playbackMaybeBecameStuckAtMs:J

.field private final queue:Lcom/google/android/exoplayer2/r2;

.field private final releaseTimeoutMs:J

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/o3;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/m3;

.field private final renderersToReset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/m3;",
            ">;"
        }
    .end annotation
.end field

.field private repeatMode:I

.field private requestForRendererSleep:Z

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Lcom/google/android/exoplayer2/r3;

.field private setForegroundModeTimeoutMs:J

.field private shouldContinueLoading:Z

.field private shuffleModeEnabled:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

.field private final window:Lcom/google/android/exoplayer2/z3$d;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/m3;Lcom/google/android/exoplayer2/trackselection/b0;Lcom/google/android/exoplayer2/trackselection/c0;Lcom/google/android/exoplayer2/g2;Lcom/google/android/exoplayer2/upstream/e;IZLcom/google/android/exoplayer2/analytics/a;Lcom/google/android/exoplayer2/r3;Lcom/google/android/exoplayer2/f2;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/w1$f;Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    iput-object v9, v0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/w1$f;

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    iput-object v2, v0, Lcom/google/android/exoplayer2/w1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    move-object v9, p3

    iput-object v9, v0, Lcom/google/android/exoplayer2/w1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    move-object/from16 v10, p4

    iput-object v10, v0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    iput-object v3, v0, Lcom/google/android/exoplayer2/w1;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    move/from16 v11, p6

    iput v11, v0, Lcom/google/android/exoplayer2/w1;->repeatMode:I

    move/from16 v11, p7

    iput-boolean v11, v0, Lcom/google/android/exoplayer2/w1;->shuffleModeEnabled:Z

    move-object/from16 v11, p9

    iput-object v11, v0, Lcom/google/android/exoplayer2/w1;->seekParameters:Lcom/google/android/exoplayer2/r3;

    move-object/from16 v11, p10

    iput-object v11, v0, Lcom/google/android/exoplayer2/w1;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    iput-wide v5, v0, Lcom/google/android/exoplayer2/w1;->releaseTimeoutMs:J

    iput-wide v5, v0, Lcom/google/android/exoplayer2/w1;->setForegroundModeTimeoutMs:J

    move/from16 v5, p13

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/w1;->pauseAtEndOfWindow:Z

    iput-object v7, v0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Lcom/google/android/exoplayer2/w1;->playbackMaybeBecameStuckAtMs:J

    .line 2
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/g2;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/w1;->backBufferDurationUs:J

    .line 3
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplayer2/g2;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/w1;->retainBackBufferFromKeyframe:Z

    .line 4
    invoke-static {p3}, Lcom/google/android/exoplayer2/a3;->j(Lcom/google/android/exoplayer2/trackselection/c0;)Lcom/google/android/exoplayer2/a3;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 5
    new-instance v6, Lcom/google/android/exoplayer2/w1$e;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/w1$e;-><init>(Lcom/google/android/exoplayer2/a3;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 6
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/o3;

    iput-object v5, v0, Lcom/google/android/exoplayer2/w1;->rendererCapabilities:[Lcom/google/android/exoplayer2/o3;

    const/4 v5, 0x0

    .line 7
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 8
    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplayer2/m3;->e(ILcom/google/android/exoplayer2/analytics/t1;)V

    iget-object v6, v0, Lcom/google/android/exoplayer2/w1;->rendererCapabilities:[Lcom/google/android/exoplayer2/o3;

    .line 9
    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplayer2/m3;->getCapabilities()Lcom/google/android/exoplayer2/o3;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/l;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/l;-><init>(Lcom/google/android/exoplayer2/l$a;Lcom/google/android/exoplayer2/util/d;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 12
    invoke-static {}, Lcom/google/common/collect/f1;->h()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->renderersToReset:Ljava/util/Set;

    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/z3$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 14
    new-instance v1, Lcom/google/android/exoplayer2/z3$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 15
    invoke-virtual {p2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/b0;->c(Lcom/google/android/exoplayer2/trackselection/b0$a;Lcom/google/android/exoplayer2/upstream/e;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/w1;->deliverPendingMessageAtStartPositionRequired:Z

    .line 16
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    new-instance v2, Lcom/google/android/exoplayer2/r2;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/r2;-><init>(Lcom/google/android/exoplayer2/analytics/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 18
    new-instance v2, Lcom/google/android/exoplayer2/u2;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplayer2/u2;-><init>(Lcom/google/android/exoplayer2/u2$d;Lcom/google/android/exoplayer2/analytics/a;Landroid/os/Handler;Lcom/google/android/exoplayer2/analytics/t1;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 19
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ExoPlayer:Playback"

    const/16 v3, -0x10

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->playbackLooper:Landroid/os/Looper;

    .line 22
    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/d;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/p;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    return-void
.end method

.method private A()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/w1;->B(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private A0(Lcom/google/android/exoplayer2/w1$h;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
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
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 7
    const/4 v8, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 11
    .line 12
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    iget v4, v11, Lcom/google/android/exoplayer2/w1;->repeatMode:I

    .line 18
    .line 19
    iget-boolean v5, v11, Lcom/google/android/exoplayer2/w1;->shuffleModeEnabled:Z

    .line 20
    .line 21
    iget-object v6, v11, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 22
    .line 23
    iget-object v7, v11, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 24
    .line 25
    move-object/from16 v2, p1

    .line 26
    .line 27
    .line 28
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/w1;->v0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/w1$h;ZIZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Landroid/util/Pair;

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
    iget-object v7, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 42
    .line 43
    iget-object v7, v7, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 44
    .line 45
    .line 46
    invoke-direct {v11, v7}, Lcom/google/android/exoplayer2/w1;->y(Lcom/google/android/exoplayer2/z3;)Landroid/util/Pair;

    .line 47
    move-result-object v7

    .line 48
    .line 49
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v9, Lcom/google/android/exoplayer2/source/b0$b;

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
    iget-object v7, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 62
    .line 63
    iget-object v7, v7, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    iget-wide v9, v0, Lcom/google/android/exoplayer2/w1$h;->windowPositionUs:J

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
    iget-object v14, v11, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 98
    .line 99
    iget-object v15, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 100
    .line 101
    iget-object v15, v15, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplayer2/r2;->B(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/b0$b;

    .line 105
    move-result-object v7

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 109
    move-result v14

    .line 110
    .line 111
    if-eqz v14, :cond_3

    .line 112
    .line 113
    iget-object v4, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 114
    .line 115
    iget-object v4, v4, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 116
    .line 117
    iget-object v5, v7, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v12, v11, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 123
    .line 124
    iget-object v4, v11, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 125
    .line 126
    iget v5, v7, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/z3$b;->n(I)I

    .line 130
    move-result v4

    .line 131
    .line 132
    iget v5, v7, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 133
    .line 134
    if-ne v4, v5, :cond_2

    .line 135
    .line 136
    iget-object v4, v11, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/z3$b;->j()J

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
    iget-wide v14, v0, Lcom/google/android/exoplayer2/w1$h;->windowPositionUs:J

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
    iget-object v7, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 165
    .line 166
    iget-object v7, v7, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 170
    move-result v7

    .line 171
    .line 172
    if-eqz v7, :cond_5

    .line 173
    .line 174
    iput-object v0, v11, Lcom/google/android/exoplayer2/w1;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/w1$h;

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
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 185
    .line 186
    iget v1, v1, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 187
    .line 188
    if-eq v1, v8, :cond_6

    .line 189
    .line 190
    .line 191
    invoke-direct {v11, v0}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/google/android/exoplayer2/w1;->o0(ZZZZ)V

    .line 195
    :goto_5
    move-wide v7, v4

    .line 196
    .line 197
    goto/16 :goto_9

    .line 198
    .line 199
    :cond_7
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 200
    .line 201
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v1}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v1

    .line 206
    .line 207
    if-eqz v1, :cond_a

    .line 208
    .line 209
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    iget-boolean v7, v1, Lcom/google/android/exoplayer2/o2;->prepared:Z

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
    iget-object v1, v1, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 226
    .line 227
    iget-object v2, v11, Lcom/google/android/exoplayer2/w1;->seekParameters:Lcom/google/android/exoplayer2/r3;

    .line 228
    .line 229
    .line 230
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/y;->e(JLcom/google/android/exoplayer2/r3;)J

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
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 237
    move-result-wide v14

    .line 238
    .line 239
    iget-object v3, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 240
    .line 241
    iget-wide v6, v3, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 242
    .line 243
    .line 244
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

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
    iget-object v3, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 252
    .line 253
    iget v6, v3, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget-wide v7, v3, Lcom/google/android/exoplayer2/a3;->positionUs:J
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
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    iput-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 276
    return-void

    .line 277
    :cond_a
    move-wide v1, v4

    .line 278
    .line 279
    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 280
    .line 281
    iget v3, v3, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/google/android/exoplayer2/w1;->B0(Lcom/google/android/exoplayer2/source/b0$b;JZ)J

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
    or-int/2addr v8, v10

    .line 298
    .line 299
    :try_start_2
    iget-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 300
    .line 301
    iget-object v4, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 302
    .line 303
    iget-object v5, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 304
    .line 305
    move-object/from16 v1, p0

    .line 306
    move-object v2, v4

    .line 307
    move-object v3, v9

    .line 308
    move-wide v6, v12

    .line 309
    .line 310
    .line 311
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/w1;->l1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    move v10, v8

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
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    iput-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 328
    return-void

    .line 329
    :catchall_1
    move-exception v0

    .line 330
    move v10, v8

    .line 331
    move-wide v7, v14

    .line 332
    :goto_a
    const/4 v14, 0x2

    .line 333
    .line 334
    move-object/from16 v1, p0

    .line 335
    move-object v2, v9

    .line 336
    move-wide v3, v7

    .line 337
    move-wide v5, v12

    .line 338
    move v9, v10

    .line 339
    move v10, v14

    .line 340
    .line 341
    .line 342
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 343
    move-result-object v1

    .line 344
    .line 345
    iput-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 346
    throw v0
.end method

.method private B(J)J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

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
    iget-wide v3, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/o2;->y(J)J

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

.method private B0(Lcom/google/android/exoplayer2/source/b0$b;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

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
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/w1;->C0(Lcom/google/android/exoplayer2/source/b0$b;JZZ)J

    .line 27
    move-result-wide p1

    .line 28
    return-wide p1
.end method

.method private C(Lcom/google/android/exoplayer2/source/y;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/r2;->v(Lcom/google/android/exoplayer2/source/y;)Z

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/r2;->y(J)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->T()V

    .line 20
    return-void
.end method

.method private C0(Lcom/google/android/exoplayer2/source/b0$b;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->g1()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->isRebuffering:Z

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    if-nez p5, :cond_0

    .line 10
    .line 11
    iget-object p5, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 12
    .line 13
    iget p5, p5, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 14
    const/4 v2, 0x3

    .line 15
    .line 16
    if-ne p5, v2, :cond_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 20
    .line 21
    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

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
    iget-object v3, v2, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplayer2/o2;->z(J)J

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/w1;->l(Lcom/google/android/exoplayer2/m3;)V

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    if-eq p1, v2, :cond_6

    .line 85
    .line 86
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/r2;->b()Lcom/google/android/exoplayer2/o2;

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/r2;->z(Lcom/google/android/exoplayer2/o2;)Z

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    const-wide p4, 0xe8d4a51000L

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p4, p5}, Lcom/google/android/exoplayer2/o2;->x(J)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->p()V

    .line 107
    .line 108
    :cond_7
    if-eqz v2, :cond_a

    .line 109
    .line 110
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/r2;->z(Lcom/google/android/exoplayer2/o2;)Z

    .line 114
    .line 115
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 116
    .line 117
    if-nez p1, :cond_8

    .line 118
    .line 119
    iget-object p1, v2, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/p2;->b(J)Lcom/google/android/exoplayer2/p2;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iput-object p1, v2, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 126
    goto :goto_4

    .line 127
    .line 128
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/o2;->hasEnabledTracks:Z

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    iget-object p1, v2, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/y;->seekToUs(J)J

    .line 136
    move-result-wide p2

    .line 137
    .line 138
    iget-object p1, v2, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 139
    .line 140
    iget-wide p4, p0, Lcom/google/android/exoplayer2/w1;->backBufferDurationUs:J

    .line 141
    .line 142
    sub-long p4, p2, p4

    .line 143
    .line 144
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/w1;->retainBackBufferFromKeyframe:Z

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, p4, p5, v2}, Lcom/google/android/exoplayer2/source/y;->discardBuffer(JZ)V

    .line 148
    .line 149
    .line 150
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/w1;->q0(J)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->T()V

    .line 154
    goto :goto_5

    .line 155
    .line 156
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/r2;->f()V

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/w1;->q0(J)V

    .line 163
    .line 164
    .line 165
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 166
    .line 167
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 171
    return-wide p2
.end method

.method private D(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/q;->h(Ljava/io/IOException;I)Lcom/google/android/exoplayer2/q;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p2, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 15
    .line 16
    iget-object p2, p2, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/q;->f(Lcom/google/android/exoplayer2/source/z;)Lcom/google/android/exoplayer2/q;

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
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p2, p2}, Lcom/google/android/exoplayer2/w1;->f1(ZZ)V

    .line 32
    .line 33
    iget-object p2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/a3;->e(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/a3;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 40
    return-void
.end method

.method private D0(Lcom/google/android/exoplayer2/h3;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h3;->f()J

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->E0(Lcom/google/android/exoplayer2/h3;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v1, Lcom/google/android/exoplayer2/w1$d;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/w1$d;-><init>(Lcom/google/android/exoplayer2/h3;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/w1$d;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/w1$d;-><init>(Lcom/google/android/exoplayer2/h3;)V

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 46
    .line 47
    iget-object v4, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 48
    .line 49
    iget v5, p0, Lcom/google/android/exoplayer2/w1;->repeatMode:I

    .line 50
    .line 51
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/w1;->shuffleModeEnabled:Z

    .line 52
    .line 53
    iget-object v7, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 54
    .line 55
    iget-object v8, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 56
    move-object v2, v0

    .line 57
    move-object v3, v4

    .line 58
    .line 59
    .line 60
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/w1;->s0(Lcom/google/android/exoplayer2/w1$d;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;IZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/h3;->k(Z)V

    .line 79
    :goto_0
    return-void
.end method

.method private E(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 18
    .line 19
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/a3;->b(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/a3;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-wide v3, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->i()J

    .line 48
    move-result-wide v3

    .line 49
    .line 50
    :goto_1
    iput-wide v3, v1, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->A()J

    .line 56
    move-result-wide v3

    .line 57
    .line 58
    iput-wide v3, v1, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

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
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->n()Lcom/google/android/exoplayer2/source/h1;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->i1(Lcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;)V

    .line 80
    :cond_4
    return-void
.end method

.method private E0(Lcom/google/android/exoplayer2/h3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h3;->c()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackLooper:Landroid/os/Looper;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->k(Lcom/google/android/exoplayer2/h3;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 14
    .line 15
    iget p1, p1, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 30
    .line 31
    const/16 v1, 0xf

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method private F(Lcom/google/android/exoplayer2/z3;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
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
    iget-object v2, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    iget-object v3, v11, Lcom/google/android/exoplayer2/w1;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/w1$h;

    .line 9
    .line 10
    iget-object v4, v11, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 11
    .line 12
    iget v5, v11, Lcom/google/android/exoplayer2/w1;->repeatMode:I

    .line 13
    .line 14
    iget-boolean v6, v11, Lcom/google/android/exoplayer2/w1;->shuffleModeEnabled:Z

    .line 15
    .line 16
    iget-object v7, v11, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 17
    .line 18
    iget-object v8, v11, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 19
    .line 20
    move-object/from16 v1, p1

    .line 21
    .line 22
    .line 23
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplayer2/w1;->u0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/w1$h;Lcom/google/android/exoplayer2/r2;IZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/w1$g;

    .line 24
    move-result-object v7

    .line 25
    .line 26
    iget-object v8, v7, Lcom/google/android/exoplayer2/w1$g;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 27
    .line 28
    iget-wide v9, v7, Lcom/google/android/exoplayer2/w1$g;->requestedContentPositionUs:J

    .line 29
    .line 30
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/w1$g;->forceBufferingState:Z

    .line 31
    .line 32
    iget-wide v13, v7, Lcom/google/android/exoplayer2/w1$g;->periodPositionUs:J

    .line 33
    .line 34
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    const/4 v15, 0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 47
    .line 48
    iget-wide v1, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 49
    .line 50
    cmp-long v1, v13, v1

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    move/from16 v16, v5

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_1
    :goto_0
    move/from16 v16, v15

    .line 59
    :goto_1
    const/4 v6, 0x0

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
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/w1$g;->endPlayback:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 74
    .line 75
    iget v1, v1, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 76
    .line 77
    if-eq v1, v15, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-direct {v11, v4}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    .line 84
    move/from16 v20, v4

    .line 85
    move v15, v5

    .line 86
    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    .line 90
    :cond_2
    :goto_2
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/google/android/exoplayer2/w1;->o0(ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    :cond_3
    if-nez v16, :cond_4

    .line 93
    .line 94
    :try_start_1
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 95
    .line 96
    :try_start_2
    iget-wide v3, v11, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 97
    .line 98
    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->x()J

    .line 100
    move-result-wide v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    .line 102
    move-object/from16 v2, p1

    .line 103
    const/4 v15, -0x1

    .line 104
    .line 105
    const/16 v20, 0x4

    .line 106
    move v15, v5

    .line 107
    .line 108
    move-wide/from16 v5, v21

    .line 109
    .line 110
    .line 111
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/r2;->F(Lcom/google/android/exoplayer2/z3;JJ)Z

    .line 112
    move-result v0

    .line 113
    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    .line 117
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/w1;->z0(Z)V

    .line 118
    goto :goto_5

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    :goto_3
    const/4 v6, 0x0

    .line 121
    .line 122
    goto/16 :goto_8

    .line 123
    :catchall_2
    move-exception v0

    .line 124
    move v15, v5

    .line 125
    .line 126
    const/16 v20, 0x4

    .line 127
    goto :goto_3

    .line 128
    :catchall_3
    move-exception v0

    .line 129
    .line 130
    move/from16 v20, v4

    .line 131
    move v15, v5

    .line 132
    goto :goto_3

    .line 133
    .line 134
    :cond_4
    move/from16 v20, v4

    .line 135
    move v15, v5

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 139
    move-result v1

    .line 140
    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    :goto_4
    if-eqz v1, :cond_6

    .line 150
    .line 151
    iget-object v2, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 152
    .line 153
    iget-object v2, v2, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v2

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    iget-object v2, v11, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 162
    .line 163
    iget-object v3, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/r2;->r(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/p2;)Lcom/google/android/exoplayer2/p2;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    iput-object v2, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o2;->A()V

    .line 173
    .line 174
    .line 175
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 176
    move-result-object v1

    .line 177
    goto :goto_4

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/google/android/exoplayer2/w1;->B0(Lcom/google/android/exoplayer2/source/b0$b;JZ)J

    .line 181
    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    move-wide v13, v0

    .line 183
    .line 184
    :cond_7
    :goto_5
    iget-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 185
    .line 186
    iget-object v4, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 187
    .line 188
    iget-object v5, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 189
    .line 190
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/w1$g;->setTargetLiveOffset:Z

    .line 191
    .line 192
    if-eqz v0, :cond_8

    .line 193
    move-wide v6, v13

    .line 194
    goto :goto_6

    .line 195
    .line 196
    :cond_8
    move-wide/from16 v6, v18

    .line 197
    .line 198
    :goto_6
    move-object/from16 v1, p0

    .line 199
    .line 200
    move-object/from16 v2, p1

    .line 201
    move-object v3, v8

    .line 202
    .line 203
    .line 204
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/w1;->l1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)V

    .line 205
    .line 206
    if-nez v16, :cond_9

    .line 207
    .line 208
    iget-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 209
    .line 210
    iget-wide v0, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 211
    .line 212
    cmp-long v0, v9, v0

    .line 213
    .line 214
    if-eqz v0, :cond_c

    .line 215
    .line 216
    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 217
    .line 218
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 219
    .line 220
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 223
    .line 224
    if-eqz v16, :cond_a

    .line 225
    .line 226
    if-eqz p2, :cond_a

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 230
    move-result v2

    .line 231
    .line 232
    if-nez v2, :cond_a

    .line 233
    .line 234
    iget-object v2, v11, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z3$b;->isPlaceholder:Z

    .line 241
    .line 242
    if-nez v0, :cond_a

    .line 243
    .line 244
    const/16 v23, 0x1

    .line 245
    goto :goto_7

    .line 246
    .line 247
    :cond_a
    move/from16 v23, v15

    .line 248
    .line 249
    :goto_7
    iget-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 250
    .line 251
    iget-wide v5, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 255
    move-result v0

    .line 256
    const/4 v1, -0x1

    .line 257
    .line 258
    if-ne v0, v1, :cond_b

    .line 259
    .line 260
    move/from16 v17, v20

    .line 261
    .line 262
    :cond_b
    move-object/from16 v1, p0

    .line 263
    move-object v2, v8

    .line 264
    move-wide v3, v13

    .line 265
    move-wide v7, v5

    .line 266
    move-wide v5, v9

    .line 267
    .line 268
    move/from16 v9, v23

    .line 269
    .line 270
    move/from16 v10, v17

    .line 271
    .line 272
    .line 273
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 274
    move-result-object v0

    .line 275
    .line 276
    iput-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 277
    .line 278
    .line 279
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->p0()V

    .line 280
    .line 281
    iget-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 282
    .line 283
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 284
    .line 285
    .line 286
    invoke-direct {v11, v12, v0}, Lcom/google/android/exoplayer2/w1;->t0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)V

    .line 287
    .line 288
    iget-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/a3;->i(Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/a3;

    .line 292
    move-result-object v0

    .line 293
    .line 294
    iput-object v0, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 298
    move-result v0

    .line 299
    .line 300
    if-nez v0, :cond_d

    .line 301
    const/4 v6, 0x0

    .line 302
    .line 303
    iput-object v6, v11, Lcom/google/android/exoplayer2/w1;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/w1$h;

    .line 304
    .line 305
    .line 306
    :cond_d
    invoke-direct {v11, v15}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 307
    return-void

    .line 308
    .line 309
    :goto_8
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 310
    .line 311
    iget-object v4, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 312
    .line 313
    iget-object v5, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 314
    .line 315
    iget-boolean v1, v7, Lcom/google/android/exoplayer2/w1$g;->setTargetLiveOffset:Z

    .line 316
    .line 317
    if-eqz v1, :cond_e

    .line 318
    .line 319
    move-wide/from16 v18, v13

    .line 320
    .line 321
    :cond_e
    move-object/from16 v1, p0

    .line 322
    .line 323
    move-object/from16 v2, p1

    .line 324
    move-object v3, v8

    .line 325
    move-object v15, v6

    .line 326
    .line 327
    move-wide/from16 v6, v18

    .line 328
    .line 329
    .line 330
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/w1;->l1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)V

    .line 331
    .line 332
    if-nez v16, :cond_f

    .line 333
    .line 334
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 335
    .line 336
    iget-wide v1, v1, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 337
    .line 338
    cmp-long v1, v9, v1

    .line 339
    .line 340
    if-eqz v1, :cond_12

    .line 341
    .line 342
    :cond_f
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 343
    .line 344
    iget-object v2, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 345
    .line 346
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 347
    .line 348
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 349
    .line 350
    if-eqz v16, :cond_10

    .line 351
    .line 352
    if-eqz p2, :cond_10

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 356
    move-result v3

    .line 357
    .line 358
    if-nez v3, :cond_10

    .line 359
    .line 360
    iget-object v3, v11, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 364
    move-result-object v1

    .line 365
    .line 366
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z3$b;->isPlaceholder:Z

    .line 367
    .line 368
    if-nez v1, :cond_10

    .line 369
    .line 370
    const/16 v23, 0x1

    .line 371
    goto :goto_9

    .line 372
    .line 373
    :cond_10
    const/16 v23, 0x0

    .line 374
    .line 375
    :goto_9
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 376
    .line 377
    iget-wide v5, v1, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

    .line 378
    .line 379
    .line 380
    invoke-virtual {v12, v2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 381
    move-result v1

    .line 382
    const/4 v2, -0x1

    .line 383
    .line 384
    if-ne v1, v2, :cond_11

    .line 385
    .line 386
    move/from16 v17, v20

    .line 387
    .line 388
    :cond_11
    move-object/from16 v1, p0

    .line 389
    move-object v2, v8

    .line 390
    move-wide v3, v13

    .line 391
    move-wide v7, v5

    .line 392
    move-wide v5, v9

    .line 393
    .line 394
    move/from16 v9, v23

    .line 395
    .line 396
    move/from16 v10, v17

    .line 397
    .line 398
    .line 399
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 400
    move-result-object v1

    .line 401
    .line 402
    iput-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 403
    .line 404
    .line 405
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->p0()V

    .line 406
    .line 407
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 408
    .line 409
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 410
    .line 411
    .line 412
    invoke-direct {v11, v12, v1}, Lcom/google/android/exoplayer2/w1;->t0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)V

    .line 413
    .line 414
    iget-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/a3;->i(Lcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/a3;

    .line 418
    move-result-object v1

    .line 419
    .line 420
    iput-object v1, v11, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 421
    .line 422
    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 424
    move-result v1

    .line 425
    .line 426
    if-nez v1, :cond_13

    .line 427
    .line 428
    iput-object v15, v11, Lcom/google/android/exoplayer2/w1;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/w1$h;

    .line 429
    :cond_13
    const/4 v1, 0x0

    .line 430
    .line 431
    .line 432
    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 433
    throw v0
.end method

.method private F0(Lcom/google/android/exoplayer2/h3;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h3;->c()Landroid/os/Looper;

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
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/h3;->k(Z)V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/util/d;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/p;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    new-instance v1, Lcom/google/android/exoplayer2/u1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/u1;-><init>(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/h3;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method

.method private G(Lcom/google/android/exoplayer2/source/y;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/r2;->v(Lcom/google/android/exoplayer2/source/y;)Z

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v0, v0, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/o2;->p(FLcom/google/android/exoplayer2/z3;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o2;->n()Lcom/google/android/exoplayer2/source/h1;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/w1;->i1(Lcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-ne p1, v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 52
    .line 53
    iget-wide v0, v0, Lcom/google/android/exoplayer2/p2;->startPositionUs:J

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/w1;->q0(J)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->p()V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 66
    .line 67
    iget-wide v7, p1, Lcom/google/android/exoplayer2/p2;->startPositionUs:J

    .line 68
    .line 69
    iget-wide v5, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x5

    .line 72
    move-object v1, p0

    .line 73
    move-wide v3, v7

    .line 74
    .line 75
    .line 76
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->T()V

    .line 83
    return-void
.end method

.method private G0(J)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-interface {v3}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplayer2/w1;->H0(Lcom/google/android/exoplayer2/m3;J)V

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

.method private H(Lcom/google/android/exoplayer2/c3;FZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
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
    iget-object p3, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 7
    const/4 p4, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 11
    .line 12
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/a3;->f(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/a3;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 19
    .line 20
    :cond_1
    iget p3, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/w1;->m1(F)V

    .line 24
    .line 25
    iget-object p3, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    iget v2, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplayer2/m3;->d(FF)V

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

.method private H0(Lcom/google/android/exoplayer2/m3;J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/m3;->setCurrentStreamFinal()V

    .line 4
    .line 5
    instance-of v0, p1, Lcom/google/android/exoplayer2/text/q;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/exoplayer2/text/q;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/text/q;->J(J)V

    .line 13
    :cond_0
    return-void
.end method

.method private I(Lcom/google/android/exoplayer2/c3;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/w1;->H(Lcom/google/android/exoplayer2/c3;FZZ)V

    .line 7
    return-void
.end method

.method private I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->foregroundMode:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/w1;->foregroundMode:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v2}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->renderersToReset:Ljava/util/Set;

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
    invoke-interface {v2}, Lcom/google/android/exoplayer2/m3;->reset()V

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

.method private J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;
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
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/w1;->deliverPendingMessageAtStartPositionRequired:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 11
    .line 12
    iget-wide v3, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 13
    .line 14
    cmp-long v1, p2, v3

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

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
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/w1;->deliverPendingMessageAtStartPositionRequired:Z

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->p0()V

    .line 36
    .line 37
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 38
    .line 39
    iget-object v3, v1, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 40
    .line 41
    iget-object v4, v1, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 44
    .line 45
    iget-object v7, v0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/u2;->s()Z

    .line 49
    move-result v7

    .line 50
    .line 51
    if-eqz v7, :cond_5

    .line 52
    .line 53
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    sget-object v3, Lcom/google/android/exoplayer2/source/h1;->EMPTY:Lcom/google/android/exoplayer2/source/h1;

    .line 62
    goto :goto_2

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o2;->n()Lcom/google/android/exoplayer2/source/h1;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    :goto_2
    if-nez v1, :cond_3

    .line 69
    .line 70
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    :goto_3
    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/w1;->t([Lcom/google/android/exoplayer2/trackselection/s;)Lcom/google/common/collect/a0;

    .line 81
    move-result-object v7

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-object v8, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 86
    .line 87
    iget-wide v9, v8, Lcom/google/android/exoplayer2/p2;->requestedContentPositionUs:J

    .line 88
    .line 89
    cmp-long v9, v9, v5

    .line 90
    .line 91
    if-eqz v9, :cond_4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplayer2/p2;->a(J)Lcom/google/android/exoplayer2/p2;

    .line 95
    move-result-object v8

    .line 96
    .line 97
    iput-object v8, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

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
    iget-object v7, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 104
    .line 105
    iget-object v7, v7, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v7

    .line 110
    .line 111
    if-nez v7, :cond_6

    .line 112
    .line 113
    sget-object v1, Lcom/google/android/exoplayer2/source/h1;->EMPTY:Lcom/google/android/exoplayer2/source/h1;

    .line 114
    .line 115
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

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
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 131
    .line 132
    move/from16 v3, p9

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/w1$e;->e(I)V

    .line 136
    .line 137
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 138
    .line 139
    .line 140
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->A()J

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
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/a3;->c(Lcom/google/android/exoplayer2/source/b0$b;JJJJLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;)Lcom/google/android/exoplayer2/a3;

    .line 152
    move-result-object v1

    .line 153
    return-object v1
.end method

.method private J0(Lcom/google/android/exoplayer2/w1$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->a(Lcom/google/android/exoplayer2/w1$b;)I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/exoplayer2/w1$h;

    .line 16
    .line 17
    new-instance v1, Lcom/google/android/exoplayer2/i3;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->b(Lcom/google/android/exoplayer2/w1$b;)Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->c(Lcom/google/android/exoplayer2/w1$b;)Lcom/google/android/exoplayer2/source/y0;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/i3;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/y0;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->a(Lcom/google/android/exoplayer2/w1$b;)I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->d(Lcom/google/android/exoplayer2/w1$b;)J

    .line 36
    move-result-wide v3

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/w1$h;-><init>(Lcom/google/android/exoplayer2/z3;IJ)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/exoplayer2/w1;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/w1$h;

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->b(Lcom/google/android/exoplayer2/w1$b;)Ljava/util/List;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->c(Lcom/google/android/exoplayer2/w1$b;)Lcom/google/android/exoplayer2/source/y0;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/u2;->C(Ljava/util/List;Lcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;

    .line 55
    move-result-object p1

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->F(Lcom/google/android/exoplayer2/z3;Z)V

    .line 60
    return-void
.end method

.method private K(Lcom/google/android/exoplayer2/m3;Lcom/google/android/exoplayer2/o2;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object p2, p2, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 7
    .line 8
    iget-boolean p2, p2, Lcom/google/android/exoplayer2/p2;->isFollowedByTransitionToSameStream:Z

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-boolean p2, v0, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    instance-of p2, p1, Lcom/google/android/exoplayer2/text/q;

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    instance-of p2, p1, Lcom/google/android/exoplayer2/metadata/a;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/google/android/exoplayer2/m3;->c()J

    .line 26
    move-result-wide p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->m()J

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

.method private L()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/o2;->prepared:Z

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    iget-object v4, v0, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

    .line 23
    .line 24
    aget-object v4, v4, v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

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
    invoke-interface {v3}, Lcom/google/android/exoplayer2/m3;->hasReadStreamToEnd()Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/w1;->K(Lcom/google/android/exoplayer2/m3;Lcom/google/android/exoplayer2/o2;)Z

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

.method private L0(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->offloadSchedulingEnabled:Z

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/w1;->offloadSchedulingEnabled:Z

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 12
    .line 13
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 22
    :cond_1
    return-void
.end method

.method private static M(ZLcom/google/android/exoplayer2/source/b0$b;JLcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3$b;J)Z
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
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p2, p4, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 22
    move-result p0

    .line 23
    const/4 p2, 0x1

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    iget p0, p1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/z3$b;->t(I)Z

    .line 31
    move-result p0

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    iget p0, p1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 36
    .line 37
    iget p3, p1, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplayer2/z3$b;->k(II)I

    .line 41
    move-result p0

    .line 42
    const/4 p3, 0x4

    .line 43
    .line 44
    if-eq p0, p3, :cond_1

    .line 45
    .line 46
    iget p0, p1, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 47
    .line 48
    iget p1, p1, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplayer2/z3$b;->k(II)I

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
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    iget p0, p4, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/z3$b;->t(I)Z

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

.method private M0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/w1;->pauseAtEndOfWindow:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->p0()V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/w1;->pendingPauseAtEndOfPeriod:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->z0(Z)V

    .line 28
    const/4 p1, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method private N()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->k()J

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

.method private static O(Lcom/google/android/exoplayer2/m3;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/m3;->getState()I

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

.method private O0(ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 6
    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/w1$e;->c(I)V

    .line 11
    .line 12
    iget-object p3, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/a3;->d(ZI)Lcom/google/android/exoplayer2/a3;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iput-object p2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 19
    const/4 p2, 0x0

    .line 20
    .line 21
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/w1;->isRebuffering:Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->d0(Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->a1()Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->g1()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->k1()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 40
    .line 41
    iget p1, p1, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->d1()V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    if-ne p1, p3, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method private P()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 9
    .line 10
    iget-wide v1, v1, Lcom/google/android/exoplayer2/p2;->durationUs:J

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/o2;->prepared:Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 26
    .line 27
    iget-wide v3, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 28
    .line 29
    cmp-long v0, v3, v1

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->a1()Z

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

.method private static Q(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/z3$b;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/z3$b;->isPlaceholder:Z

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

.method private Q0(Lcom/google/android/exoplayer2/c3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l;->b(Lcom/google/android/exoplayer2/c3;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->I(Lcom/google/android/exoplayer2/c3;Z)V

    .line 16
    return-void
.end method

.method private synthetic R()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->released:Z

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private synthetic S(Lcom/google/android/exoplayer2/h3;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->k(Lcom/google/android/exoplayer2/h3;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/q; {:try_start_0 .. :try_end_0} :catch_0

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
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

.method private S0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/w1;->repeatMode:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/r2;->G(Lcom/google/android/exoplayer2/z3;I)Z

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->z0(Z)V

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 23
    return-void
.end method

.method private T()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->Z0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->shouldContinueLoading:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-wide v1, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/o2;->d(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->h1()V

    .line 23
    return-void
.end method

.method private T0(Lcom/google/android/exoplayer2/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->seekParameters:Lcom/google/android/exoplayer2/r3;

    return-void
.end method

.method private U()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w1$e;->d(Lcom/google/android/exoplayer2/a3;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1$e;->a(Lcom/google/android/exoplayer2/w1$e;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/w1$f;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/w1$f;->a(Lcom/google/android/exoplayer2/w1$e;)V

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/exoplayer2/w1$e;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/w1$e;-><init>(Lcom/google/android/exoplayer2/a3;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 32
    :cond_0
    return-void
.end method

.method private V(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->deliverPendingMessageAtStartPositionRequired:Z

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->deliverPendingMessageAtStartPositionRequired:Z

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 33
    .line 34
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 42
    move-result v0

    .line 43
    .line 44
    iget v1, p0, Lcom/google/android/exoplayer2/w1;->nextPendingMessageIndexHint:I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    check-cast v3, Lcom/google/android/exoplayer2/w1$d;

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
    iget v4, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodIndex:I

    .line 74
    .line 75
    if-gt v4, v0, :cond_3

    .line 76
    .line 77
    if-ne v4, v0, :cond_5

    .line 78
    .line 79
    iget-wide v3, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodTimeUs:J

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/w1$d;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    check-cast v3, Lcom/google/android/exoplayer2/w1$d;

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
    iget-object v4, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 126
    .line 127
    if-eqz v4, :cond_8

    .line 128
    .line 129
    iget v4, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodIndex:I

    .line 130
    .line 131
    if-lt v4, v0, :cond_7

    .line 132
    .line 133
    if-ne v4, v0, :cond_8

    .line 134
    .line 135
    iget-wide v4, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodTimeUs:J

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    check-cast v3, Lcom/google/android/exoplayer2/w1$d;

    .line 158
    goto :goto_2

    .line 159
    .line 160
    :cond_8
    :goto_3
    if-eqz v3, :cond_e

    .line 161
    .line 162
    iget-object v4, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 163
    .line 164
    if-eqz v4, :cond_e

    .line 165
    .line 166
    iget v4, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodIndex:I

    .line 167
    .line 168
    if-ne v4, v0, :cond_e

    .line 169
    .line 170
    iget-wide v4, v3, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodTimeUs:J

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
    iget-object v4, v3, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/w1;->E0(Lcom/google/android/exoplayer2/h3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .line 185
    iget-object v4, v3, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/h3;->b()Z

    .line 189
    move-result v4

    .line 190
    .line 191
    if-nez v4, :cond_a

    .line 192
    .line 193
    iget-object v3, v3, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/h3;->j()Z

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 209
    .line 210
    :goto_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v3

    .line 223
    .line 224
    check-cast v3, Lcom/google/android/exoplayer2/w1$d;

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
    iget-object p2, v3, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/h3;->b()Z

    .line 234
    move-result p2

    .line 235
    .line 236
    if-nez p2, :cond_c

    .line 237
    .line 238
    iget-object p2, v3, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/h3;->j()Z

    .line 242
    move-result p2

    .line 243
    .line 244
    if-eqz p2, :cond_d

    .line 245
    .line 246
    :cond_c
    iget-object p2, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iput v1, p0, Lcom/google/android/exoplayer2/w1;->nextPendingMessageIndexHint:I

    .line 253
    :cond_f
    :goto_6
    return-void
.end method

.method private V0(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/w1;->shuffleModeEnabled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/r2;->H(Lcom/google/android/exoplayer2/z3;Z)Z

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
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->z0(Z)V

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 23
    return-void
.end method

.method private W()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/r2;->y(J)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->D()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/r2;->o(JLcom/google/android/exoplayer2/a3;)Lcom/google/android/exoplayer2/p2;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/google/android/exoplayer2/w1;->rendererCapabilities:[Lcom/google/android/exoplayer2/o3;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/google/android/exoplayer2/w1;->trackSelector:Lcom/google/android/exoplayer2/trackselection/b0;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Lcom/google/android/exoplayer2/g2;->getAllocator()Lcom/google/android/exoplayer2/upstream/b;

    .line 39
    move-result-object v7

    .line 40
    .line 41
    iget-object v8, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 42
    .line 43
    iget-object v10, p0, Lcom/google/android/exoplayer2/w1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 44
    move-object v9, v0

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplayer2/r2;->g([Lcom/google/android/exoplayer2/o3;Lcom/google/android/exoplayer2/trackselection/b0;Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/u2;Lcom/google/android/exoplayer2/p2;Lcom/google/android/exoplayer2/trackselection/c0;)Lcom/google/android/exoplayer2/o2;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, v1, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 51
    .line 52
    iget-wide v3, v0, Lcom/google/android/exoplayer2/p2;->startPositionUs:J

    .line 53
    .line 54
    .line 55
    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplayer2/source/y;->f(Lcom/google/android/exoplayer2/source/y$a;J)V

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    if-ne v2, v1, :cond_0

    .line 64
    .line 65
    iget-wide v0, v0, Lcom/google/android/exoplayer2/p2;->startPositionUs:J

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/w1;->q0(J)V

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 73
    .line 74
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->shouldContinueLoading:Z

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->N()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->shouldContinueLoading:Z

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->h1()V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->T()V

    .line 90
    :goto_0
    return-void
.end method

.method private W0(Lcom/google/android/exoplayer2/source/y0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/u2;->D(Lcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;

    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->F(Lcom/google/android/exoplayer2/z3;Z)V

    .line 17
    return-void
.end method

.method private X()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->Y0()Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->U()V

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->b()Lcom/google/android/exoplayer2/o2;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/google/android/exoplayer2/o2;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v3, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 49
    .line 50
    iget v4, v2, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 51
    const/4 v5, -0x1

    .line 52
    .line 53
    if-ne v4, v5, :cond_1

    .line 54
    .line 55
    iget-object v4, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 56
    .line 57
    iget-object v4, v4, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 58
    .line 59
    iget v6, v4, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 60
    .line 61
    if-ne v6, v5, :cond_1

    .line 62
    .line 63
    iget v2, v2, Lcom/google/android/exoplayer2/source/z;->nextAdGroupIndex:I

    .line 64
    .line 65
    iget v4, v4, Lcom/google/android/exoplayer2/source/z;->nextAdGroupIndex:I

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
    iget-object v1, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 73
    .line 74
    iget-object v5, v1, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 75
    .line 76
    iget-wide v10, v1, Lcom/google/android/exoplayer2/p2;->startPositionUs:J

    .line 77
    .line 78
    iget-wide v8, v1, Lcom/google/android/exoplayer2/p2;->requestedContentPositionUs:J

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
    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    iput-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->p0()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->k1()V

    .line 96
    move v1, v3

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method private X0(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 3
    .line 4
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iput-wide v1, p0, Lcom/google/android/exoplayer2/w1;->playbackMaybeBecameStuckAtMs:J

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a3;->g(I)Lcom/google/android/exoplayer2/a3;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 23
    :cond_1
    return-void
.end method

.method private Y()V
    .locals 15

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/w1;->pendingPauseAtEndOfPeriod:Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->L()Z

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    iget-wide v5, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o2;->m()J

    .line 52
    move-result-wide v7

    .line 53
    .line 54
    cmp-long v1, v5, v7

    .line 55
    .line 56
    if-gez v1, :cond_3

    .line 57
    return-void

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iget-object v5, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/r2;->c()Lcom/google/android/exoplayer2/o2;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 71
    move-result-object v6

    .line 72
    .line 73
    iget-object v7, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 74
    .line 75
    iget-object v11, v7, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 76
    .line 77
    iget-object v7, v5, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 78
    .line 79
    iget-object v10, v7, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 82
    .line 83
    iget-object v12, v0, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    move-object v8, p0

    .line 90
    move-object v9, v11

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/w1;->l1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)V

    .line 94
    .line 95
    iget-boolean v0, v5, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 96
    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object v0, v5, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->readDiscontinuity()J

    .line 103
    move-result-wide v7

    .line 104
    .line 105
    cmp-long v0, v7, v3

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/o2;->m()J

    .line 111
    move-result-wide v0

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/w1;->G0(J)V

    .line 115
    return-void

    .line 116
    :cond_4
    move v0, v2

    .line 117
    .line 118
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 119
    array-length v3, v3

    .line 120
    .line 121
    if-ge v0, v3, :cond_8

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/c0;->c(I)Z

    .line 125
    move-result v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/trackselection/c0;->c(I)Z

    .line 129
    move-result v4

    .line 130
    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 134
    .line 135
    aget-object v3, v3, v0

    .line 136
    .line 137
    .line 138
    invoke-interface {v3}, Lcom/google/android/exoplayer2/m3;->isCurrentStreamFinal()Z

    .line 139
    move-result v3

    .line 140
    .line 141
    if-nez v3, :cond_7

    .line 142
    .line 143
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->rendererCapabilities:[Lcom/google/android/exoplayer2/o3;

    .line 144
    .line 145
    aget-object v3, v3, v0

    .line 146
    .line 147
    .line 148
    invoke-interface {v3}, Lcom/google/android/exoplayer2/o3;->getTrackType()I

    .line 149
    move-result v3

    .line 150
    const/4 v7, -0x2

    .line 151
    .line 152
    if-ne v3, v7, :cond_5

    .line 153
    const/4 v3, 0x1

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    move v3, v2

    .line 156
    .line 157
    :goto_1
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/c0;->rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

    .line 158
    .line 159
    aget-object v7, v7, v0

    .line 160
    .line 161
    iget-object v8, v6, Lcom/google/android/exoplayer2/trackselection/c0;->rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

    .line 162
    .line 163
    aget-object v8, v8, v0

    .line 164
    .line 165
    if-eqz v4, :cond_6

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/p3;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v4

    .line 170
    .line 171
    if-eqz v4, :cond_6

    .line 172
    .line 173
    if-eqz v3, :cond_7

    .line 174
    .line 175
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 176
    .line 177
    aget-object v3, v3, v0

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/o2;->m()J

    .line 181
    move-result-wide v7

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v3, v7, v8}, Lcom/google/android/exoplayer2/w1;->H0(Lcom/google/android/exoplayer2/m3;J)V

    .line 185
    .line 186
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 187
    goto :goto_0

    .line 188
    :cond_8
    return-void

    .line 189
    .line 190
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 191
    .line 192
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/p2;->isFinal:Z

    .line 193
    .line 194
    if-nez v1, :cond_a

    .line 195
    .line 196
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/w1;->pendingPauseAtEndOfPeriod:Z

    .line 197
    .line 198
    if-eqz v1, :cond_d

    .line 199
    .line 200
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 201
    array-length v5, v1

    .line 202
    .line 203
    if-ge v2, v5, :cond_d

    .line 204
    .line 205
    aget-object v1, v1, v2

    .line 206
    .line 207
    iget-object v5, v0, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

    .line 208
    .line 209
    aget-object v5, v5, v2

    .line 210
    .line 211
    if-eqz v5, :cond_c

    .line 212
    .line 213
    .line 214
    invoke-interface {v1}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

    .line 215
    move-result-object v6

    .line 216
    .line 217
    if-ne v6, v5, :cond_c

    .line 218
    .line 219
    .line 220
    invoke-interface {v1}, Lcom/google/android/exoplayer2/m3;->hasReadStreamToEnd()Z

    .line 221
    move-result v5

    .line 222
    .line 223
    if-eqz v5, :cond_c

    .line 224
    .line 225
    iget-object v5, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 226
    .line 227
    iget-wide v5, v5, Lcom/google/android/exoplayer2/p2;->durationUs:J

    .line 228
    .line 229
    cmp-long v7, v5, v3

    .line 230
    .line 231
    if-eqz v7, :cond_b

    .line 232
    .line 233
    const-wide/high16 v7, -0x8000000000000000L

    .line 234
    .line 235
    cmp-long v5, v5, v7

    .line 236
    .line 237
    if-eqz v5, :cond_b

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->l()J

    .line 241
    move-result-wide v5

    .line 242
    .line 243
    iget-object v7, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 244
    .line 245
    iget-wide v7, v7, Lcom/google/android/exoplayer2/p2;->durationUs:J

    .line 246
    add-long/2addr v5, v7

    .line 247
    goto :goto_4

    .line 248
    :cond_b
    move-wide v5, v3

    .line 249
    .line 250
    .line 251
    :goto_4
    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/exoplayer2/w1;->H0(Lcom/google/android/exoplayer2/m3;J)V

    .line 252
    .line 253
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 254
    goto :goto_3

    .line 255
    :cond_d
    return-void
.end method

.method private Y0()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->a1()Z

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->pendingPauseAtEndOfPeriod:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-wide v2, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->m()J

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
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/o2;->allRenderersInCorrectState:Z

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_3
    return v1
.end method

.method private Z()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eq v1, v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/o2;->allRenderersInCorrectState:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->m0()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->p()V

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method private Z0()Z
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->N()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->k()J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/w1;->B(J)J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    if-ne v0, v4, :cond_1

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/o2;->y(J)J

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
    iget-wide v4, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/o2;->y(J)J

    .line 44
    move-result-wide v4

    .line 45
    .line 46
    iget-object v0, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 47
    .line 48
    iget-wide v6, v0, Lcom/google/android/exoplayer2/p2;->startPositionUs:J

    .line 49
    sub-long/2addr v4, v6

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget v9, v0, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 61
    move-wide v5, v10

    .line 62
    move-wide v7, v2

    .line 63
    .line 64
    .line 65
    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/g2;->a(JJF)Z

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
    iget-wide v4, p0, Lcom/google/android/exoplayer2/w1;->backBufferDurationUs:J

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
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/w1;->retainBackBufferFromKeyframe:Z

    .line 86
    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v0, v0, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 98
    .line 99
    iget-wide v4, v4, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/exoplayer2/source/y;->discardBuffer(JZ)V

    .line 103
    .line 104
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 105
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iget v9, v0, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 113
    move-wide v5, v10

    .line 114
    move-wide v7, v2

    .line 115
    .line 116
    .line 117
    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/g2;->a(JJF)Z

    .line 118
    move-result v0

    .line 119
    :cond_3
    return v0
.end method

.method private a0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u2;->i()Lcom/google/android/exoplayer2/z3;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/w1;->F(Lcom/google/android/exoplayer2/z3;Z)V

    .line 11
    return-void
.end method

.method private a1()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v0, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

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

.method private b0(Lcom/google/android/exoplayer2/w1$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 9
    .line 10
    iget v1, p1, Lcom/google/android/exoplayer2/w1$c;->fromIndex:I

    .line 11
    .line 12
    iget v2, p1, Lcom/google/android/exoplayer2/w1$c;->toIndex:I

    .line 13
    .line 14
    iget v3, p1, Lcom/google/android/exoplayer2/w1$c;->newFromIndex:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/google/android/exoplayer2/w1$c;->shuffleOrder:Lcom/google/android/exoplayer2/source/y0;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/u2;->v(IIILcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;

    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->F(Lcom/google/android/exoplayer2/z3;Z)V

    .line 25
    return-void
.end method

.method private b1(Z)Z
    .locals 12

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->P()Z

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 16
    .line 17
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    return v2

    .line 22
    .line 23
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v1, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/w1;->c1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/google/android/exoplayer2/f2;->b()J

    .line 45
    move-result-wide v3

    .line 46
    :goto_0
    move-wide v10, v3

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o2;->q()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    iget-object v1, p1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 68
    .line 69
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/p2;->isFinal:Z

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    move v1, v2

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v1, v0

    .line 75
    .line 76
    :goto_2
    iget-object v3, p1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 82
    move-result v3

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    .line 86
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 87
    .line 88
    if-nez p1, :cond_5

    .line 89
    move p1, v2

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move p1, v0

    .line 92
    .line 93
    :goto_3
    if-nez v1, :cond_6

    .line 94
    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    iget-object v5, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->A()J

    .line 101
    move-result-wide v6

    .line 102
    .line 103
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    iget v8, p1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 110
    .line 111
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/w1;->isRebuffering:Z

    .line 112
    .line 113
    .line 114
    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/g2;->c(JFZJ)Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-eqz p1, :cond_7

    .line 118
    :cond_6
    move v0, v2

    .line 119
    :cond_7
    return v0
.end method

.method private c0()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

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
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/s;->a()V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private c1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/z;->b()Z

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    iget p2, p2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$d;->i()Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 40
    .line 41
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iget-wide p1, p1, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

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

.method private d0(Z)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

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
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/s;->c(Z)V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private d1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->isRebuffering:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l;->f()V

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v3}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

    .line 19
    move-result v4

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v3}, Lcom/google/android/exoplayer2/m3;->start()V

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

.method public static synthetic e(Lcom/google/android/exoplayer2/w1;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->R()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private e0()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

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
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/s;->b()V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/w1;Lcom/google/android/exoplayer2/h3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->S(Lcom/google/android/exoplayer2/h3;)V

    return-void
.end method

.method private f1(ZZ)V
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
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/w1;->foregroundMode:Z

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
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/google/android/exoplayer2/w1;->o0(ZZZZ)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/google/android/exoplayer2/g2;->onStopped()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 29
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/w1;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/w1;->requestForRendererSleep:Z

    .line 3
    return p1
.end method

.method private g1()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->g()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v3}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

    .line 17
    move-result v4

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/w1;->r(Lcom/google/android/exoplayer2/m3;)V

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

.method static synthetic h(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/util/p;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    return-object p0
.end method

.method private h0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplayer2/w1;->o0(ZZZZ)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/g2;->onPrepared()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/e;

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/e;->d()Lcom/google/android/exoplayer2/upstream/m0;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/u2;->w(Lcom/google/android/exoplayer2/upstream/m0;)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 49
    return-void
.end method

.method private h1()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/w1;->shouldContinueLoading:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/y;->isLoading()Z

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 27
    .line 28
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 29
    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/a3;->a(Z)Lcom/google/android/exoplayer2/a3;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 37
    :cond_2
    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/w1$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 9
    const/4 v1, -0x1

    .line 10
    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u2;->q()I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->b(Lcom/google/android/exoplayer2/w1$b;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$b;->c(Lcom/google/android/exoplayer2/w1$b;)Lcom/google/android/exoplayer2/source/y0;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/u2;->f(ILjava/util/List;Lcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->F(Lcom/google/android/exoplayer2/z3;Z)V

    .line 32
    return-void
.end method

.method private i1(Lcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/g2;->b([Lcom/google/android/exoplayer2/m3;Lcom/google/android/exoplayer2/source/h1;[Lcom/google/android/exoplayer2/trackselection/s;)V

    .line 10
    return-void
.end method

.method private j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/w1;->z0(Z)V

    .line 5
    return-void
.end method

.method private j0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v1, v0, v1, v0}, Lcom/google/android/exoplayer2/w1;->o0(ZZZZ)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->loadControl:Lcom/google/android/exoplayer2/g2;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/exoplayer2/g2;->onReleased()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 19
    monitor-enter p0

    .line 20
    .line 21
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/w1;->released:Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method

.method private j1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

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
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u2;->s()Z

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->W()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->Y()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->Z()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->X()V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private k(Lcom/google/android/exoplayer2/h3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h3;->j()Z

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h3;->g()Lcom/google/android/exoplayer2/h3$b;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h3;->i()I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h3;->e()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/h3$b;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/h3;->k(Z)V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/h3;->k(Z)V

    .line 32
    throw v1
.end method

.method private k0(IILcom/google/android/exoplayer2/source/y0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfoUpdate:Lcom/google/android/exoplayer2/w1$e;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w1$e;->b(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/u2;->A(IILcom/google/android/exoplayer2/source/y0;)Lcom/google/android/exoplayer2/z3;

    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->F(Lcom/google/android/exoplayer2/z3;Z)V

    .line 17
    return-void
.end method

.method private k1()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

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
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/o2;->prepared:Z

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
    iget-object v1, v0, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/y;->readDiscontinuity()J

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
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/w1;->q0(J)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 38
    .line 39
    iget-wide v0, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 40
    .line 41
    cmp-long v0, v6, v0

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 48
    .line 49
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

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
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/l;->h(Z)J

    .line 77
    move-result-wide v1

    .line 78
    .line 79
    iput-wide v1, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/o2;->y(J)J

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 86
    .line 87
    iget-wide v2, v2, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/w1;->V(JJ)V

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 93
    .line 94
    iput-wide v0, v2, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 95
    .line 96
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->j()Lcom/google/android/exoplayer2/o2;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->i()J

    .line 106
    move-result-wide v2

    .line 107
    .line 108
    iput-wide v2, v1, Lcom/google/android/exoplayer2/a3;->bufferedPositionUs:J

    .line 109
    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->A()J

    .line 114
    move-result-wide v1

    .line 115
    .line 116
    iput-wide v1, v0, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

    .line 117
    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 119
    .line 120
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 121
    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 125
    const/4 v2, 0x3

    .line 126
    .line 127
    if-ne v1, v2, :cond_5

    .line 128
    .line 129
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/w1;->c1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 142
    .line 143
    iget v0, v0, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 144
    .line 145
    const/high16 v1, 0x3f800000    # 1.0f

    .line 146
    .line 147
    cmpl-float v0, v0, v1

    .line 148
    .line 149
    if-nez v0, :cond_5

    .line 150
    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 152
    .line 153
    .line 154
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->u()J

    .line 155
    move-result-wide v1

    .line 156
    .line 157
    .line 158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->A()J

    .line 159
    move-result-wide v3

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/f2;->a(JJ)F

    .line 163
    move-result v0

    .line 164
    .line 165
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    iget v1, v1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 172
    .line 173
    cmpl-float v1, v1, v0

    .line 174
    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 180
    .line 181
    iget-object v2, v2, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/c3;->e(F)Lcom/google/android/exoplayer2/c3;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/l;->b(Lcom/google/android/exoplayer2/c3;)V

    .line 189
    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    iget v1, v1, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/exoplayer2/w1;->H(Lcom/google/android/exoplayer2/c3;FZZ)V

    .line 204
    :cond_5
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/m3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/l;->a(Lcom/google/android/exoplayer2/m3;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->r(Lcom/google/android/exoplayer2/m3;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/m3;->disable()V

    .line 19
    .line 20
    iget p1, p0, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    iput p1, p0, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 25
    return-void
.end method

.method private l1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;J)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->c1(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lcom/google/android/exoplayer2/c3;->DEFAULT:Lcom/google/android/exoplayer2/c3;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 20
    .line 21
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/c3;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p2

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/l;->b(Lcom/google/android/exoplayer2/c3;)V

    .line 37
    :cond_1
    return-void

    .line 38
    .line 39
    :cond_2
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget v0, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/google/android/exoplayer2/z3$d;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/google/android/exoplayer2/i2$g;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/f2;->e(Lcom/google/android/exoplayer2/i2$g;)V

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    .line 74
    cmp-long v2, p5, v0

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-object p3, p0, Lcom/google/android/exoplayer2/w1;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 79
    .line 80
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/w1;->w(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;J)J

    .line 84
    move-result-wide p1

    .line 85
    .line 86
    .line 87
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/f2;->d(J)V

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 96
    move-result p2

    .line 97
    .line 98
    if-nez p2, :cond_4

    .line 99
    .line 100
    iget-object p2, p4, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 101
    .line 102
    iget-object p4, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    iget p2, p2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 109
    .line 110
    iget-object p4, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    iget-object p2, p2, Lcom/google/android/exoplayer2/z3$d;->uid:Ljava/lang/Object;

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const/4 p2, 0x0

    .line 119
    .line 120
    .line 121
    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    move-result p1

    .line 123
    .line 124
    if-nez p1, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 127
    .line 128
    .line 129
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/f2;->d(J)V

    .line 130
    :cond_5
    :goto_2
    return-void
.end method

.method private m()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/d;->uptimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 11
    const/4 v4, 0x2

    .line 12
    .line 13
    .line 14
    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/p;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->j1()V

    .line 18
    .line 19
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 20
    .line 21
    iget v3, v3, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

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
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplayer2/w1;->x0(JJ)V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    const-string v9, "doSomeWork"

    .line 46
    .line 47
    .line 48
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/m0;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->k1()V

    .line 52
    .line 53
    iget-boolean v9, v3, Lcom/google/android/exoplayer2/o2;->prepared:Z

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
    iget-object v9, v3, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 66
    .line 67
    iget-object v15, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 68
    .line 69
    iget-wide v7, v15, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 70
    .line 71
    iget-wide v10, v0, Lcom/google/android/exoplayer2/w1;->backBufferDurationUs:J

    .line 72
    sub-long/2addr v7, v10

    .line 73
    .line 74
    iget-boolean v10, v0, Lcom/google/android/exoplayer2/w1;->retainBackBufferFromKeyframe:Z

    .line 75
    .line 76
    .line 77
    invoke-interface {v9, v7, v8, v10}, Lcom/google/android/exoplayer2/source/y;->discardBuffer(JZ)V

    .line 78
    move v8, v5

    .line 79
    move v9, v8

    .line 80
    move v7, v12

    .line 81
    .line 82
    :goto_0
    iget-object v10, v0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v10}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

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
    iget-wide v4, v0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 97
    .line 98
    .line 99
    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplayer2/m3;->render(JJ)V

    .line 100
    .line 101
    if-eqz v8, :cond_3

    .line 102
    .line 103
    .line 104
    invoke-interface {v10}, Lcom/google/android/exoplayer2/m3;->isEnded()Z

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
    iget-object v4, v3, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

    .line 113
    .line 114
    aget-object v4, v4, v7

    .line 115
    .line 116
    .line 117
    invoke-interface {v10}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

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
    invoke-interface {v10}, Lcom/google/android/exoplayer2/m3;->hasReadStreamToEnd()Z

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
    invoke-interface {v10}, Lcom/google/android/exoplayer2/m3;->isReady()Z

    .line 142
    move-result v4

    .line 143
    .line 144
    if-nez v4, :cond_7

    .line 145
    .line 146
    .line 147
    invoke-interface {v10}, Lcom/google/android/exoplayer2/m3;->isEnded()Z

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
    invoke-interface {v10}, Lcom/google/android/exoplayer2/m3;->maybeThrowStreamError()V

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
    iget-object v4, v3, Lcom/google/android/exoplayer2/o2;->mediaPeriod:Lcom/google/android/exoplayer2/source/y;

    .line 174
    .line 175
    .line 176
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/y;->maybeThrowPrepareError()V

    .line 177
    const/4 v8, 0x1

    .line 178
    const/4 v9, 0x1

    .line 179
    .line 180
    :cond_b
    iget-object v4, v3, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 181
    .line 182
    iget-wide v4, v4, Lcom/google/android/exoplayer2/p2;->durationUs:J

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
    iget-boolean v7, v3, Lcom/google/android/exoplayer2/o2;->prepared:Z

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
    iget-object v7, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 200
    .line 201
    iget-wide v7, v7, Lcom/google/android/exoplayer2/a3;->positionUs:J

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
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/w1;->pendingPauseAtEndOfPeriod:Z

    .line 213
    .line 214
    if-eqz v5, :cond_e

    .line 215
    .line 216
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/w1;->pendingPauseAtEndOfPeriod:Z

    .line 217
    .line 218
    iget-object v5, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 219
    .line 220
    iget v5, v5, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 221
    const/4 v7, 0x5

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v12, v5, v12, v7}, Lcom/google/android/exoplayer2/w1;->O0(ZIZI)V

    .line 225
    :cond_e
    const/4 v5, 0x3

    .line 226
    .line 227
    if-eqz v4, :cond_f

    .line 228
    .line 229
    iget-object v4, v3, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 230
    .line 231
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/p2;->isFinal:Z

    .line 232
    .line 233
    if-eqz v4, :cond_f

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 237
    .line 238
    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->g1()V

    .line 240
    goto :goto_9

    .line 241
    .line 242
    :cond_f
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 243
    .line 244
    iget v4, v4, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 245
    const/4 v7, 0x2

    .line 246
    .line 247
    if-ne v4, v7, :cond_10

    .line 248
    .line 249
    .line 250
    invoke-direct {v0, v9}, Lcom/google/android/exoplayer2/w1;->b1(Z)Z

    .line 251
    move-result v4

    .line 252
    .line 253
    if-eqz v4, :cond_10

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v5}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 257
    const/4 v4, 0x0

    .line 258
    .line 259
    iput-object v4, v0, Lcom/google/android/exoplayer2/w1;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/q;

    .line 260
    .line 261
    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->a1()Z

    .line 263
    move-result v4

    .line 264
    .line 265
    if-eqz v4, :cond_14

    .line 266
    .line 267
    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->d1()V

    .line 269
    goto :goto_9

    .line 270
    .line 271
    :cond_10
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 272
    .line 273
    iget v4, v4, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 274
    .line 275
    if-ne v4, v5, :cond_14

    .line 276
    .line 277
    iget v4, v0, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 278
    .line 279
    if-nez v4, :cond_11

    .line 280
    .line 281
    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->P()Z

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->a1()Z

    .line 292
    move-result v4

    .line 293
    .line 294
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/w1;->isRebuffering:Z

    .line 295
    const/4 v4, 0x2

    .line 296
    .line 297
    .line 298
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/w1;->X0(I)V

    .line 299
    .line 300
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/w1;->isRebuffering:Z

    .line 301
    .line 302
    if-eqz v4, :cond_13

    .line 303
    .line 304
    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->e0()V

    .line 306
    .line 307
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 308
    .line 309
    .line 310
    invoke-interface {v4}, Lcom/google/android/exoplayer2/f2;->c()V

    .line 311
    .line 312
    .line 313
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->g1()V

    .line 314
    .line 315
    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 316
    .line 317
    iget v4, v4, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget-object v7, v0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v7}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

    .line 332
    move-result v7

    .line 333
    .line 334
    if-eqz v7, :cond_15

    .line 335
    .line 336
    iget-object v7, v0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 337
    .line 338
    aget-object v7, v7, v4

    .line 339
    .line 340
    .line 341
    invoke-interface {v7}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

    .line 342
    move-result-object v7

    .line 343
    .line 344
    iget-object v8, v3, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

    .line 345
    .line 346
    aget-object v8, v8, v4

    .line 347
    .line 348
    if-ne v7, v8, :cond_15

    .line 349
    .line 350
    iget-object v7, v0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 351
    .line 352
    aget-object v7, v7, v4

    .line 353
    .line 354
    .line 355
    invoke-interface {v7}, Lcom/google/android/exoplayer2/m3;->maybeThrowStreamError()V

    .line 356
    .line 357
    :cond_15
    add-int/lit8 v4, v4, 0x1

    .line 358
    goto :goto_a

    .line 359
    .line 360
    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 361
    .line 362
    iget-boolean v4, v3, Lcom/google/android/exoplayer2/a3;->isLoading:Z

    .line 363
    .line 364
    if-nez v4, :cond_19

    .line 365
    .line 366
    iget-wide v3, v3, Lcom/google/android/exoplayer2/a3;->totalBufferedDurationUs:J

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->N()Z

    .line 377
    move-result v3

    .line 378
    .line 379
    if-eqz v3, :cond_19

    .line 380
    .line 381
    iget-wide v3, v0, Lcom/google/android/exoplayer2/w1;->playbackMaybeBecameStuckAtMs:J

    .line 382
    .line 383
    cmp-long v3, v3, v13

    .line 384
    .line 385
    if-nez v3, :cond_17

    .line 386
    .line 387
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 388
    .line 389
    .line 390
    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/d;->elapsedRealtime()J

    .line 391
    move-result-wide v3

    .line 392
    .line 393
    iput-wide v3, v0, Lcom/google/android/exoplayer2/w1;->playbackMaybeBecameStuckAtMs:J

    .line 394
    goto :goto_b

    .line 395
    .line 396
    :cond_17
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 397
    .line 398
    .line 399
    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/d;->elapsedRealtime()J

    .line 400
    move-result-wide v3

    .line 401
    .line 402
    iget-wide v7, v0, Lcom/google/android/exoplayer2/w1;->playbackMaybeBecameStuckAtMs:J

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
    iput-wide v13, v0, Lcom/google/android/exoplayer2/w1;->playbackMaybeBecameStuckAtMs:J

    .line 421
    .line 422
    .line 423
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->a1()Z

    .line 424
    move-result v3

    .line 425
    .line 426
    if-eqz v3, :cond_1a

    .line 427
    .line 428
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 429
    .line 430
    iget v3, v3, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/w1;->offloadSchedulingEnabled:Z

    .line 438
    .line 439
    if-eqz v4, :cond_1b

    .line 440
    .line 441
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/w1;->requestForRendererSleep:Z

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
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 451
    .line 452
    iget-boolean v7, v4, Lcom/google/android/exoplayer2/a3;->sleepingForOffload:Z

    .line 453
    .line 454
    if-eq v7, v15, :cond_1c

    .line 455
    .line 456
    .line 457
    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer2/a3;->h(Z)Lcom/google/android/exoplayer2/a3;

    .line 458
    move-result-object v4

    .line 459
    .line 460
    iput-object v4, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 461
    .line 462
    :cond_1c
    iput-boolean v12, v0, Lcom/google/android/exoplayer2/w1;->requestForRendererSleep:Z

    .line 463
    .line 464
    if-nez v15, :cond_20

    .line 465
    .line 466
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 467
    .line 468
    iget v4, v4, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget v3, v0, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 484
    .line 485
    if-eqz v3, :cond_20

    .line 486
    .line 487
    const-wide/16 v3, 0x3e8

    .line 488
    .line 489
    .line 490
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/w1;->x0(JJ)V

    .line 491
    goto :goto_f

    .line 492
    .line 493
    .line 494
    :goto_e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/w1;->x0(JJ)V

    .line 495
    .line 496
    .line 497
    :cond_20
    :goto_f
    invoke-static {}, Lcom/google/android/exoplayer2/util/m0;->c()V

    .line 498
    :cond_21
    :goto_10
    return-void
.end method

.method private m0()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

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
    iget-object v5, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v8}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

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
    invoke-interface {v8}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget-object v6, v0, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

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
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/c0;->c(I)Z

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
    invoke-interface {v8}, Lcom/google/android/exoplayer2/m3;->isCurrentStreamFinal()Z

    .line 54
    move-result v5

    .line 55
    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    iget-object v5, v1, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 59
    .line 60
    aget-object v5, v5, v3

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Lcom/google/android/exoplayer2/w1;->v(Lcom/google/android/exoplayer2/trackselection/s;)[Lcom/google/android/exoplayer2/a2;

    .line 64
    move-result-object v9

    .line 65
    .line 66
    iget-object v5, v0, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

    .line 67
    .line 68
    aget-object v10, v5, v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->m()J

    .line 72
    move-result-wide v11

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->l()J

    .line 76
    move-result-wide v13

    .line 77
    .line 78
    .line 79
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/m3;->g([Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/source/w0;JJ)V

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-interface {v8}, Lcom/google/android/exoplayer2/m3;->isEnded()Z

    .line 84
    move-result v5

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/w1;->l(Lcom/google/android/exoplayer2/m3;)V

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

.method private m1(F)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

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
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/s;->onPlaybackSpeed(F)V

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method private n(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 5
    .line 6
    aget-object v1, v1, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

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
    iget-object v2, v0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/c0;->rendererConfigurations:[Lcom/google/android/exoplayer2/p3;

    .line 39
    .line 40
    aget-object v6, v6, p1

    .line 41
    .line 42
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/c0;->selections:[Lcom/google/android/exoplayer2/trackselection/s;

    .line 43
    .line 44
    aget-object v3, v3, p1

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lcom/google/android/exoplayer2/w1;->v(Lcom/google/android/exoplayer2/trackselection/s;)[Lcom/google/android/exoplayer2/a2;

    .line 48
    move-result-object v7

    .line 49
    .line 50
    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->a1()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 57
    .line 58
    iget v3, v3, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget v3, v0, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 74
    add-int/2addr v3, v5

    .line 75
    .line 76
    iput v3, v0, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 77
    .line 78
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1;->renderersToReset:Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    iget-object v3, v2, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

    .line 84
    .line 85
    aget-object v5, v3, p1

    .line 86
    .line 87
    iget-wide v10, v0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/o2;->m()J

    .line 91
    move-result-wide v12

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/o2;->l()J

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
    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/m3;->h(Lcom/google/android/exoplayer2/p3;[Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/source/w0;JZZJJ)V

    .line 105
    .line 106
    new-instance v2, Lcom/google/android/exoplayer2/w1$a;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/w1$a;-><init>(Lcom/google/android/exoplayer2/w1;)V

    .line 110
    .line 111
    const/16 v3, 0xb

    .line 112
    .line 113
    .line 114
    invoke-interface {v1, v3, v2}, Lcom/google/android/exoplayer2/h3$b;->handleMessage(ILjava/lang/Object;)V

    .line 115
    .line 116
    iget-object v2, v0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/l;->c(Lcom/google/android/exoplayer2/m3;)V

    .line 120
    .line 121
    if-eqz v14, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Lcom/google/android/exoplayer2/m3;->start()V

    .line 125
    :cond_4
    return-void
.end method

.method private n0()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v10, p0

    .line 3
    .line 4
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->getPlaybackParameters()Lcom/google/android/exoplayer2/c3;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v0, v0, Lcom/google/android/exoplayer2/c3;->speed:F

    .line 11
    .line 12
    iget-object v1, v10, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, v10, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

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
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    iget-object v4, v10, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/o2;->v(FLcom/google/android/exoplayer2/z3;)Lcom/google/android/exoplayer2/trackselection/c0;

    .line 39
    move-result-object v13

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v13, v4}, Lcom/google/android/exoplayer2/trackselection/c0;->a(Lcom/google/android/exoplayer2/trackselection/c0;)Z

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
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/r2;->z(Lcom/google/android/exoplayer2/o2;)Z

    .line 65
    move-result v16

    .line 66
    .line 67
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 68
    array-length v0, v0

    .line 69
    .line 70
    new-array v7, v0, [Z

    .line 71
    .line 72
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 73
    .line 74
    iget-wide v14, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 75
    move-object v12, v6

    .line 76
    .line 77
    move-object/from16 v17, v7

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer2/o2;->b(Lcom/google/android/exoplayer2/trackselection/c0;JZ[Z)J

    .line 81
    move-result-wide v12

    .line 82
    .line 83
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 84
    .line 85
    iget v1, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 86
    .line 87
    if-eq v1, v8, :cond_1

    .line 88
    .line 89
    iget-wide v0, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

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
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 101
    .line 102
    iget-wide v4, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 103
    .line 104
    iget-wide v2, v0, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

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
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iput-object v0, v10, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 124
    .line 125
    if-eqz v14, :cond_2

    .line 126
    .line 127
    .line 128
    invoke-direct {v10, v12, v13}, Lcom/google/android/exoplayer2/w1;->q0(J)V

    .line 129
    .line 130
    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    iget-object v1, v10, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

    .line 145
    move-result v2

    .line 146
    .line 147
    aput-boolean v2, v0, v9

    .line 148
    .line 149
    iget-object v3, v11, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

    .line 150
    .line 151
    aget-object v3, v3, v9

    .line 152
    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    .line 156
    invoke-interface {v1}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    if-eq v3, v2, :cond_3

    .line 160
    .line 161
    .line 162
    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/w1;->l(Lcom/google/android/exoplayer2/m3;)V

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
    iget-wide v2, v10, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 170
    .line 171
    .line 172
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/m3;->resetPosition(J)V

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
    invoke-direct {v10, v0}, Lcom/google/android/exoplayer2/w1;->q([Z)V

    .line 179
    :cond_6
    :goto_4
    const/4 v5, 0x1

    .line 180
    goto :goto_5

    .line 181
    .line 182
    :cond_7
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/r2;->z(Lcom/google/android/exoplayer2/o2;)Z

    .line 186
    .line 187
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/o2;->prepared:Z

    .line 188
    .line 189
    if-eqz v0, :cond_6

    .line 190
    .line 191
    iget-object v0, v1, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 192
    .line 193
    iget-wide v2, v0, Lcom/google/android/exoplayer2/p2;->startPositionUs:J

    .line 194
    .line 195
    iget-wide v4, v10, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/o2;->y(J)J

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
    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/google/android/exoplayer2/o2;->a(Lcom/google/android/exoplayer2/trackselection/c0;JZ)J

    .line 208
    goto :goto_4

    .line 209
    .line 210
    .line 211
    :goto_5
    invoke-direct {v10, v5}, Lcom/google/android/exoplayer2/w1;->E(Z)V

    .line 212
    .line 213
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 214
    .line 215
    iget v0, v0, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 216
    const/4 v1, 0x4

    .line 217
    .line 218
    if-eq v0, v1, :cond_8

    .line 219
    .line 220
    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->T()V

    .line 222
    .line 223
    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/w1;->k1()V

    .line 225
    .line 226
    iget-object v0, v10, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 227
    const/4 v1, 0x2

    .line 228
    .line 229
    .line 230
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

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
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o2;->j()Lcom/google/android/exoplayer2/o2;

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

.method private declared-synchronized n1(Lcom/google/common/base/u;J)V
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/d;->elapsedRealtime()J

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/d;->a()V

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
    iget-object p2, p0, Lcom/google/android/exoplayer2/w1;->clock:Lcom/google/android/exoplayer2/util/d;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/d;->elapsedRealtime()J

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

.method private o0(ZZZZ)V
    .locals 28

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/p;->removeMessages(I)V

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    iput-object v2, v1, Lcom/google/android/exoplayer2/w1;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/q;

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/w1;->isRebuffering:Z

    .line 15
    .line 16
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l;->g()V

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v4, 0xe8d4a51000L

    .line 25
    .line 26
    iput-wide v4, v1, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 27
    .line 28
    iget-object v4, v1, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/w1;->l(Lcom/google/android/exoplayer2/m3;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/q; {:try_start_0 .. :try_end_0} :catch_1
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
    invoke-static {v7, v8, v0}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iget-object v4, v1, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    iget-object v8, v1, Lcom/google/android/exoplayer2/w1;->renderersToReset:Ljava/util/Set;

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
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m3;->reset()V
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
    invoke-static {v7, v0, v8}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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
    iput v3, v1, Lcom/google/android/exoplayer2/w1;->enabledRendererCount:I

    .line 86
    .line 87
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 88
    .line 89
    iget-object v4, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 90
    .line 91
    iget-wide v5, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 92
    .line 93
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 104
    .line 105
    iget-object v7, v1, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/w1;->Q(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/z3$b;)Z

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
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 115
    .line 116
    iget-wide v7, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 117
    goto :goto_6

    .line 118
    .line 119
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 120
    .line 121
    iget-wide v7, v0, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 122
    .line 123
    :goto_6
    if-eqz p2, :cond_5

    .line 124
    .line 125
    iput-object v2, v1, Lcom/google/android/exoplayer2/w1;->pendingInitialSeekPosition:Lcom/google/android/exoplayer2/w1$h;

    .line 126
    .line 127
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/w1;->y(Lcom/google/android/exoplayer2/z3;)Landroid/util/Pair;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v4, Lcom/google/android/exoplayer2/source/b0$b;

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
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

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
    move-object/from16 v17, v4

    .line 164
    .line 165
    move-wide/from16 v25, v5

    .line 166
    goto :goto_8

    .line 167
    :cond_5
    move v0, v3

    .line 168
    goto :goto_7

    .line 169
    .line 170
    :goto_8
    iget-object v4, v1, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/r2;->f()V

    .line 174
    .line 175
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/w1;->shouldContinueLoading:Z

    .line 176
    .line 177
    new-instance v3, Lcom/google/android/exoplayer2/a3;

    .line 178
    .line 179
    iget-object v4, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 180
    .line 181
    iget-object v5, v4, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 182
    .line 183
    iget v11, v4, Lcom/google/android/exoplayer2/a3;->playbackState:I

    .line 184
    .line 185
    if-eqz p4, :cond_6

    .line 186
    :goto_9
    move-object v12, v2

    .line 187
    goto :goto_a

    .line 188
    .line 189
    :cond_6
    iget-object v2, v4, Lcom/google/android/exoplayer2/a3;->playbackError:Lcom/google/android/exoplayer2/q;

    .line 190
    goto :goto_9

    .line 191
    :goto_a
    const/4 v13, 0x0

    .line 192
    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    sget-object v2, Lcom/google/android/exoplayer2/source/h1;->EMPTY:Lcom/google/android/exoplayer2/source/h1;

    .line 196
    :goto_b
    move-object v14, v2

    .line 197
    goto :goto_c

    .line 198
    .line 199
    :cond_7
    iget-object v2, v4, Lcom/google/android/exoplayer2/a3;->trackGroups:Lcom/google/android/exoplayer2/source/h1;

    .line 200
    goto :goto_b

    .line 201
    .line 202
    :goto_c
    if-eqz v0, :cond_8

    .line 203
    .line 204
    iget-object v2, v1, Lcom/google/android/exoplayer2/w1;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 205
    :goto_d
    move-object v15, v2

    .line 206
    goto :goto_e

    .line 207
    .line 208
    :cond_8
    iget-object v2, v4, Lcom/google/android/exoplayer2/a3;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/c0;

    .line 209
    goto :goto_d

    .line 210
    .line 211
    :goto_e
    if-eqz v0, :cond_9

    .line 212
    .line 213
    .line 214
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    :goto_f
    move-object/from16 v16, v0

    .line 218
    goto :goto_10

    .line 219
    .line 220
    :cond_9
    iget-object v0, v4, Lcom/google/android/exoplayer2/a3;->staticMetadata:Ljava/util/List;

    .line 221
    goto :goto_f

    .line 222
    .line 223
    :goto_10
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 224
    .line 225
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/a3;->playWhenReady:Z

    .line 226
    .line 227
    move/from16 v18, v2

    .line 228
    .line 229
    iget v2, v0, Lcom/google/android/exoplayer2/a3;->playbackSuppressionReason:I

    .line 230
    .line 231
    move/from16 v19, v2

    .line 232
    .line 233
    iget-object v0, v0, Lcom/google/android/exoplayer2/a3;->playbackParameters:Lcom/google/android/exoplayer2/c3;

    .line 234
    .line 235
    move-object/from16 v20, v0

    .line 236
    .line 237
    const-wide/16 v23, 0x0

    .line 238
    .line 239
    const/16 v27, 0x0

    .line 240
    move-object v4, v3

    .line 241
    .line 242
    move-object/from16 v6, v17

    .line 243
    .line 244
    move-wide/from16 v9, v25

    .line 245
    .line 246
    move-wide/from16 v21, v25

    .line 247
    .line 248
    .line 249
    invoke-direct/range {v4 .. v27}, Lcom/google/android/exoplayer2/a3;-><init>(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;JJILcom/google/android/exoplayer2/q;ZLcom/google/android/exoplayer2/source/h1;Lcom/google/android/exoplayer2/trackselection/c0;Ljava/util/List;Lcom/google/android/exoplayer2/source/b0$b;ZILcom/google/android/exoplayer2/c3;JJJZ)V

    .line 250
    .line 251
    iput-object v3, v1, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 252
    .line 253
    if-eqz p3, :cond_a

    .line 254
    .line 255
    iget-object v0, v1, Lcom/google/android/exoplayer2/w1;->mediaSourceList:Lcom/google/android/exoplayer2/u2;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u2;->y()V

    .line 259
    :cond_a
    return-void
.end method

.method private p()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    new-array v0, v0, [Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/w1;->q([Z)V

    .line 9
    return-void
.end method

.method private p0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/p2;->isLastInTimelineWindow:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->pauseAtEndOfWindow:Z

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->pendingPauseAtEndOfPeriod:Z

    .line 24
    return-void
.end method

.method private q([Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->o()Lcom/google/android/exoplayer2/trackselection/c0;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    .line 14
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 15
    array-length v4, v4

    .line 16
    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/c0;->c(I)Z

    .line 21
    move-result v4

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->renderersToReset:Ljava/util/Set;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 38
    .line 39
    aget-object v4, v4, v3

    .line 40
    .line 41
    .line 42
    invoke-interface {v4}, Lcom/google/android/exoplayer2/m3;->reset()V

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
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 48
    array-length v3, v3

    .line 49
    .line 50
    if-ge v2, v3, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/c0;->c(I)Z

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
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/w1;->n(IZ)V

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
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/o2;->allRenderersInCorrectState:Z

    .line 68
    return-void
.end method

.method private q0(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/o2;->z(J)J

    .line 19
    move-result-wide p1

    .line 20
    .line 21
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->mediaClock:Lcom/google/android/exoplayer2/l;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/l;->d(J)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-wide v2, p0, Lcom/google/android/exoplayer2/w1;->rendererPositionUs:J

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/m3;->resetPosition(J)V

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->c0()V

    .line 52
    return-void
.end method

.method private r(Lcom/google/android/exoplayer2/m3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/m3;->getState()I

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
    invoke-interface {p1}, Lcom/google/android/exoplayer2/m3;->stop()V

    .line 11
    :cond_0
    return-void
.end method

.method private static r0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/w1$d;Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v0, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iget p2, p2, Lcom/google/android/exoplayer2/z3$d;->lastPeriodIndex:I

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/z3;->k(ILcom/google/android/exoplayer2/z3$b;Z)Lcom/google/android/exoplayer2/z3$b;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    iget-object p0, p0, Lcom/google/android/exoplayer2/z3$b;->uid:Ljava/lang/Object;

    .line 22
    .line 23
    iget-wide v0, p3, Lcom/google/android/exoplayer2/z3$b;->durationUs:J

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
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/w1$d;->b(IJLjava/lang/Object;)V

    .line 45
    return-void
.end method

.method private static s0(Lcom/google/android/exoplayer2/w1$d;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;IZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Z
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
    iget-object v2, v0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

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
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/h3;->f()J

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
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/h3;->f()J

    .line 39
    move-result-wide v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 43
    move-result-wide v1

    .line 44
    .line 45
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/w1$h;

    .line 46
    .line 47
    iget-object v4, v0, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/h3;->h()Lcom/google/android/exoplayer2/z3;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    iget-object v5, v0, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/h3;->d()I

    .line 57
    move-result v5

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/w1$h;-><init>(Lcom/google/android/exoplayer2/z3;IJ)V

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
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/w1;->v0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/w1$h;ZIZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Landroid/util/Pair;

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
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/w1$d;->b(IJLjava/lang/Object;)V

    .line 100
    .line 101
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/h3;->f()J

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
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/w1;->r0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/w1$d;Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)V

    .line 113
    :cond_2
    return v12

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

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
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/h3;->f()J

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
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/w1;->r0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/w1$d;Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)V

    .line 135
    return v12

    .line 136
    .line 137
    :cond_5
    iput v2, v0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodIndex:I

    .line 138
    .line 139
    iget-object v2, v0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 143
    .line 144
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/z3$b;->isPlaceholder:Z

    .line 145
    .line 146
    if-eqz v2, :cond_6

    .line 147
    .line 148
    iget v2, v10, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    iget v2, v2, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 155
    .line 156
    iget-object v3, v0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 160
    move-result v1

    .line 161
    .line 162
    if-ne v2, v1, :cond_6

    .line 163
    .line 164
    iget-wide v1, v0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodTimeUs:J

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 168
    move-result-wide v3

    .line 169
    .line 170
    add-long v5, v1, v3

    .line 171
    .line 172
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1$d;->resolvedPeriodUid:Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    iget v4, v1, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

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
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/w1$d;->b(IJLjava/lang/Object;)V

    .line 208
    :cond_6
    return v12
.end method

.method private t([Lcom/google/android/exoplayer2/trackselection/s;)Lcom/google/common/collect/a0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/s;",
            ")",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
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
    invoke-interface {v5, v2}, Lcom/google/android/exoplayer2/trackselection/v;->getFormat(I)Lcom/google/android/exoplayer2/a2;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    iget-object v5, v5, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 22
    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 26
    .line 27
    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

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

.method private t0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    check-cast v2, Lcom/google/android/exoplayer2/w1$d;

    .line 33
    .line 34
    iget v5, p0, Lcom/google/android/exoplayer2/w1;->repeatMode:I

    .line 35
    .line 36
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/w1;->shuffleModeEnabled:Z

    .line 37
    .line 38
    iget-object v7, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 39
    .line 40
    iget-object v8, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 41
    move-object v3, p1

    .line 42
    move-object v4, p2

    .line 43
    .line 44
    .line 45
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/w1;->s0(Lcom/google/android/exoplayer2/w1$d;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;IZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    check-cast v1, Lcom/google/android/exoplayer2/w1$d;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/google/android/exoplayer2/w1$d;->message:Lcom/google/android/exoplayer2/h3;

    .line 59
    const/4 v2, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/h3;->k(Z)V

    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->pendingMessages:Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method private u()J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 9
    .line 10
    iget-wide v3, v0, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/w1;->w(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;J)J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method private static u0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/w1$h;Lcom/google/android/exoplayer2/r2;IZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/w1$g;
    .locals 30
    .param p2    # Lcom/google/android/exoplayer2/w1$h;
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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/exoplayer2/w1$g;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/exoplayer2/a3;->k()Lcom/google/android/exoplayer2/source/b0$b;

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
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/w1$g;-><init>(Lcom/google/android/exoplayer2/source/b0$b;JJZZZ)V

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_0
    iget-object v14, v8, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 40
    .line 41
    iget-object v12, v14, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/w1;->Q(Lcom/google/android/exoplayer2/a3;Lcom/google/android/exoplayer2/z3$b;)Z

    .line 45
    move-result v13

    .line 46
    .line 47
    iget-object v0, v8, Lcom/google/android/exoplayer2/a3;->periodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

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
    iget-wide v0, v8, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 59
    :goto_0
    move-wide v15, v0

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-wide v0, v8, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

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
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/w1;->v0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/w1$h;ZIZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Landroid/util/Pair;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/z3;->e(Z)I

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
    iget-wide v1, v9, Lcom/google/android/exoplayer2/w1$h;->windowPositionUs:J

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
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iget v6, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

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
    iget v3, v8, Lcom/google/android/exoplayer2/a3;->playbackState:I

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
    iget-object v0, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 174
    move-result v0

    .line 175
    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/z3;->e(Z)I

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
    invoke-virtual {v7, v12}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 195
    move-result v0

    .line 196
    .line 197
    if-ne v0, v14, :cond_9

    .line 198
    .line 199
    iget-object v5, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

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
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/w1;->w0(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Ljava/lang/Object;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    if-nez v0, :cond_8

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/z3;->e(Z)I

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
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    iget v0, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

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
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 250
    move-result-object v0

    .line 251
    .line 252
    iget v0, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 253
    goto :goto_7

    .line 254
    .line 255
    :cond_a
    if-eqz v13, :cond_c

    .line 256
    .line 257
    iget-object v0, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 258
    .line 259
    move-object/from16 v6, v21

    .line 260
    .line 261
    iget-object v1, v6, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 265
    .line 266
    iget-object v0, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 267
    .line 268
    iget v1, v11, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 269
    .line 270
    move-object/from16 v9, p6

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 274
    move-result-object v0

    .line 275
    .line 276
    iget v0, v0, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 277
    .line 278
    iget-object v1, v8, Lcom/google/android/exoplayer2/a3;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 279
    .line 280
    iget-object v2, v6, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 284
    move-result v1

    .line 285
    .line 286
    if-ne v0, v1, :cond_b

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/z3$b;->q()J

    .line 290
    move-result-wide v0

    .line 291
    .line 292
    add-long v4, v15, v0

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    iget v3, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

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
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

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
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

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
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplayer2/r2;->B(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/b0$b;

    .line 380
    move-result-object v2

    .line 381
    .line 382
    iget v3, v2, Lcom/google/android/exoplayer2/source/z;->nextAdGroupIndex:I

    .line 383
    .line 384
    if-eq v3, v14, :cond_f

    .line 385
    .line 386
    iget v4, v6, Lcom/google/android/exoplayer2/source/z;->nextAdGroupIndex:I

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
    iget-object v4, v6, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

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
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 408
    move-result v4

    .line 409
    .line 410
    if-nez v4, :cond_10

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/z;->b()Z

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
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

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
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplayer2/w1;->M(ZLcom/google/android/exoplayer2/source/b0$b;JLcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/z3$b;J)Z

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
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 446
    move-result v4

    .line 447
    .line 448
    if-eqz v4, :cond_13

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/z;->equals(Ljava/lang/Object;)Z

    .line 452
    move-result v0

    .line 453
    .line 454
    if-eqz v0, :cond_14

    .line 455
    .line 456
    iget-wide v0, v8, Lcom/google/android/exoplayer2/a3;->positionUs:J

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
    iget-object v0, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 465
    .line 466
    iget v0, v2, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 467
    .line 468
    iget v1, v2, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/z3$b;->n(I)I

    .line 472
    move-result v1

    .line 473
    .line 474
    if-ne v0, v1, :cond_15

    .line 475
    .line 476
    .line 477
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplayer2/z3$b;->j()J

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
    new-instance v0, Lcom/google/android/exoplayer2/w1$g;

    .line 485
    .line 486
    move-object/from16 v21, v0

    .line 487
    .line 488
    move-object/from16 v22, v2

    .line 489
    .line 490
    .line 491
    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplayer2/w1$g;-><init>(Lcom/google/android/exoplayer2/source/b0$b;JJZZZ)V

    .line 492
    return-object v0
.end method

.method private static v(Lcom/google/android/exoplayer2/trackselection/s;)[Lcom/google/android/exoplayer2/a2;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/v;->length()I

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
    new-array v2, v1, [Lcom/google/android/exoplayer2/a2;

    .line 12
    .line 13
    :goto_1
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/trackselection/v;->getFormat(I)Lcom/google/android/exoplayer2/a2;

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

.method private static v0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/w1$h;ZIZLcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;)Landroid/util/Pair;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/z3;",
            "Lcom/google/android/exoplayer2/w1$h;",
            "ZIZ",
            "Lcom/google/android/exoplayer2/z3$d;",
            "Lcom/google/android/exoplayer2/z3$b;",
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
    iget-object v1, v0, Lcom/google/android/exoplayer2/w1$h;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/z3;->u()Z

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
    iget v4, v0, Lcom/google/android/exoplayer2/w1$h;->windowIndex:I

    .line 26
    .line 27
    iget-wide v5, v0, Lcom/google/android/exoplayer2/w1$h;->windowPositionUs:J

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
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/z3;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/z3$b;->isPlaceholder:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget v2, v8, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 65
    .line 66
    move-object/from16 v11, p5

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    iget v2, v2, Lcom/google/android/exoplayer2/z3$d;->firstPeriodIndex:I

    .line 73
    .line 74
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    iget v3, v1, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 89
    .line 90
    iget-wide v4, v0, Lcom/google/android/exoplayer2/w1$h;->windowPositionUs:J

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
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

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
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/w1;->w0(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Ljava/lang/Object;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    iget v3, v0, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

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
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

    .line 141
    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :catch_0
    :cond_5
    return-object v9
.end method

.method private w(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    iget p2, p2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 16
    .line 17
    iget-wide v0, p1, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

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
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$d;->i()Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 35
    .line 36
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$d;->d()J

    .line 43
    move-result-wide p1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 46
    .line 47
    iget-wide v0, v0, Lcom/google/android/exoplayer2/z3$d;->windowStartTimeMs:J

    .line 48
    sub-long/2addr p1, v0

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 52
    move-result-wide p1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3$b;->q()J

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

.method static w0(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IZLjava/lang/Object;Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 4
    move-result p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/z3;->m()I

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
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/z3;->h(ILcom/google/android/exoplayer2/z3$b;Lcom/google/android/exoplayer2/z3$d;IZ)I

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
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/z3;->q(I)Ljava/lang/Object;

    .line 32
    move-result-object p4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

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
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/z3;->q(I)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    :goto_2
    return-object p0
.end method

.method private x()J
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o2;->l()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/o2;->prepared:Z

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

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
    invoke-static {v4}, Lcom/google/android/exoplayer2/w1;->O(Lcom/google/android/exoplayer2/m3;)Z

    .line 32
    move-result v4

    .line 33
    .line 34
    if-eqz v4, :cond_4

    .line 35
    .line 36
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 37
    .line 38
    aget-object v4, v4, v3

    .line 39
    .line 40
    .line 41
    invoke-interface {v4}, Lcom/google/android/exoplayer2/m3;->getStream()Lcom/google/android/exoplayer2/source/w0;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    iget-object v5, v0, Lcom/google/android/exoplayer2/o2;->sampleStreams:[Lcom/google/android/exoplayer2/source/w0;

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->renderers:[Lcom/google/android/exoplayer2/m3;

    .line 52
    .line 53
    aget-object v4, v4, v3

    .line 54
    .line 55
    .line 56
    invoke-interface {v4}, Lcom/google/android/exoplayer2/m3;->c()J

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

.method private x0(JJ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    const/4 v1, 0x2

    .line 4
    add-long/2addr p1, p3

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessageAtTime(IJ)Z

    .line 8
    return-void
.end method

.method private y(Lcom/google/android/exoplayer2/z3;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/z3;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/b0$b;",
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
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/a3;->k()Lcom/google/android/exoplayer2/source/b0$b;

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
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->shuffleModeEnabled:Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/z3;->e(Z)I

    .line 27
    move-result v6

    .line 28
    .line 29
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

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
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/z3;->n(Lcom/google/android/exoplayer2/z3$d;Lcom/google/android/exoplayer2/z3$b;IJ)Landroid/util/Pair;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 44
    .line 45
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/r2;->B(Lcom/google/android/exoplayer2/z3;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/b0$b;

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
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 71
    .line 72
    iget p1, v3, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 73
    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 75
    .line 76
    iget v4, v3, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/z3$b;->n(I)I

    .line 80
    move-result v0

    .line 81
    .line 82
    if-ne p1, v0, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$b;->j()J

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

.method private z0(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/r2;->p()Lcom/google/android/exoplayer2/o2;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 13
    .line 14
    iget-wide v3, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

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
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/w1;->C0(Lcom/google/android/exoplayer2/source/b0$b;JZZ)J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 25
    .line 26
    iget-wide v1, v1, Lcom/google/android/exoplayer2/a3;->positionUs:J

    .line 27
    .line 28
    cmp-long v1, v3, v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 33
    .line 34
    iget-wide v5, v1, Lcom/google/android/exoplayer2/a3;->requestedContentPositionUs:J

    .line 35
    .line 36
    iget-wide v7, v1, Lcom/google/android/exoplayer2/a3;->discontinuityStartPositionUs:J

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
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/w1;->J(Lcom/google/android/exoplayer2/source/b0$b;JJJZI)Lcom/google/android/exoplayer2/a3;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public K0(Ljava/util/List;IJLcom/google/android/exoplayer2/source/y0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/u2$c;",
            ">;IJ",
            "Lcom/google/android/exoplayer2/source/y0;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    new-instance v8, Lcom/google/android/exoplayer2/w1$b;

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
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/w1$b;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/y0;IJLcom/google/android/exoplayer2/w1$a;)V

    .line 14
    .line 15
    const/16 p1, 0x11

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 23
    return-void
.end method

.method public N0(ZI)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(III)Lcom/google/android/exoplayer2/util/p$a;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 11
    return-void
.end method

.method public P0(Lcom/google/android/exoplayer2/c3;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 11
    return-void
.end method

.method public R0(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    const/16 v1, 0xb

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(III)Lcom/google/android/exoplayer2/util/p$a;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 13
    return-void
.end method

.method public U0(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(III)Lcom/google/android/exoplayer2/util/p$a;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 13
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    const/16 v1, 0x16

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 8
    return-void
.end method

.method public declared-synchronized b(Lcom/google/android/exoplayer2/h3;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->released:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 17
    .line 18
    const/16 v1, 0xe

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    .line 32
    .line 33
    const-string v1, "Ignoring messages sent after release."

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/h3;->k(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw p1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/source/x0;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/w1;->f0(Lcom/google/android/exoplayer2/source/y;)V

    .line 6
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/source/y;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 12
    return-void
.end method

.method public e1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(I)Lcom/google/android/exoplayer2/util/p$a;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 11
    return-void
.end method

.method public f0(Lcom/google/android/exoplayer2/source/y;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 12
    return-void
.end method

.method public g0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(I)Lcom/google/android/exoplayer2/util/p$a;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 11
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    .line 2
    const-string v0, "Playback error"

    .line 3
    .line 4
    const-string v1, "ExoPlayerImplInternal"

    .line 5
    .line 6
    const/16 v2, 0x3e8

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    .line 10
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    .line 13
    packed-switch v5, :pswitch_data_0

    .line 14
    return v3

    .line 15
    .line 16
    .line 17
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->j()V

    .line 18
    .line 19
    goto/16 :goto_e

    .line 20
    :catch_0
    move-exception p1

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    :catch_1
    move-exception p1

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    :catch_2
    move-exception p1

    .line 27
    .line 28
    goto/16 :goto_7

    .line 29
    :catch_3
    move-exception p1

    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    :catch_4
    move-exception p1

    .line 33
    .line 34
    goto/16 :goto_9

    .line 35
    :catch_5
    move-exception p1

    .line 36
    .line 37
    goto/16 :goto_c

    .line 38
    :catch_6
    move-exception p1

    .line 39
    .line 40
    goto/16 :goto_d

    .line 41
    .line 42
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 43
    .line 44
    if-ne p1, v4, :cond_0

    .line 45
    move p1, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move p1, v3

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->L0(Z)V

    .line 51
    .line 52
    goto/16 :goto_e

    .line 53
    .line 54
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    move p1, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move p1, v3

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->M0(Z)V

    .line 63
    .line 64
    goto/16 :goto_e

    .line 65
    .line 66
    .line 67
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->a0()V

    .line 68
    .line 69
    goto/16 :goto_e

    .line 70
    .line 71
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lcom/google/android/exoplayer2/source/y0;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->W0(Lcom/google/android/exoplayer2/source/y0;)V

    .line 77
    .line 78
    goto/16 :goto_e

    .line 79
    .line 80
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 81
    .line 82
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 83
    .line 84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lcom/google/android/exoplayer2/source/y0;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/w1;->k0(IILcom/google/android/exoplayer2/source/y0;)V

    .line 90
    .line 91
    goto/16 :goto_e

    .line 92
    .line 93
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Lcom/google/android/exoplayer2/w1$c;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->b0(Lcom/google/android/exoplayer2/w1$c;)V

    .line 99
    .line 100
    goto/16 :goto_e

    .line 101
    .line 102
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v5, Lcom/google/android/exoplayer2/w1$b;

    .line 105
    .line 106
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/w1;->i(Lcom/google/android/exoplayer2/w1$b;I)V

    .line 110
    .line 111
    goto/16 :goto_e

    .line 112
    .line 113
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p1, Lcom/google/android/exoplayer2/w1$b;

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->J0(Lcom/google/android/exoplayer2/w1$b;)V

    .line 119
    .line 120
    goto/16 :goto_e

    .line 121
    .line 122
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Lcom/google/android/exoplayer2/c3;

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/w1;->I(Lcom/google/android/exoplayer2/c3;Z)V

    .line 128
    .line 129
    goto/16 :goto_e

    .line 130
    .line 131
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p1, Lcom/google/android/exoplayer2/h3;

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->F0(Lcom/google/android/exoplayer2/h3;)V

    .line 137
    .line 138
    goto/16 :goto_e

    .line 139
    .line 140
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p1, Lcom/google/android/exoplayer2/h3;

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->D0(Lcom/google/android/exoplayer2/h3;)V

    .line 146
    .line 147
    goto/16 :goto_e

    .line 148
    .line 149
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 150
    .line 151
    if-eqz v5, :cond_2

    .line 152
    move v5, v4

    .line 153
    goto :goto_2

    .line 154
    :cond_2
    move v5, v3

    .line 155
    .line 156
    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/w1;->I0(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 162
    .line 163
    goto/16 :goto_e

    .line 164
    .line 165
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 166
    .line 167
    if-eqz p1, :cond_3

    .line 168
    move p1, v4

    .line 169
    goto :goto_3

    .line 170
    :cond_3
    move p1, v3

    .line 171
    .line 172
    .line 173
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->V0(Z)V

    .line 174
    .line 175
    goto/16 :goto_e

    .line 176
    .line 177
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->S0(I)V

    .line 181
    .line 182
    goto/16 :goto_e

    .line 183
    .line 184
    .line 185
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->n0()V

    .line 186
    .line 187
    goto/16 :goto_e

    .line 188
    .line 189
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, Lcom/google/android/exoplayer2/source/y;

    .line 192
    .line 193
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->C(Lcom/google/android/exoplayer2/source/y;)V

    .line 195
    .line 196
    goto/16 :goto_e

    .line 197
    .line 198
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p1, Lcom/google/android/exoplayer2/source/y;

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->G(Lcom/google/android/exoplayer2/source/y;)V

    .line 204
    .line 205
    goto/16 :goto_e

    .line 206
    .line 207
    .line 208
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->j0()V

    .line 209
    return v4

    .line 210
    .line 211
    .line 212
    :pswitch_13
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/w1;->f1(ZZ)V

    .line 213
    .line 214
    goto/16 :goto_e

    .line 215
    .line 216
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p1, Lcom/google/android/exoplayer2/r3;

    .line 219
    .line 220
    .line 221
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->T0(Lcom/google/android/exoplayer2/r3;)V

    .line 222
    .line 223
    goto/16 :goto_e

    .line 224
    .line 225
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p1, Lcom/google/android/exoplayer2/c3;

    .line 228
    .line 229
    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->Q0(Lcom/google/android/exoplayer2/c3;)V

    .line 231
    .line 232
    goto/16 :goto_e

    .line 233
    .line 234
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p1, Lcom/google/android/exoplayer2/w1$h;

    .line 237
    .line 238
    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1;->A0(Lcom/google/android/exoplayer2/w1$h;)V

    .line 240
    .line 241
    goto/16 :goto_e

    .line 242
    .line 243
    .line 244
    :pswitch_17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->m()V

    .line 245
    .line 246
    goto/16 :goto_e

    .line 247
    .line 248
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 249
    .line 250
    if-eqz v5, :cond_4

    .line 251
    move v5, v4

    .line 252
    goto :goto_4

    .line 253
    :cond_4
    move v5, v3

    .line 254
    .line 255
    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 256
    .line 257
    .line 258
    invoke-direct {p0, v5, p1, v4, v4}, Lcom/google/android/exoplayer2/w1;->O0(ZIZI)V

    .line 259
    .line 260
    goto/16 :goto_e

    .line 261
    .line 262
    .line 263
    :pswitch_19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->h0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/q; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/exoplayer2/drm/n$a; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/exoplayer2/v2; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/exoplayer2/upstream/l; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/exoplayer2/source/b; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    goto/16 :goto_e

    .line 266
    .line 267
    :goto_5
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    .line 268
    .line 269
    if-nez v5, :cond_5

    .line 270
    .line 271
    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    .line 272
    .line 273
    if-eqz v5, :cond_6

    .line 274
    .line 275
    :cond_5
    const/16 v2, 0x3ec

    .line 276
    .line 277
    .line 278
    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/q;->j(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/q;

    .line 279
    move-result-object p1

    .line 280
    .line 281
    .line 282
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/w1;->f1(ZZ)V

    .line 286
    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a3;->e(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/a3;

    .line 291
    move-result-object p1

    .line 292
    .line 293
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 294
    .line 295
    goto/16 :goto_e

    .line 296
    .line 297
    :goto_6
    const/16 v0, 0x7d0

    .line 298
    .line 299
    .line 300
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->D(Ljava/io/IOException;I)V

    .line 301
    .line 302
    goto/16 :goto_e

    .line 303
    .line 304
    :goto_7
    const/16 v0, 0x3ea

    .line 305
    .line 306
    .line 307
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->D(Ljava/io/IOException;I)V

    .line 308
    .line 309
    goto/16 :goto_e

    .line 310
    .line 311
    :goto_8
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/l;->reason:I

    .line 312
    .line 313
    .line 314
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->D(Ljava/io/IOException;I)V

    .line 315
    .line 316
    goto/16 :goto_e

    .line 317
    .line 318
    :goto_9
    iget v0, p1, Lcom/google/android/exoplayer2/v2;->dataType:I

    .line 319
    .line 320
    if-ne v0, v4, :cond_8

    .line 321
    .line 322
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/v2;->contentIsMalformed:Z

    .line 323
    .line 324
    if-eqz v0, :cond_7

    .line 325
    .line 326
    const/16 v0, 0xbb9

    .line 327
    :goto_a
    move v2, v0

    .line 328
    goto :goto_b

    .line 329
    .line 330
    :cond_7
    const/16 v0, 0xbbb

    .line 331
    goto :goto_a

    .line 332
    :cond_8
    const/4 v1, 0x4

    .line 333
    .line 334
    if-ne v0, v1, :cond_a

    .line 335
    .line 336
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/v2;->contentIsMalformed:Z

    .line 337
    .line 338
    if-eqz v0, :cond_9

    .line 339
    .line 340
    const/16 v0, 0xbba

    .line 341
    goto :goto_a

    .line 342
    .line 343
    :cond_9
    const/16 v0, 0xbbc

    .line 344
    goto :goto_a

    .line 345
    .line 346
    .line 347
    :cond_a
    :goto_b
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/w1;->D(Ljava/io/IOException;I)V

    .line 348
    goto :goto_e

    .line 349
    .line 350
    :goto_c
    iget v0, p1, Lcom/google/android/exoplayer2/drm/n$a;->errorCode:I

    .line 351
    .line 352
    .line 353
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/w1;->D(Ljava/io/IOException;I)V

    .line 354
    goto :goto_e

    .line 355
    .line 356
    :goto_d
    iget v2, p1, Lcom/google/android/exoplayer2/q;->type:I

    .line 357
    .line 358
    if-ne v2, v4, :cond_b

    .line 359
    .line 360
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->queue:Lcom/google/android/exoplayer2/r2;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/r2;->q()Lcom/google/android/exoplayer2/o2;

    .line 364
    move-result-object v2

    .line 365
    .line 366
    if-eqz v2, :cond_b

    .line 367
    .line 368
    iget-object v2, v2, Lcom/google/android/exoplayer2/o2;->info:Lcom/google/android/exoplayer2/p2;

    .line 369
    .line 370
    iget-object v2, v2, Lcom/google/android/exoplayer2/p2;->id:Lcom/google/android/exoplayer2/source/b0$b;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/q;->f(Lcom/google/android/exoplayer2/source/z;)Lcom/google/android/exoplayer2/q;

    .line 374
    move-result-object p1

    .line 375
    .line 376
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/q;->isRecoverable:Z

    .line 377
    .line 378
    if-eqz v2, :cond_c

    .line 379
    .line 380
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/q;

    .line 381
    .line 382
    if-nez v2, :cond_c

    .line 383
    .line 384
    const-string v0, "Recoverable renderer error"

    .line 385
    .line 386
    .line 387
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/t;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .line 389
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/q;

    .line 390
    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 392
    .line 393
    const/16 v1, 0x19

    .line 394
    .line 395
    .line 396
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 397
    move-result-object p1

    .line 398
    .line 399
    .line 400
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/p;->b(Lcom/google/android/exoplayer2/util/p$a;)Z

    .line 401
    goto :goto_e

    .line 402
    .line 403
    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/w1;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/q;

    .line 404
    .line 405
    if-eqz v2, :cond_d

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 409
    .line 410
    iget-object p1, p0, Lcom/google/android/exoplayer2/w1;->pendingRecoverableRendererError:Lcom/google/android/exoplayer2/q;

    .line 411
    .line 412
    .line 413
    :cond_d
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    .line 415
    .line 416
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/w1;->f1(ZZ)V

    .line 417
    .line 418
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a3;->e(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/a3;

    .line 422
    move-result-object p1

    .line 423
    .line 424
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 425
    .line 426
    .line 427
    :goto_e
    invoke-direct {p0}, Lcom/google/android/exoplayer2/w1;->U()V

    .line 428
    return v4

    :pswitch_data_0
    .packed-switch 0x0
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

.method public declared-synchronized i0()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->released:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 17
    const/4 v1, 0x7

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/exoplayer2/v1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/v1;-><init>(Lcom/google/android/exoplayer2/w1;)V

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/google/android/exoplayer2/w1;->releaseTimeoutMs:J

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/w1;->n1(Lcom/google/common/base/u;J)V

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    .line 34
    return v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    monitor-exit p0

    .line 38
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :goto_1
    monitor-exit p0

    .line 41
    throw v0
.end method

.method public l0(IILcom/google/android/exoplayer2/source/y0;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    const/16 v1, 0x14

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 12
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/c3;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    const/16 v1, 0x10

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 12
    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    const/16 v1, 0xa

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/p;->sendEmptyMessage(I)Z

    .line 8
    return-void
.end method

.method public s(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/w1;->setForegroundModeTimeoutMs:J

    return-void
.end method

.method public y0(Lcom/google/android/exoplayer2/z3;IJ)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->handler:Lcom/google/android/exoplayer2/util/p;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/w1$h;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/w1$h;-><init>(Lcom/google/android/exoplayer2/z3;IJ)V

    .line 8
    const/4 p1, 0x3

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/util/p;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/p$a;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/p$a;->a()V

    .line 16
    return-void
.end method

.method public z()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/w1;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method
