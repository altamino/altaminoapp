.class final Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_LATENCY_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MODE_SWITCH_SMOOTHING_DURATION_US:J = 0xf4240L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final RAW_PLAYBACK_HEAD_POSITION_UPDATE_INTERVAL_MS:J = 0x5L


# instance fields
.field private audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioTrackPlaybackSpeed:F

.field private bufferSize:I

.field private bufferSizeUs:J

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasData:Z

.field private isOutputPcm:Z

.field private lastLatencySampleTimeUs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastPositionUs:J

.field private lastRawPlaybackHeadPositionSampleTimeMs:J

.field private lastSampleUsedGetTimestampMode:Z

.field private lastSystemTimeUs:J

.field private latencyUs:J

.field private final listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

.field private needsPassthroughWorkarounds:Z

.field private nextPlayheadOffsetIndex:I

.field private notifiedPositionIncreasing:Z

.field private outputPcmFrameSize:I

.field private outputSampleRate:I

.field private passthroughWorkaroundPauseOffset:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private previousModePositionUs:J

.field private previousModeSystemTimeUs:J

.field private rawPlaybackHeadPosition:J

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 12
    .line 13
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 14
    .line 15
    const/16 v0, 0x12

    .line 16
    .line 17
    if-lt p1, v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    .line 20
    .line 21
    const-string v0, "getLatency"

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    :catch_0
    :cond_0
    const/16 p1, 0xa

    .line 31
    .line 32
    new-array p1, p1, [J

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    .line 35
    return-void
.end method

.method private a()Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/media/AudioTrack;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method private d()J
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    cmp-long v4, v2, v4

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    const-wide/16 v4, 0x3e8

    .line 18
    mul-long/2addr v0, v4

    .line 19
    sub-long/2addr v0, v2

    .line 20
    .line 21
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->d0(JF)J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->B(JI)J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    .line 34
    .line 35
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 36
    add-long/2addr v4, v0

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    .line 43
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    .line 44
    .line 45
    sub-long v2, v0, v2

    .line 46
    .line 47
    const-wide/16 v4, 0x5

    .line 48
    .line 49
    cmp-long v2, v2, v4

    .line 50
    .line 51
    if-ltz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u(J)V

    .line 55
    .line 56
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    .line 57
    .line 58
    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 59
    .line 60
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 61
    .line 62
    const/16 v4, 0x20

    .line 63
    shl-long/2addr v2, v4

    .line 64
    add-long/2addr v0, v2

    .line 65
    return-wide v0
.end method

.method private e()J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->W0(JI)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private k(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->e(J)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->c()J

    .line 19
    move-result-wide v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->b()J

    .line 23
    move-result-wide v3

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e()J

    .line 27
    move-result-wide v9

    .line 28
    .line 29
    sub-long v1, v5, p1

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    .line 36
    const-wide/32 v7, 0x4c4b40

    .line 37
    .line 38
    cmp-long v1, v1, v7

    .line 39
    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 43
    move-wide v7, p1

    .line 44
    .line 45
    .line 46
    invoke-interface/range {v2 .. v10}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f()V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4, v1}, Landroidx/media3/common/util/Util;->W0(JI)J

    .line 56
    move-result-wide v1

    .line 57
    sub-long/2addr v1, v9

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 61
    move-result-wide v1

    .line 62
    .line 63
    cmp-long v1, v1, v7

    .line 64
    .line 65
    if-lez v1, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 68
    move-wide v7, p1

    .line 69
    .line 70
    .line 71
    invoke-interface/range {v2 .. v10}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->f()V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->a()V

    .line 79
    :goto_0
    return-void
.end method

.method private l()V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    .line 9
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 10
    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    const-wide/16 v4, 0x7530

    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-ltz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e()J

    .line 21
    move-result-wide v2

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v6, v2, v4

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    .line 31
    .line 32
    iget v7, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 33
    .line 34
    iget v8, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v8}, Landroidx/media3/common/util/Util;->i0(JF)J

    .line 38
    move-result-wide v2

    .line 39
    sub-long/2addr v2, v0

    .line 40
    .line 41
    aput-wide v2, v6, v7

    .line 42
    .line 43
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    const/16 v3, 0xa

    .line 48
    rem-int/2addr v2, v3

    .line 49
    .line 50
    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 51
    .line 52
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 53
    .line 54
    if-ge v2, v3, :cond_1

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 59
    .line 60
    :cond_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 61
    .line 62
    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 66
    .line 67
    if-ge v2, v3, :cond_2

    .line 68
    .line 69
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 70
    .line 71
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    .line 72
    .line 73
    aget-wide v7, v6, v2

    .line 74
    int-to-long v9, v3

    .line 75
    div-long/2addr v7, v9

    .line 76
    add-long/2addr v4, v7

    .line 77
    .line 78
    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_2
    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 84
    .line 85
    if-eqz v2, :cond_3

    .line 86
    return-void

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k(J)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->m(J)V

    .line 93
    return-void
