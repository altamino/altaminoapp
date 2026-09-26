.class public final Lcom/google/android/exoplayer2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/j$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED:F = 1.03f

.field public static final DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED:F = 0.97f

.field public static final DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED:J = 0x14L

.field public static final DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR:F = 0.999f

.field public static final DEFAULT_MIN_UPDATE_INTERVAL_MS:J = 0x3e8L

.field public static final DEFAULT_PROPORTIONAL_CONTROL_FACTOR:F = 0.1f

.field public static final DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS:J = 0x1f4L


# instance fields
.field private adjustedPlaybackSpeed:F

.field private currentTargetLiveOffsetUs:J

.field private final fallbackMaxPlaybackSpeed:F

.field private final fallbackMinPlaybackSpeed:F

.field private idealTargetLiveOffsetUs:J

.field private lastPlaybackSpeedUpdateMs:J

.field private final maxLiveOffsetErrorUsForUnitSpeed:J

.field private maxPlaybackSpeed:F

.field private maxTargetLiveOffsetUs:J

.field private mediaConfigurationTargetLiveOffsetUs:J

.field private minPlaybackSpeed:F

.field private final minPossibleLiveOffsetSmoothingFactor:F

.field private minTargetLiveOffsetUs:J

.field private final minUpdateIntervalMs:J

.field private final proportionalControlFactor:F

.field private smoothedMinPossibleLiveOffsetDeviationUs:J

.field private smoothedMinPossibleLiveOffsetUs:J

.field private targetLiveOffsetOverrideUs:J

.field private final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/j;->fallbackMinPlaybackSpeed:F

    iput p2, p0, Lcom/google/android/exoplayer2/j;->fallbackMaxPlaybackSpeed:F

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->minUpdateIntervalMs:J

    iput p5, p0, Lcom/google/android/exoplayer2/j;->proportionalControlFactor:F

    iput-wide p6, p0, Lcom/google/android/exoplayer2/j;->maxLiveOffsetErrorUsForUnitSpeed:J

    iput-wide p8, p0, Lcom/google/android/exoplayer2/j;->targetLiveOffsetRebufferDeltaUs:J

    iput p10, p0, Lcom/google/android/exoplayer2/j;->minPossibleLiveOffsetSmoothingFactor:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->mediaConfigurationTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->targetLiveOffsetOverrideUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->minTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->maxTargetLiveOffsetUs:J

    iput p1, p0, Lcom/google/android/exoplayer2/j;->minPlaybackSpeed:F

    iput p2, p0, Lcom/google/android/exoplayer2/j;->maxPlaybackSpeed:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/j;->adjustedPlaybackSpeed:F

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->lastPlaybackSpeedUpdateMs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->idealTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/google/android/exoplayer2/j$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/j;-><init>(FFJFJJF)V

    return-void
.end method

