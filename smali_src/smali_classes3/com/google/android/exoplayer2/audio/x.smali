.class final Lcom/google/android/exoplayer2/audio/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/x$a;
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


# instance fields
.field private audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;
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

.field private lastRawPlaybackHeadPosition:J

.field private lastSampleUsedGetTimestampMode:Z

.field private lastSystemTimeUs:J

.field private latencyUs:J

.field private final listener:Lcom/google/android/exoplayer2/audio/x$a;

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

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/x$a;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/exoplayer2/audio/x$a;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->listener:Lcom/google/android/exoplayer2/audio/x$a;

    .line 12
    .line 13
    sget p1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->getLatencyMethod:Ljava/lang/reflect/Method;
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
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsets:[J

    .line 35
    return-void
.end method

.method private a()Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->needsPassthroughWorkarounds:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->e()J

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

.method private b(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0xf4240

    .line 4
    mul-long/2addr p1, v0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/audio/x;->outputSampleRate:I

    .line 7
    int-to-long v0, v0

    .line 8
    div-long/2addr p1, v0

    .line 9
    return-wide p1
.end method

.method private e()J
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/media/AudioTrack;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/x;->stopTimestampUs:J

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    const-wide/16 v2, 0x3e8

    .line 26
    mul-long/2addr v0, v2

    .line 27
    .line 28
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/x;->stopTimestampUs:J

    .line 29
    sub-long/2addr v0, v2

    .line 30
    .line 31
    iget v2, p0, Lcom/google/android/exoplayer2/audio/x;->outputSampleRate:I

    .line 32
    int-to-long v2, v2

    .line 33
    mul-long/2addr v0, v2

    .line 34
    .line 35
    .line 36
    const-wide/32 v2, 0xf4240

    .line 37
    div-long/2addr v0, v2

    .line 38
    .line 39
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/x;->endPlaybackHeadPosition:J

    .line 40
    .line 41
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/x;->stopPlaybackHeadPosition:J

    .line 42
    add-long/2addr v4, v0

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 46
    move-result-wide v0

    .line 47
    return-wide v0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    return-wide v5

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 61
    move-result v0

    .line 62
    int-to-long v7, v0

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v9, 0xffffffffL

    .line 68
    and-long/2addr v7, v9

    .line 69
    .line 70
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->needsPassthroughWorkarounds:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    const/4 v0, 0x2

    .line 74
    .line 75
    if-ne v1, v0, :cond_2

    .line 76
    .line 77
    cmp-long v0, v7, v5

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/x;->lastRawPlaybackHeadPosition:J

    .line 82
    .line 83
    iput-wide v9, p0, Lcom/google/android/exoplayer2/audio/x;->passthroughWorkaroundPauseOffset:J

    .line 84
    .line 85
    :cond_2
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/x;->passthroughWorkaroundPauseOffset:J

    .line 86
    add-long/2addr v7, v9

    .line 87
    .line 88
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 89
    .line 90
    const/16 v2, 0x1d

    .line 91
    .line 92
    if-gt v0, v2, :cond_6

    .line 93
    .line 94
    cmp-long v0, v7, v5

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/x;->lastRawPlaybackHeadPosition:J

    .line 99
    .line 100
    cmp-long v0, v9, v5

    .line 101
    .line 102
    if-lez v0, :cond_5

    .line 103
    const/4 v0, 0x3

    .line 104
    .line 105
    if-ne v1, v0, :cond_5

    .line 106
    .line 107
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->forceResetWorkaroundTimeMs:J

    .line 108
    .line 109
    cmp-long v0, v0, v3

    .line 110
    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 115
    move-result-wide v0

    .line 116
    .line 117
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->forceResetWorkaroundTimeMs:J

    .line 118
    .line 119
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->lastRawPlaybackHeadPosition:J

    .line 120
    return-wide v0

    .line 121
    .line 122
    :cond_5
    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/x;->forceResetWorkaroundTimeMs:J

    .line 123
    .line 124
    :cond_6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->lastRawPlaybackHeadPosition:J

    .line 125
    .line 126
    cmp-long v0, v0, v7

    .line 127
    .line 128
    if-lez v0, :cond_7

    .line 129
    .line 130
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->rawPlaybackHeadWrapCount:J

    .line 131
    .line 132
    const-wide/16 v2, 0x1

    .line 133
    add-long/2addr v0, v2

    .line 134
    .line 135
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->rawPlaybackHeadWrapCount:J

    .line 136
    .line 137
    :cond_7
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/x;->lastRawPlaybackHeadPosition:J

    .line 138
    .line 139
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->rawPlaybackHeadWrapCount:J

    .line 140
    .line 141
    const/16 v2, 0x20

    .line 142
    shl-long/2addr v0, v2

    .line 143
    add-long/2addr v7, v0

    .line 144
    return-wide v7
.end method

.method private f()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->e()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/x;->b(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private l(JJ)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/audio/w;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/w;->e(J)Z

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->c()J

    .line 19
    move-result-wide v5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->b()J

    .line 23
    move-result-wide v3

    .line 24
    .line 25
    sub-long v1, v5, p1

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    const-wide/32 v7, 0x4c4b40

    .line 33
    .line 34
    cmp-long v1, v1, v7

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/x;->listener:Lcom/google/android/exoplayer2/audio/x$a;

    .line 39
    move-wide v7, p1

    .line 40
    move-wide v9, p3

    .line 41
    .line 42
    .line 43
    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/x$a;->onSystemTimeUsMismatch(JJJJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->f()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/audio/x;->b(J)J

    .line 51
    move-result-wide v1

    .line 52
    sub-long/2addr v1, p3

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 56
    move-result-wide v1

    .line 57
    .line 58
    cmp-long v1, v1, v7

    .line 59
    .line 60
    if-lez v1, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/x;->listener:Lcom/google/android/exoplayer2/audio/x$a;

    .line 63
    move-wide v7, p1

    .line 64
    move-wide v9, p3

    .line 65
    .line 66
    .line 67
    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/x$a;->onPositionFramesMismatch(JJJJ)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->f()V

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->a()V

    .line 75
    :goto_0
    return-void
.end method

.method private m()V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->f()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    move-result-wide v4

    .line 16
    .line 17
    const-wide/16 v6, 0x3e8

    .line 18
    div-long/2addr v4, v6

    .line 19
    .line 20
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/x;->lastPlayheadSampleTimeUs:J

    .line 21
    .line 22
    sub-long v6, v4, v6

    .line 23
    .line 24
    const-wide/16 v8, 0x7530

    .line 25
    .line 26
    cmp-long v6, v6, v8

    .line 27
    .line 28
    if-ltz v6, :cond_2

    .line 29
    .line 30
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsets:[J

    .line 31
    .line 32
    iget v7, p0, Lcom/google/android/exoplayer2/audio/x;->nextPlayheadOffsetIndex:I

    .line 33
    .line 34
    sub-long v8, v0, v4

    .line 35
    .line 36
    aput-wide v8, v6, v7

    .line 37
    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    const/16 v6, 0xa

    .line 41
    rem-int/2addr v7, v6

    .line 42
    .line 43
    iput v7, p0, Lcom/google/android/exoplayer2/audio/x;->nextPlayheadOffsetIndex:I

    .line 44
    .line 45
    iget v7, p0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsetCount:I

    .line 46
    .line 47
    if-ge v7, v6, :cond_1

    .line 48
    .line 49
    add-int/lit8 v7, v7, 0x1

    .line 50
    .line 51
    iput v7, p0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsetCount:I

    .line 52
    .line 53
    :cond_1
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/x;->lastPlayheadSampleTimeUs:J

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/x;->smoothedPlayheadOffsetUs:J

    .line 56
    const/4 v2, 0x0

    .line 57
    .line 58
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsetCount:I

    .line 59
    .line 60
    if-ge v2, v3, :cond_2

    .line 61
    .line 62
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/x;->smoothedPlayheadOffsetUs:J

    .line 63
    .line 64
    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsets:[J

    .line 65
    .line 66
    aget-wide v9, v8, v2

    .line 67
    int-to-long v11, v3

    .line 68
    div-long/2addr v9, v11

    .line 69
    add-long/2addr v6, v9

    .line 70
    .line 71
    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/x;->smoothedPlayheadOffsetUs:J

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/x;->needsPassthroughWorkarounds:Z

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    return-void

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/audio/x;->l(JJ)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/x;->n(J)V

    .line 86
    return-void
.end method

.method private n(J)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/x;->isOutputPcm:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/x;->lastLatencySampleTimeUs:J

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/x;->bufferSizeUs:J

    .line 51
    sub-long/2addr v0, v2

    .line 52
    .line 53
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->latencyUs:J

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
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->latencyUs:J

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
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/x;->listener:Lcom/google/android/exoplayer2/audio/x$a;

    .line 71
    .line 72
    .line 73
    invoke-interface {v4, v0, v1}, Lcom/google/android/exoplayer2/audio/x$a;->onInvalidLatency(J)V

    .line 74
    .line 75
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/x;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    const/4 v0, 0x0

    .line 78
    .line 79
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 80
    .line 81
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/x;->lastLatencySampleTimeUs:J

    .line 82
    :cond_1
    return-void
.end method

.method private static o(I)Z
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

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

.method private r()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsetCount:I

    iput v2, p0, Lcom/google/android/exoplayer2/audio/x;->nextPlayheadOffsetIndex:I

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->lastPlayheadSampleTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->lastSystemTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->previousModeSystemTimeUs:J

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/x;->notifiedPositionIncreasing:Z

    return-void
.end method


# virtual methods
.method public c(J)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->e()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/audio/x;->outputPcmFrameSize:I

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
    iget p2, p0, Lcom/google/android/exoplayer2/audio/x;->bufferSize:I

    .line 13
    sub-int/2addr p2, p1

    .line 14
    return p2
.end method

.method public d(Z)J
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/x;->m()V

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
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/x;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;

    .line 30
    .line 31
    .line 32
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    check-cast v5, Lcom/google/android/exoplayer2/audio/w;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/w;->d()Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/w;->b()J

    .line 45
    move-result-wide v7

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/audio/x;->b(J)J

    .line 49
    move-result-wide v7

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/w;->c()J

    .line 53
    move-result-wide v9

    .line 54
    .line 55
    sub-long v9, v1, v9

    .line 56
    .line 57
    iget v5, v0, Lcom/google/android/exoplayer2/audio/x;->audioTrackPlaybackSpeed:F

    .line 58
    .line 59
    .line 60
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/o0;->U(JF)J

    .line 61
    move-result-wide v9

    .line 62
    add-long/2addr v7, v9

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_1
    iget v5, v0, Lcom/google/android/exoplayer2/audio/x;->playheadOffsetCount:I

    .line 66
    .line 67
    if-nez v5, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/x;->f()J

    .line 71
    move-result-wide v7

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/x;->smoothedPlayheadOffsetUs:J

    .line 75
    add-long/2addr v7, v1

    .line 76
    .line 77
    :goto_0
    if-nez p1, :cond_3

    .line 78
    .line 79
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/x;->latencyUs:J

    .line 80
    sub-long/2addr v7, v9

    .line 81
    .line 82
    const-wide/16 v9, 0x0

    .line 83
    .line 84
    .line 85
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 86
    move-result-wide v7

    .line 87
    .line 88
    :cond_3
    :goto_1
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/audio/x;->lastSampleUsedGetTimestampMode:Z

    .line 89
    .line 90
    if-eq v5, v6, :cond_4

    .line 91
    .line 92
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/x;->lastSystemTimeUs:J

    .line 93
    .line 94
    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/x;->previousModeSystemTimeUs:J

    .line 95
    .line 96
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/x;->lastPositionUs:J

    .line 97
    .line 98
    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/x;->previousModePositionUs:J

    .line 99
    .line 100
    :cond_4
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/x;->previousModeSystemTimeUs:J

    .line 101
    .line 102
    sub-long v9, v1, v9

    .line 103
    .line 104
    .line 105
    const-wide/32 v11, 0xf4240

    .line 106
    .line 107
    cmp-long v5, v9, v11

    .line 108
    .line 109
    if-gez v5, :cond_5

    .line 110
    .line 111
    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/x;->previousModePositionUs:J

    .line 112
    .line 113
    iget v5, v0, Lcom/google/android/exoplayer2/audio/x;->audioTrackPlaybackSpeed:F

    .line 114
    .line 115
    .line 116
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/o0;->U(JF)J

    .line 117
    move-result-wide v15

    .line 118
    add-long/2addr v13, v15

    .line 119
    mul-long/2addr v9, v3

    .line 120
    div-long/2addr v9, v11

    .line 121
    mul-long/2addr v7, v9

    .line 122
    .line 123
    sub-long v9, v3, v9

    .line 124
    mul-long/2addr v9, v13

    .line 125
    add-long/2addr v7, v9

    .line 126
    div-long/2addr v7, v3

    .line 127
    .line 128
    :cond_5
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/x;->notifiedPositionIncreasing:Z

    .line 129
    .line 130
    if-nez v3, :cond_6

    .line 131
    .line 132
    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/x;->lastPositionUs:J

    .line 133
    .line 134
    cmp-long v5, v7, v3

    .line 135
    .line 136
    if-lez v5, :cond_6

    .line 137
    const/4 v5, 0x1

    .line 138
    .line 139
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/x;->notifiedPositionIncreasing:Z

    .line 140
    .line 141
    sub-long v3, v7, v3

    .line 142
    .line 143
    .line 144
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 145
    move-result-wide v3

    .line 146
    .line 147
    iget v5, v0, Lcom/google/android/exoplayer2/audio/x;->audioTrackPlaybackSpeed:F

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/o0;->Z(JF)J

    .line 151
    move-result-wide v3

    .line 152
    .line 153
    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    move-result-wide v9

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 159
    move-result-wide v3

    .line 160
    sub-long/2addr v9, v3

    .line 161
    .line 162
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/x;->listener:Lcom/google/android/exoplayer2/audio/x$a;

    .line 163
    .line 164
    .line 165
    invoke-interface {v3, v9, v10}, Lcom/google/android/exoplayer2/audio/x$a;->b(J)V

    .line 166
    .line 167
    :cond_6
    iput-wide v1, v0, Lcom/google/android/exoplayer2/audio/x;->lastSystemTimeUs:J

    .line 168
    .line 169
    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/x;->lastPositionUs:J

    .line 170
    .line 171
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/audio/x;->lastSampleUsedGetTimestampMode:Z

    .line 172
    return-wide v7
.end method

.method public g(J)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->e()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->stopPlaybackHeadPosition:J

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
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->stopTimestampUs:J

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/x;->endPlaybackHeadPosition:J

    .line 18
    return-void
.end method

.method public h(J)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->e()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-gtz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->a()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method

.method public i()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public j(J)Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->forceResetWorkaroundTimeMs:J

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
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->forceResetWorkaroundTimeMs:J

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

.method public k(J)Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/x;->needsPassthroughWorkarounds:Z

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
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/x;->hasData:Z

    .line 24
    return v3

    .line 25
    .line 26
    :cond_0
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->e()J

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
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/x;->hasData:Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/x;->h(J)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/x;->hasData:Z

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
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->listener:Lcom/google/android/exoplayer2/audio/x$a;

    .line 54
    .line 55
    iget p2, p0, Lcom/google/android/exoplayer2/audio/x;->bufferSize:I

    .line 56
    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->bufferSizeUs:J

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/x$a;->onUnderrun(IJ)V

    .line 65
    :cond_2
    return v2
.end method

.method public p()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->r()V

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->stopTimestampUs:J

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/exoplayer2/audio/w;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->g()V

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

.method public q()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/x;->r()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;

    .line 9
    return-void
.end method

.method public s(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/audio/x;->outputPcmFrameSize:I

    .line 5
    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/audio/x;->bufferSize:I

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/audio/w;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/w;-><init>(Landroid/media/AudioTrack;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 17
    move-result p1

    .line 18
    .line 19
    iput p1, p0, Lcom/google/android/exoplayer2/audio/x;->outputSampleRate:I

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/x;->o(I)Z

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
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/x;->needsPassthroughWorkarounds:Z

    .line 34
    .line 35
    .line 36
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/o0;->o0(I)Z

    .line 37
    move-result p2

    .line 38
    .line 39
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/x;->isOutputPcm:Z

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
    .line 51
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/x;->b(J)J

    .line 52
    move-result-wide p2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-wide p2, v0

    .line 55
    .line 56
    :goto_1
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/x;->bufferSizeUs:J

    .line 57
    .line 58
    const-wide/16 p2, 0x0

    .line 59
    .line 60
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/x;->lastRawPlaybackHeadPosition:J

    .line 61
    .line 62
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/x;->rawPlaybackHeadWrapCount:J

    .line 63
    .line 64
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/x;->passthroughWorkaroundPauseOffset:J

    .line 65
    .line 66
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/x;->hasData:Z

    .line 67
    .line 68
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->stopTimestampUs:J

    .line 69
    .line 70
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/x;->forceResetWorkaroundTimeMs:J

    .line 71
    .line 72
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/x;->lastLatencySampleTimeUs:J

    .line 73
    .line 74
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/x;->latencyUs:J

    .line 75
    .line 76
    const/high16 p1, 0x3f800000    # 1.0f

    .line 77
    .line 78
    iput p1, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrackPlaybackSpeed:F

    .line 79
    return-void
.end method

.method public t(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/audio/x;->audioTrackPlaybackSpeed:F

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/x;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/w;->g()V

    .line 10
    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/x;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/w;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/audio/w;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/w;->g()V

    .line 12
    return-void
.end method