.end method

.method private m(J)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 11
    .line 12
    sub-long v1, p1, v1

    .line 13
    .line 14
    .line 15
    const-wide/32 v3, 0x7a120

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-ltz v1, :cond_1

    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v0

    .line 45
    int-to-long v0, v0

    .line 46
    .line 47
    const-wide/16 v2, 0x3e8

    .line 48
    mul-long/2addr v0, v2

    .line 49
    .line 50
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    .line 51
    sub-long/2addr v0, v2

    .line 52
    .line 53
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 59
    move-result-wide v0

    .line 60
    .line 61
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 62
    .line 63
    .line 64
    const-wide/32 v4, 0x4c4b40

    .line 65
    .line 66
    cmp-long v4, v0, v4

    .line 67
    .line 68
    if-lez v4, :cond_0

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 71
    .line 72
    .line 73
    invoke-interface {v4, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    .line 74
    .line 75
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    const/4 v0, 0x0

    .line 78
    .line 79
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 80
    .line 81
    :cond_0
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 82
    :cond_1
    return-void
.end method

.method private static n(I)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    const/4 v0, 0x5

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    const/4 v0, 0x6

    .line 11
    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private q()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    return-void
.end method

.method private u(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/media/AudioTrack;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 20
    move-result v0

    .line 21
    int-to-long v2, v0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v4, 0xffffffffL

    .line 27
    and-long/2addr v2, v4

    .line 28
    .line 29
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    const/4 v0, 0x2

    .line 35
    .line 36
    if-ne v1, v0, :cond_1

    .line 37
    .line 38
    cmp-long v0, v2, v4

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 43
    .line 44
    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 45
    .line 46
    :cond_1
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 47
    add-long/2addr v2, v6

    .line 48
    .line 49
    :cond_2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 50
    .line 51
    const/16 v6, 0x1d

    .line 52
    .line 53
    if-gt v0, v6, :cond_5

    .line 54
    .line 55
    cmp-long v0, v2, v4

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    iget-wide v8, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 65
    .line 66
    cmp-long v0, v8, v4

    .line 67
    .line 68
    if-lez v0, :cond_4

    .line 69
    const/4 v0, 0x3

    .line 70
    .line 71
    if-ne v1, v0, :cond_4

    .line 72
    .line 73
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 74
    .line 75
    cmp-long v0, v0, v6

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 80
    :cond_3
    return-void

    .line 81
    .line 82
    :cond_4
    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 83
    .line 84
    :cond_5
    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 85
    .line 86
    cmp-long p1, p1, v2

    .line 87
    .line 88
    if-lez p1, :cond_6

    .line 89
    .line 90
    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 91
    .line 92
    const-wide/16 v0, 0x1

    .line 93
    add-long/2addr p1, v0

    .line 94
    .line 95
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 96
    .line 97
    :cond_6
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 98
    return-void
.end method


# virtual methods
.method public b(J)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    .line 7
    int-to-long v2, v2

    .line 8
    mul-long/2addr v0, v2

    .line 9
    sub-long/2addr p1, v0

    .line 10
    long-to-int p1, p1

    .line 11
    .line 12
    iget p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 13
    sub-int/2addr p2, p1

    .line 14
    return p2
.end method

.method public c(Z)J
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Landroid/media/AudioTrack;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x3

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 24
    move-result-wide v1

    .line 25
    .line 26
    const-wide/16 v3, 0x3e8

    .line 27
    div-long/2addr v1, v3

    .line 28
    .line 29
    iget-object v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    check-cast v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->d()Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->b()J

    .line 45
    move-result-wide v7

    .line 46
    .line 47
    iget v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 48
    .line 49
    .line 50
    invoke-static {v7, v8, v9}, Landroidx/media3/common/util/Util;->W0(JI)J

    .line 51
    move-result-wide v7

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->c()J

    .line 55
    move-result-wide v9

    .line 56
    .line 57
    sub-long v9, v1, v9

    .line 58
    .line 59
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 60
    .line 61
    .line 62
    invoke-static {v9, v10, v5}, Landroidx/media3/common/util/Util;->d0(JF)J

    .line 63
    move-result-wide v9

    .line 64
    add-long/2addr v7, v9

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_1
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 68
    .line 69
    if-nez v5, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e()J

    .line 73
    move-result-wide v7

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    .line 77
    add-long/2addr v7, v1

    .line 78
    .line 79
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 80
    .line 81
    .line 82
    invoke-static {v7, v8, v5}, Landroidx/media3/common/util/Util;->d0(JF)J

    .line 83
    move-result-wide v7

    .line 84
    .line 85
    :goto_0
    if-nez p1, :cond_3

    .line 86
    .line 87
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 88
    sub-long/2addr v7, v9

    .line 89
    .line 90
    const-wide/16 v9, 0x0

    .line 91
    .line 92
    .line 93
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 94
    move-result-wide v7

    .line 95
    .line 96
    :cond_3
    :goto_1
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    .line 97
    .line 98
    if-eq v5, v6, :cond_4

    .line 99
    .line 100
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 101
    .line 102
    iput-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 103
    .line 104
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 105
    .line 106
    iput-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    .line 107
    .line 108
    :cond_4
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 109
    .line 110
    sub-long v9, v1, v9

    .line 111
    .line 112
    .line 113
    const-wide/32 v11, 0xf4240

    .line 114
    .line 115
    cmp-long v5, v9, v11

    .line 116
    .line 117
    if-gez v5, :cond_5

    .line 118
    .line 119
    iget-wide v13, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    .line 120
    .line 121
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 122
    .line 123
    .line 124
    invoke-static {v9, v10, v5}, Landroidx/media3/common/util/Util;->d0(JF)J

    .line 125
    move-result-wide v15

    .line 126
    add-long/2addr v13, v15

    .line 127
    mul-long/2addr v9, v3

    .line 128
    div-long/2addr v9, v11

    .line 129
    mul-long/2addr v7, v9

    .line 130
    .line 131
    sub-long v9, v3, v9

    .line 132
    mul-long/2addr v9, v13

    .line 133
    add-long/2addr v7, v9

    .line 134
    div-long/2addr v7, v3

    .line 135
    .line 136
    :cond_5
    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    .line 137
    .line 138
    if-nez v3, :cond_6

    .line 139
    .line 140
    iget-wide v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 141
    .line 142
    cmp-long v5, v7, v3

    .line 143
    .line 144
    if-lez v5, :cond_6

    .line 145
    const/4 v5, 0x1

    .line 146
    .line 147
    iput-boolean v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    .line 148
    .line 149
    sub-long v3, v7, v3

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 153
    move-result-wide v3

    .line 154
    .line 155
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v4, v5}, Landroidx/media3/common/util/Util;->i0(JF)J

    .line 159
    move-result-wide v3

    .line 160
    .line 161
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    move-result-wide v9

    .line 164
    .line 165
    .line 166
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 167
    move-result-wide v3

    .line 168
    sub-long/2addr v9, v3

    .line 169
    .line 170
    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 171
    .line 172
    .line 173
    invoke-interface {v3, v9, v10}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->b(J)V

    .line 174
    .line 175
    :cond_6
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 176
    .line 177
    iput-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 178
    .line 179
    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    .line 180
    return-wide v7
.end method

.method public f(J)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    const-wide/16 v2, 0x3e8

    .line 13
    mul-long/2addr v0, v2

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 16
    .line 17
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    .line 18
    return-void
.end method

.method public g(J)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->c(Z)J

    .line 5
    move-result-wide v1

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->B(JI)J

    .line 11
    move-result-wide v1

    .line 12
    .line 13
    cmp-long p1, p1, v1

    .line 14
    .line 15
    if-gtz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    :cond_1
    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/media/AudioTrack;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public i(J)Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

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
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long p1, p1, v0

    .line 16
    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide p1

    .line 22
    .line 23
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 24
    sub-long/2addr p1, v0

    .line 25
    .line 26
    const-wide/16 v0, 0xc8

    .line 27
    .line 28
    cmp-long p1, p1, v0

    .line 29
    .line 30
    if-ltz p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public j(J)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/media/AudioTrack;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    .line 24
    return v3

    .line 25
    .line 26
    :cond_0
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d()J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    cmp-long v1, v4, v6

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    return v3

    .line 38
    .line 39
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->g(J)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    if-eq v0, v2, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 54
    .line 55
    iget p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 56
    .line 57
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    .line 65
    :cond_2
    return v2
.end method

.method public o()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q()V

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g()V

    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method public p()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 9
    return-void
.end method

.method public r(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    iput p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    .line 5
    .line 6
    iput p5, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 7
    .line 8
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 17
    move-result p1

    .line 18
    .line 19
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n(I)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    const/4 p2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p2, p1

    .line 32
    .line 33
    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 34
    .line 35
    .line 36
    invoke-static {p3}, Landroidx/media3/common/util/Util;->C0(I)Z

    .line 37
    move-result p2

    .line 38
    .line 39
    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    div-int/2addr p5, p4

    .line 48
    int-to-long p2, p5

    .line 49
    .line 50
    iget p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p3, p4}, Landroidx/media3/common/util/Util;->W0(JI)J

    .line 54
    move-result-wide p2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move-wide p2, v0

    .line 57
    .line 58
    :goto_1
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    .line 59
    .line 60
    const-wide/16 p2, 0x0

    .line 61
    .line 62
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    .line 63
    .line 64
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 65
    .line 66
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 67
    .line 68
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    .line 69
    .line 70
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 71
    .line 72
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 73
    .line 74
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 75
    .line 76
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 77
    .line 78
    const/high16 p1, 0x3f800000    # 1.0f

    .line 79
    .line 80
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 81
    return-void
.end method

.method public s(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q()V

    .line 13
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->g()V

    .line 12
    return-void
.end method