.method private f(J)V
    .locals 12

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetUs:J

    .line 3
    .line 4
    const-wide/16 v2, 0x3

    .line 5
    .line 6
    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 7
    mul-long/2addr v4, v2

    .line 8
    .line 9
    add-long v10, v0, v4

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    .line 12
    .line 13
    cmp-long v0, v0, v10

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-wide p1, p0, Lcom/google/android/exoplayer2/j;->minUpdateIntervalMs:J

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 23
    move-result-wide p1

    .line 24
    .line 25
    iget v0, p0, Lcom/google/android/exoplayer2/j;->adjustedPlaybackSpeed:F

    .line 26
    sub-float/2addr v0, v1

    .line 27
    long-to-float p1, p1

    .line 28
    mul-float/2addr v0, p1

    .line 29
    float-to-long v2, v0

    .line 30
    .line 31
    iget p2, p0, Lcom/google/android/exoplayer2/j;->maxPlaybackSpeed:F

    .line 32
    sub-float/2addr p2, v1

    .line 33
    mul-float/2addr p2, p1

    .line 34
    float-to-long p1, p2

    .line 35
    add-long/2addr v2, p1

    .line 36
    const/4 p1, 0x3

    .line 37
    .line 38
    new-array p1, p1, [J

    .line 39
    const/4 p2, 0x0

    .line 40
    .line 41
    aput-wide v10, p1, p2

    .line 42
    const/4 p2, 0x1

    .line 43
    .line 44
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->idealTargetLiveOffsetUs:J

    .line 45
    .line 46
    aput-wide v0, p1, p2

    .line 47
    .line 48
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    .line 49
    sub-long/2addr v0, v2

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    aput-wide v0, p1, p2

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/google/common/primitives/g;->c([J)J

    .line 56
    move-result-wide p1

    .line 57
    .line 58
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/j;->adjustedPlaybackSpeed:F

    .line 62
    sub-float/2addr v0, v1

    .line 63
    const/4 v1, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 67
    move-result v0

    .line 68
    .line 69
    iget v1, p0, Lcom/google/android/exoplayer2/j;->proportionalControlFactor:F

    .line 70
    div-float/2addr v0, v1

    .line 71
    float-to-long v0, v0

    .line 72
    .line 73
    sub-long v6, p1, v0

    .line 74
    .line 75
    iget-wide v8, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    .line 76
    .line 77
    .line 78
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/o0;->q(JJJ)J

    .line 79
    move-result-wide p1

    .line 80
    .line 81
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    .line 82
    .line 83
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->maxTargetLiveOffsetUs:J

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    cmp-long v2, v0, v2

    .line 91
    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    cmp-long p1, p1, v0

    .line 95
    .line 96
    if-lez p1, :cond_1

    .line 97
    .line 98
    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->targetLiveOffsetOverrideUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->minTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->idealTargetLiveOffsetUs:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->idealTargetLiveOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/j;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method private static h(JJF)J
    .locals 0

    .line 1
    long-to-float p0, p0

    mul-float/2addr p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private i(JJ)V
    .locals 2

    .line 1
    sub-long/2addr p1, p3

    .line 2
    .line 3
    iget-wide p3, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetUs:J

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    cmp-long v0, p3, v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetUs:J

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/j;->minPossibleLiveOffsetSmoothingFactor:F

    .line 22
    .line 23
    .line 24
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/j;->h(JJF)J

    .line 25
    move-result-wide p3

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    .line 29
    move-result-wide p3

    .line 30
    .line 31
    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetUs:J

    .line 32
    sub-long/2addr p1, p3

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 36
    move-result-wide p1

    .line 37
    .line 38
    iget-wide p3, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 39
    .line 40
    iget v0, p0, Lcom/google/android/exoplayer2/j;->minPossibleLiveOffsetSmoothingFactor:F

    .line 41
    .line 42
    .line 43
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/j;->h(JJF)J

    .line 44
    move-result-wide p1

    .line 45
    .line 46
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->smoothedMinPossibleLiveOffsetDeviationUs:J

    .line 47
    :goto_0
    return-void
.end method


# virtual methods
.method public a(JJ)F
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->mediaConfigurationTargetLiveOffsetUs:J

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
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/j;->i(JJ)V

    .line 18
    .line 19
    iget-wide p3, p0, Lcom/google/android/exoplayer2/j;->lastPlaybackSpeedUpdateMs:J

    .line 20
    .line 21
    cmp-long p3, p3, v2

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide p3

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/google/android/exoplayer2/j;->lastPlaybackSpeedUpdateMs:J

    .line 30
    sub-long/2addr p3, v2

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/google/android/exoplayer2/j;->minUpdateIntervalMs:J

    .line 33
    .line 34
    cmp-long p3, p3, v2

    .line 35
    .line 36
    if-gez p3, :cond_1

    .line 37
    .line 38
    iget p1, p0, Lcom/google/android/exoplayer2/j;->adjustedPlaybackSpeed:F

    .line 39
    return p1

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    move-result-wide p3

    .line 44
    .line 45
    iput-wide p3, p0, Lcom/google/android/exoplayer2/j;->lastPlaybackSpeedUpdateMs:J

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/j;->f(J)V

    .line 49
    .line 50
    iget-wide p3, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    .line 51
    sub-long/2addr p1, p3

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 55
    move-result-wide p3

    .line 56
    .line 57
    iget-wide v2, p0, Lcom/google/android/exoplayer2/j;->maxLiveOffsetErrorUsForUnitSpeed:J

    .line 58
    .line 59
    cmp-long p3, p3, v2

    .line 60
    .line 61
    if-gez p3, :cond_2

    .line 62
    .line 63
    iput v1, p0, Lcom/google/android/exoplayer2/j;->adjustedPlaybackSpeed:F

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/j;->proportionalControlFactor:F

    .line 67
    long-to-float p1, p1

    .line 68
    mul-float/2addr p3, p1

    .line 69
    add-float/2addr p3, v1

    .line 70
    .line 71
    iget p1, p0, Lcom/google/android/exoplayer2/j;->minPlaybackSpeed:F

    .line 72
    .line 73
    iget p2, p0, Lcom/google/android/exoplayer2/j;->maxPlaybackSpeed:F

    .line 74
    .line 75
    .line 76
    invoke-static {p3, p1, p2}, Lcom/google/android/exoplayer2/util/o0;->o(FFF)F

    .line 77
    move-result p1

    .line 78
    .line 79
    iput p1, p0, Lcom/google/android/exoplayer2/j;->adjustedPlaybackSpeed:F

    .line 80
    .line 81
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/j;->adjustedPlaybackSpeed:F

    .line 82
    return p1
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    return-wide v0
.end method

.method public c()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/j;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/j;->currentTargetLiveOffsetUs:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/j;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/j;->targetLiveOffsetOverrideUs:J

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/j;->g()V

    .line 6
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/i2$g;)V
    .locals 3

    .line 1
    .line 2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->mediaConfigurationTargetLiveOffsetUs:J

    .line 9
    .line 10
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->minTargetLiveOffsetUs:J

    .line 17
    .line 18
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->maxTargetLiveOffsetUs:J

    .line 25
    .line 26
    iget v0, p1, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    .line 27
    .line 28
    .line 29
    const v1, -0x800001

    .line 30
    .line 31
    cmpl-float v2, v0, v1

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/j;->fallbackMinPlaybackSpeed:F

    .line 37
    .line 38
    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/j;->minPlaybackSpeed:F

    .line 39
    .line 40
    iget p1, p1, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    .line 41
    .line 42
    cmpl-float v1, p1, v1

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/j;->fallbackMaxPlaybackSpeed:F

    .line 48
    .line 49
    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/j;->maxPlaybackSpeed:F

    .line 50
    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    .line 52
    .line 53
    cmpl-float v0, v0, v1

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    cmpl-float p1, p1, v1

    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 65
    .line 66
    iput-wide v0, p0, Lcom/google/android/exoplayer2/j;->mediaConfigurationTargetLiveOffsetUs:J

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/j;->g()V

    .line 70
    return-void
.end method
