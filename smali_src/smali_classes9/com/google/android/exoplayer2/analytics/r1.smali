.class public final Lcom/google/android/exoplayer2/analytics/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/c;
.implements Lcom/google/android/exoplayer2/analytics/s1$a;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/r1$b;,
        Lcom/google/android/exoplayer2/analytics/r1$a;
    }
.end annotation


# instance fields
.field private activeSessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioUnderruns:I

.field private final bandwidthBytes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthTimeMs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentAudioFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentNetworkType:I

.field private currentPlaybackState:I

.field private currentTextFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentVideoFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private discontinuityReason:I

.field private droppedFrames:I

.field private hasFatalError:Z

.field private ioErrorType:I

.field private isSeeking:Z

.field private metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/r1$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingPlayerError:Lcom/google/android/exoplayer2/z2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingTextFormat:Lcom/google/android/exoplayer2/analytics/r1$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/r1$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final period:Lcom/google/android/exoplayer2/z3$b;

.field private final playbackSession:Landroid/media/metrics/PlaybackSession;

.field private playedFrames:I

.field private reportedEventsForCurrentSession:Z

.field private final sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

.field private final startTimeMs:J

.field private final window:Lcom/google/android/exoplayer2/z3$d;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->context:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/z3$d;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 19
    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/z3$b;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 26
    .line 27
    new-instance p1, Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthBytes:Ljava/util/HashMap;

    .line 33
    .line 34
    new-instance p1, Ljava/util/HashMap;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    move-result-wide p1

    .line 44
    .line 45
    iput-wide p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->startTimeMs:J

    .line 46
    const/4 p1, 0x0

    .line 47
    .line 48
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentPlaybackState:I

    .line 49
    .line 50
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentNetworkType:I

    .line 51
    .line 52
    new-instance p1, Lcom/google/android/exoplayer2/analytics/q1;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/android/exoplayer2/analytics/q1;-><init>()V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/analytics/s1;->e(Lcom/google/android/exoplayer2/analytics/s1$a;)V

    .line 61
    return-void
.end method

.method public static A0(Landroid/content/Context;)Lcom/google/android/exoplayer2/analytics/r1;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "media_metrics"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/o3;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/analytics/r1;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/p3;->a(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/analytics/r1;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    .line 24
    move-object p0, v1

    .line 25
    :goto_0
    return-object p0
.end method

.method private B0()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->reportedEventsForCurrentSession:Z

    .line 8
    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->audioUnderruns:I

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/r2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 17
    .line 18
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->droppedFrames:I

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/s2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 24
    .line 25
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->playedFrames:I

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/t2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->activeSessionId:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Long;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    move-wide v5, v3

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 50
    move-result-wide v5

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {v2, v5, v6}, Landroidx/media3/exoplayer/analytics/u2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthBytes:Ljava/util/HashMap;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->activeSessionId:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, Ljava/lang/Long;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    move-wide v5, v3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 73
    move-result-wide v5

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-static {v2, v5, v6}, Landroidx/media3/exoplayer/analytics/v2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 84
    move-result-wide v5

    .line 85
    .line 86
    cmp-long v0, v5, v3

    .line 87
    .line 88
    if-lez v0, :cond_2

    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v0, v1

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-static {v2, v0}, Landroidx/media3/exoplayer/analytics/w2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/x2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/y2;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    .line 106
    :cond_3
    const/4 v0, 0x0

    .line 107
    .line 108
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->activeSessionId:Ljava/lang/String;

    .line 111
    .line 112
    iput v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->audioUnderruns:I

    .line 113
    .line 114
    iput v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->droppedFrames:I

    .line 115
    .line 116
    iput v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->playedFrames:I

    .line 117
    .line 118
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentVideoFormat:Lcom/google/android/exoplayer2/a2;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentAudioFormat:Lcom/google/android/exoplayer2/a2;

    .line 121
    .line 122
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentTextFormat:Lcom/google/android/exoplayer2/a2;

    .line 123
    .line 124
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->reportedEventsForCurrentSession:Z

    .line 125
    return-void
.end method

.method private static C0(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/o0;->P(I)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    const/16 p0, 0x1b

    .line 10
    return p0

    .line 11
    .line 12
    :pswitch_0
    const/16 p0, 0x1a

    .line 13
    return p0

    .line 14
    .line 15
    :pswitch_1
    const/16 p0, 0x19

    .line 16
    return p0

    .line 17
    .line 18
    :pswitch_2
    const/16 p0, 0x1c

    .line 19
    return p0

    .line 20
    .line 21
    :pswitch_3
    const/16 p0, 0x18

    .line 22
    return p0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static D0(Lcom/google/common/collect/a0;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a0<",
            "Lcom/google/android/exoplayer2/e4$a;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/a0;->m()Lcom/google/common/collect/l1;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/exoplayer2/e4$a;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/e4$a;->length:I

    .line 20
    .line 21
    if-ge v1, v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/e4$a;->f(I)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/e4$a;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    iget-object v2, v2, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    return-object v2

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method private static E0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->e(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/exoplayer2/i;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    const/4 p0, 0x3

    .line 21
    return p0

    .line 22
    .line 23
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/i;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    const/4 p0, 0x2

    .line 31
    return p0

    .line 32
    .line 33
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/i;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    const/4 p0, 0x6

    .line 41
    return p0

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method private static F0(Lcom/google/android/exoplayer2/z2;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/analytics/r1$a;
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/z2;->errorCode:I

    .line 3
    .line 4
    const/16 v1, 0x3e9

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 10
    .line 11
    const/16 p1, 0x14

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    instance-of v0, p0, Lcom/google/android/exoplayer2/q;

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    move-object v0, p0

    .line 22
    .line 23
    check-cast v0, Lcom/google/android/exoplayer2/q;

    .line 24
    .line 25
    iget v3, v0, Lcom/google/android/exoplayer2/q;->type:I

    .line 26
    .line 27
    if-ne v3, v1, :cond_1

    .line 28
    move v3, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v3, v2

    .line 31
    .line 32
    :goto_0
    iget v0, v0, Lcom/google/android/exoplayer2/q;->rendererFormatSupport:I

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v0, v2

    .line 35
    move v3, v0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    check-cast v4, Ljava/lang/Throwable;

    .line 46
    .line 47
    instance-of v5, v4, Ljava/io/IOException;

    .line 48
    const/4 v6, 0x3

    .line 49
    .line 50
    const/16 v7, 0x12

    .line 51
    .line 52
    const/16 v8, 0x17

    .line 53
    .line 54
    if-eqz v5, :cond_17

    .line 55
    .line 56
    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/b0;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    check-cast v4, Lcom/google/android/exoplayer2/upstream/b0;

    .line 61
    .line 62
    iget p0, v4, Lcom/google/android/exoplayer2/upstream/b0;->responseCode:I

    .line 63
    .line 64
    new-instance p1, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 65
    const/4 p2, 0x5

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2, p0}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 69
    return-object p1

    .line 70
    .line 71
    :cond_3
    instance-of v0, v4, Lcom/google/android/exoplayer2/upstream/a0;

    .line 72
    .line 73
    if-nez v0, :cond_15

    .line 74
    .line 75
    instance-of v0, v4, Lcom/google/android/exoplayer2/v2;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_4
    instance-of p2, v4, Lcom/google/android/exoplayer2/upstream/z;

    .line 82
    .line 83
    if-nez p2, :cond_10

    .line 84
    .line 85
    instance-of p2, v4, Lcom/google/android/exoplayer2/upstream/n0$a;

    .line 86
    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_5
    iget p0, p0, Lcom/google/android/exoplayer2/z2;->errorCode:I

    .line 92
    .line 93
    const/16 p1, 0x3ea

    .line 94
    .line 95
    const/16 p2, 0x15

    .line 96
    .line 97
    if-ne p0, p1, :cond_6

    .line 98
    .line 99
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 103
    return-object p0

    .line 104
    .line 105
    :cond_6
    instance-of p0, v4, Lcom/google/android/exoplayer2/drm/n$a;

    .line 106
    .line 107
    if-eqz p0, :cond_d

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    check-cast p0, Ljava/lang/Throwable;

    .line 118
    .line 119
    sget p1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 120
    .line 121
    if-lt p1, p2, :cond_7

    .line 122
    .line 123
    instance-of p2, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 124
    .line 125
    if-eqz p2, :cond_7

    .line 126
    .line 127
    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    .line 134
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/o0;->Q(Ljava/lang/String;)I

    .line 135
    move-result p0

    .line 136
    .line 137
    .line 138
    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/r1;->C0(I)I

    .line 139
    move-result p1

    .line 140
    .line 141
    new-instance p2, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 142
    .line 143
    .line 144
    invoke-direct {p2, p1, p0}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 145
    return-object p2

    .line 146
    .line 147
    :cond_7
    if-lt p1, v8, :cond_8

    .line 148
    .line 149
    instance-of p2, p0, Landroid/media/MediaDrmResetException;

    .line 150
    .line 151
    if-eqz p2, :cond_8

    .line 152
    .line 153
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 154
    .line 155
    const/16 p1, 0x1b

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 159
    return-object p0

    .line 160
    .line 161
    :cond_8
    if-lt p1, v7, :cond_9

    .line 162
    .line 163
    instance-of p2, p0, Landroid/media/NotProvisionedException;

    .line 164
    .line 165
    if-eqz p2, :cond_9

    .line 166
    .line 167
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 168
    .line 169
    const/16 p1, 0x18

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 173
    return-object p0

    .line 174
    .line 175
    :cond_9
    if-lt p1, v7, :cond_a

    .line 176
    .line 177
    instance-of p1, p0, Landroid/media/DeniedByServerException;

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 182
    .line 183
    const/16 p1, 0x1d

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 187
    return-object p0

    .line 188
    .line 189
    :cond_a
    instance-of p1, p0, Lcom/google/android/exoplayer2/drm/o0;

    .line 190
    .line 191
    if-eqz p1, :cond_b

    .line 192
    .line 193
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, v8, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 197
    return-object p0

    .line 198
    .line 199
    :cond_b
    instance-of p0, p0, Lcom/google/android/exoplayer2/drm/h$e;

    .line 200
    .line 201
    if-eqz p0, :cond_c

    .line 202
    .line 203
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 204
    .line 205
    const/16 p1, 0x1c

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 209
    return-object p0

    .line 210
    .line 211
    :cond_c
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 212
    .line 213
    const/16 p1, 0x1e

    .line 214
    .line 215
    .line 216
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 217
    return-object p0

    .line 218
    .line 219
    :cond_d
    instance-of p0, v4, Lcom/google/android/exoplayer2/upstream/x$b;

    .line 220
    .line 221
    if-eqz p0, :cond_f

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 225
    move-result-object p0

    .line 226
    .line 227
    instance-of p0, p0, Ljava/io/FileNotFoundException;

    .line 228
    .line 229
    if-eqz p0, :cond_f

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 233
    move-result-object p0

    .line 234
    .line 235
    .line 236
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-result-object p0

    .line 238
    .line 239
    check-cast p0, Ljava/lang/Throwable;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 243
    move-result-object p0

    .line 244
    .line 245
    sget p1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 246
    .line 247
    if-lt p1, p2, :cond_e

    .line 248
    .line 249
    instance-of p1, p0, Landroid/system/ErrnoException;

    .line 250
    .line 251
    if-eqz p1, :cond_e

    .line 252
    .line 253
    check-cast p0, Landroid/system/ErrnoException;

    .line 254
    .line 255
    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    .line 256
    .line 257
    sget p1, Landroid/system/OsConstants;->EACCES:I

    .line 258
    .line 259
    if-ne p0, p1, :cond_e

    .line 260
    .line 261
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 262
    .line 263
    const/16 p1, 0x20

    .line 264
    .line 265
    .line 266
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 267
    return-object p0

    .line 268
    .line 269
    :cond_e
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 270
    .line 271
    const/16 p1, 0x1f

    .line 272
    .line 273
    .line 274
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 275
    return-object p0

    .line 276
    .line 277
    :cond_f
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 278
    .line 279
    const/16 p1, 0x9

    .line 280
    .line 281
    .line 282
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 283
    return-object p0

    .line 284
    .line 285
    .line 286
    :cond_10
    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a0;->d(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/a0;

    .line 287
    move-result-object p0

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/a0;->f()I

    .line 291
    move-result p0

    .line 292
    .line 293
    if-ne p0, v1, :cond_11

    .line 294
    .line 295
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 296
    .line 297
    .line 298
    invoke-direct {p0, v6, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 299
    return-object p0

    .line 300
    .line 301
    .line 302
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 303
    move-result-object p0

    .line 304
    .line 305
    instance-of p1, p0, Ljava/net/UnknownHostException;

    .line 306
    .line 307
    if-eqz p1, :cond_12

    .line 308
    .line 309
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 310
    const/4 p1, 0x6

    .line 311
    .line 312
    .line 313
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 314
    return-object p0

    .line 315
    .line 316
    :cond_12
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    .line 317
    .line 318
    if-eqz p0, :cond_13

    .line 319
    .line 320
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 321
    const/4 p1, 0x7

    .line 322
    .line 323
    .line 324
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 325
    return-object p0

    .line 326
    .line 327
    :cond_13
    instance-of p0, v4, Lcom/google/android/exoplayer2/upstream/z;

    .line 328
    .line 329
    if-eqz p0, :cond_14

    .line 330
    .line 331
    check-cast v4, Lcom/google/android/exoplayer2/upstream/z;

    .line 332
    .line 333
    iget p0, v4, Lcom/google/android/exoplayer2/upstream/z;->type:I

    .line 334
    .line 335
    if-ne p0, v1, :cond_14

    .line 336
    .line 337
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 338
    const/4 p1, 0x4

    .line 339
    .line 340
    .line 341
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 342
    return-object p0

    .line 343
    .line 344
    :cond_14
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 345
    .line 346
    const/16 p1, 0x8

    .line 347
    .line 348
    .line 349
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 350
    return-object p0

    .line 351
    .line 352
    :cond_15
    :goto_3
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 353
    .line 354
    if-eqz p2, :cond_16

    .line 355
    .line 356
    const/16 p1, 0xa

    .line 357
    goto :goto_4

    .line 358
    .line 359
    :cond_16
    const/16 p1, 0xb

    .line 360
    .line 361
    .line 362
    :goto_4
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 363
    return-object p0

    .line 364
    .line 365
    :cond_17
    if-eqz v3, :cond_19

    .line 366
    .line 367
    if-eqz v0, :cond_18

    .line 368
    .line 369
    if-ne v0, v1, :cond_19

    .line 370
    .line 371
    :cond_18
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 372
    .line 373
    const/16 p1, 0x23

    .line 374
    .line 375
    .line 376
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 377
    return-object p0

    .line 378
    .line 379
    :cond_19
    if-eqz v3, :cond_1a

    .line 380
    .line 381
    if-ne v0, v6, :cond_1a

    .line 382
    .line 383
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 384
    .line 385
    const/16 p1, 0xf

    .line 386
    .line 387
    .line 388
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 389
    return-object p0

    .line 390
    .line 391
    :cond_1a
    if-eqz v3, :cond_1b

    .line 392
    const/4 p0, 0x2

    .line 393
    .line 394
    if-ne v0, p0, :cond_1b

    .line 395
    .line 396
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 397
    .line 398
    .line 399
    invoke-direct {p0, v8, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 400
    return-object p0

    .line 401
    .line 402
    :cond_1b
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 403
    .line 404
    if-eqz p0, :cond_1c

    .line 405
    .line 406
    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/o$b;

    .line 407
    .line 408
    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/o$b;->diagnosticInfo:Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/o0;->Q(Ljava/lang/String;)I

    .line 412
    move-result p0

    .line 413
    .line 414
    new-instance p1, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 415
    .line 416
    const/16 p2, 0xd

    .line 417
    .line 418
    .line 419
    invoke-direct {p1, p2, p0}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 420
    return-object p1

    .line 421
    .line 422
    :cond_1c
    instance-of p0, v4, Lcom/google/android/exoplayer2/mediacodec/m;

    .line 423
    .line 424
    const/16 p1, 0xe

    .line 425
    .line 426
    if-eqz p0, :cond_1d

    .line 427
    .line 428
    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/m;

    .line 429
    .line 430
    iget-object p0, v4, Lcom/google/android/exoplayer2/mediacodec/m;->diagnosticInfo:Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/o0;->Q(Ljava/lang/String;)I

    .line 434
    move-result p0

    .line 435
    .line 436
    new-instance p2, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 437
    .line 438
    .line 439
    invoke-direct {p2, p1, p0}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 440
    return-object p2

    .line 441
    .line 442
    :cond_1d
    instance-of p0, v4, Ljava/lang/OutOfMemoryError;

    .line 443
    .line 444
    if-eqz p0, :cond_1e

    .line 445
    .line 446
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 447
    .line 448
    .line 449
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 450
    return-object p0

    .line 451
    .line 452
    :cond_1e
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/v$b;

    .line 453
    .line 454
    if-eqz p0, :cond_1f

    .line 455
    .line 456
    check-cast v4, Lcom/google/android/exoplayer2/audio/v$b;

    .line 457
    .line 458
    iget p0, v4, Lcom/google/android/exoplayer2/audio/v$b;->audioTrackState:I

    .line 459
    .line 460
    new-instance p1, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 461
    .line 462
    const/16 p2, 0x11

    .line 463
    .line 464
    .line 465
    invoke-direct {p1, p2, p0}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 466
    return-object p1

    .line 467
    .line 468
    :cond_1f
    instance-of p0, v4, Lcom/google/android/exoplayer2/audio/v$e;

    .line 469
    .line 470
    if-eqz p0, :cond_20

    .line 471
    .line 472
    check-cast v4, Lcom/google/android/exoplayer2/audio/v$e;

    .line 473
    .line 474
    iget p0, v4, Lcom/google/android/exoplayer2/audio/v$e;->errorCode:I

    .line 475
    .line 476
    new-instance p1, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 477
    .line 478
    .line 479
    invoke-direct {p1, v7, p0}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 480
    return-object p1

    .line 481
    .line 482
    :cond_20
    sget p0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 483
    .line 484
    const/16 p1, 0x10

    .line 485
    .line 486
    if-lt p0, p1, :cond_21

    .line 487
    .line 488
    instance-of p0, v4, Landroid/media/MediaCodec$CryptoException;

    .line 489
    .line 490
    if-eqz p0, :cond_21

    .line 491
    .line 492
    check-cast v4, Landroid/media/MediaCodec$CryptoException;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v4}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 496
    move-result p0

    .line 497
    .line 498
    .line 499
    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/r1;->C0(I)I

    .line 500
    move-result p1

    .line 501
    .line 502
    new-instance p2, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 503
    .line 504
    .line 505
    invoke-direct {p2, p1, p0}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 506
    return-object p2

    .line 507
    .line 508
    :cond_21
    new-instance p0, Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 509
    .line 510
    const/16 p1, 0x16

    .line 511
    .line 512
    .line 513
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/analytics/r1$a;-><init>(II)V

    .line 514
    return-object p0
.end method

.method private static G0(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "-"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/o0;->H0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    aget-object v0, p0, v0

    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    aget-object p0, p0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static I0(Landroid/content/Context;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a0;->d(Landroid/content/Context;)Lcom/google/android/exoplayer2/util/a0;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/a0;->f()I

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    :pswitch_0
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :pswitch_1
    const/4 p0, 0x7

    .line 15
    return p0

    .line 16
    .line 17
    :pswitch_2
    const/16 p0, 0x8

    .line 18
    return p0

    .line 19
    :pswitch_3
    const/4 p0, 0x3

    .line 20
    return p0

    .line 21
    :pswitch_4
    const/4 p0, 0x6

    .line 22
    return p0

    .line 23
    :pswitch_5
    const/4 p0, 0x5

    .line 24
    return p0

    .line 25
    :pswitch_6
    const/4 p0, 0x4

    .line 26
    return p0

    .line 27
    :pswitch_7
    const/4 p0, 0x2

    .line 28
    return p0

    .line 29
    .line 30
    :pswitch_8
    const/16 p0, 0x9

    .line 31
    return p0

    .line 32
    :pswitch_9
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    nop

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static J0(Lcom/google/android/exoplayer2/i2;)I
    .locals 2

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2$h;->mimeType:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/o0;->k0(Landroid/net/Uri;Ljava/lang/String;)I

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_3

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    if-eq p0, v1, :cond_1

    .line 23
    return v0

    .line 24
    :cond_1
    const/4 p0, 0x4

    .line 25
    return p0

    .line 26
    :cond_2
    const/4 p0, 0x5

    .line 27
    return p0

    .line 28
    :cond_3
    const/4 p0, 0x3

    .line 29
    return p0
.end method

.method private static K0(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private L0(Lcom/google/android/exoplayer2/analytics/c$b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/analytics/c$b;->d()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/analytics/c$b;->b(I)I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/analytics/c$b;->c(I)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/analytics/s1;->d(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    const/16 v3, 0xb

    .line 26
    .line 27
    if-ne v1, v3, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 30
    .line 31
    iget v3, p0, Lcom/google/android/exoplayer2/analytics/r1;->discontinuityReason:I

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/s1;->c(Lcom/google/android/exoplayer2/analytics/c$a;I)V

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/analytics/s1;->f(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 41
    .line 42
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method

.method private M0(J)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/r1;->I0(Landroid/content/Context;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentNetworkType:I

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentNetworkType:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroidx/media3/exoplayer/analytics/k3;->a()Landroid/media/metrics/NetworkEvent$Builder;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v0}, Landroidx/media3/exoplayer/analytics/g3;->a(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->startTimeMs:J

    .line 25
    sub-long/2addr p1, v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/analytics/h3;->a(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/i3;->a(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p1}, Landroidx/media3/exoplayer/analytics/j3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    .line 37
    :cond_0
    return-void
.end method

.method private N0(J)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingPlayerError:Lcom/google/android/exoplayer2/z2;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->ioErrorType:I

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x1

    .line 12
    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    move v2, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/r1;->F0(Lcom/google/android/exoplayer2/z2;Landroid/content/Context;Z)Lcom/google/android/exoplayer2/analytics/r1$a;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroidx/media3/exoplayer/analytics/s1;->a()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iget-wide v5, p0, Lcom/google/android/exoplayer2/analytics/r1;->startTimeMs:J

    .line 29
    sub-long/2addr p1, v5

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p1, p2}, Landroidx/media3/exoplayer/analytics/r3;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget p2, v1, Lcom/google/android/exoplayer2/analytics/r1$a;->errorCode:I

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/s3;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iget p2, v1, Lcom/google/android/exoplayer2/analytics/r1$a;->subErrorCode:I

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/t1;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/analytics/u1;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/v1;->a(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {v2, p1}, Landroidx/media3/exoplayer/analytics/w1;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 57
    .line 58
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/analytics/r1;->reportedEventsForCurrentSession:Z

    .line 59
    const/4 p1, 0x0

    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingPlayerError:Lcom/google/android/exoplayer2/z2;

    .line 62
    return-void
.end method

.method private O0(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;J)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->isSeeking:Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->d()Lcom/google/android/exoplayer2/z2;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/analytics/r1;->hasFatalError:Z

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const/16 v0, 0xa

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/c$b;->a(I)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->hasFatalError:Z

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/r1;->W0(Lcom/google/android/exoplayer2/d3;)I

    .line 34
    move-result p1

    .line 35
    .line 36
    iget p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentPlaybackState:I

    .line 37
    .line 38
    if-eq p2, p1, :cond_3

    .line 39
    .line 40
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentPlaybackState:I

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->reportedEventsForCurrentSession:Z

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroidx/media3/exoplayer/analytics/z2;->a()Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentPlaybackState:I

    .line 51
    .line 52
    .line 53
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/analytics/c3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->startTimeMs:J

    .line 57
    sub-long/2addr p3, v0

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p3, p4}, Landroidx/media3/exoplayer/analytics/d3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-static {p2}, Landroidx/media3/exoplayer/analytics/e3;->a(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/f3;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 69
    :cond_3
    return-void
.end method

.method private P0(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;J)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/c$b;->a(I)Z

    .line 5
    move-result p2

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->e()Lcom/google/android/exoplayer2/e4;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/e4;->d(I)Z

    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/e4;->d(I)Z

    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/e4;->d(I)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    if-eqz p1, :cond_3

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/android/exoplayer2/analytics/r1;->U0(JLcom/google/android/exoplayer2/a2;I)V

    .line 39
    .line 40
    :cond_1
    if-nez v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/android/exoplayer2/analytics/r1;->Q0(JLcom/google/android/exoplayer2/a2;I)V

    .line 44
    .line 45
    :cond_2
    if-nez p1, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/android/exoplayer2/analytics/r1;->S0(JLcom/google/android/exoplayer2/a2;I)V

    .line 49
    .line 50
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/r1;->z0(Lcom/google/android/exoplayer2/analytics/r1$b;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 59
    .line 60
    iget-object p2, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 61
    .line 62
    iget v0, p2, Lcom/google/android/exoplayer2/a2;->height:I

    .line 63
    const/4 v2, -0x1

    .line 64
    .line 65
    if-eq v0, v2, :cond_4

    .line 66
    .line 67
    iget p1, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->selectionReason:I

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/google/android/exoplayer2/analytics/r1;->U0(JLcom/google/android/exoplayer2/a2;I)V

    .line 71
    .line 72
    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 73
    .line 74
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/r1;->z0(Lcom/google/android/exoplayer2/analytics/r1$b;)Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 83
    .line 84
    iget-object p2, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 85
    .line 86
    iget p1, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->selectionReason:I

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/google/android/exoplayer2/analytics/r1;->Q0(JLcom/google/android/exoplayer2/a2;I)V

    .line 90
    .line 91
    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 92
    .line 93
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/r1;->z0(Lcom/google/android/exoplayer2/analytics/r1$b;)Z

    .line 97
    move-result p1

    .line 98
    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 102
    .line 103
    iget-object p2, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 104
    .line 105
    iget p1, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->selectionReason:I

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/google/android/exoplayer2/analytics/r1;->S0(JLcom/google/android/exoplayer2/a2;I)V

    .line 109
    .line 110
    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 111
    :cond_6
    return-void
.end method

.method private Q0(JLcom/google/android/exoplayer2/a2;I)V
    .locals 6
    .param p3    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentAudioFormat:Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentAudioFormat:Lcom/google/android/exoplayer2/a2;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    const/4 p4, 0x1

    .line 17
    :cond_1
    move v5, p4

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentAudioFormat:Lcom/google/android/exoplayer2/a2;

    .line 20
    const/4 v1, 0x0

    .line 21
    move-object v0, p0

    .line 22
    move-wide v2, p1

    .line 23
    move-object v4, p3

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/r1;->V0(IJLcom/google/android/exoplayer2/a2;I)V

    .line 27
    return-void
.end method

.method private R0(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/c$b;->a(I)Z

    .line 5
    move-result v1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/c$b;->c(I)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/analytics/r1;->T0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)V

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/analytics/c$b;->a(I)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->e()Lcom/google/android/exoplayer2/e4;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/e4;->b()Lcom/google/common/collect/a0;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/r1;->D0(Lcom/google/common/collect/a0;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/p2;->a(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/r1;->E0(Lcom/google/android/exoplayer2/drm/DrmInitData;)I

    .line 61
    move-result p1

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/q2;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 65
    .line 66
    :cond_1
    const/16 p1, 0x3f3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/analytics/c$b;->a(I)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->audioUnderruns:I

    .line 75
    .line 76
    add-int/lit8 p1, p1, 0x1

    .line 77
    .line 78
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->audioUnderruns:I

    .line 79
    :cond_2
    return-void
.end method

.method private S0(JLcom/google/android/exoplayer2/a2;I)V
    .locals 6
    .param p3    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentTextFormat:Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentTextFormat:Lcom/google/android/exoplayer2/a2;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    const/4 p4, 0x1

    .line 17
    :cond_1
    move v5, p4

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentTextFormat:Lcom/google/android/exoplayer2/a2;

    .line 20
    const/4 v1, 0x2

    .line 21
    move-object v0, p0

    .line 22
    move-wide v2, p1

    .line 23
    move-object v4, p3

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/r1;->V0(IJLcom/google/android/exoplayer2/a2;I)V

    .line 27
    return-void
.end method

.method private T0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)V
    .locals 5
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/z3;->f(Ljava/lang/Object;)I

    .line 11
    move-result p2

    .line 12
    const/4 v1, -0x1

    .line 13
    .line 14
    if-ne p2, v1, :cond_1

    .line 15
    return-void

    .line 16
    .line 17
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/z3;->j(ILcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 23
    .line 24
    iget p2, p2, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplayer2/z3;->r(ILcom/google/android/exoplayer2/z3$d;)Lcom/google/android/exoplayer2/z3$d;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/exoplayer2/z3$d;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/r1;->J0(Lcom/google/android/exoplayer2/i2;)I

    .line 37
    move-result p1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/l3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 43
    .line 44
    iget-wide v1, p1, Lcom/google/android/exoplayer2/z3$d;->durationUs:J

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    cmp-long p2, v1, v3

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/z3$d;->isPlaceholder:Z

    .line 56
    .line 57
    if-nez p2, :cond_2

    .line 58
    .line 59
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/z3$d;->isDynamic:Z

    .line 60
    .line 61
    if-nez p2, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$d;->i()Z

    .line 65
    move-result p1

    .line 66
    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$d;->g()J

    .line 73
    move-result-wide p1

    .line 74
    .line 75
    .line 76
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/analytics/m3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 77
    .line 78
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/z3$d;->i()Z

    .line 82
    move-result p1

    .line 83
    const/4 p2, 0x1

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    const/4 p1, 0x2

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move p1, p2

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/analytics/n3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 92
    .line 93
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->reportedEventsForCurrentSession:Z

    .line 94
    return-void
.end method

.method private U0(JLcom/google/android/exoplayer2/a2;I)V
    .locals 6
    .param p3    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentVideoFormat:Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentVideoFormat:Lcom/google/android/exoplayer2/a2;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    const/4 p4, 0x1

    .line 17
    :cond_1
    move v5, p4

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentVideoFormat:Lcom/google/android/exoplayer2/a2;

    .line 20
    const/4 v1, 0x1

    .line 21
    move-object v0, p0

    .line 22
    move-wide v2, p1

    .line 23
    move-object v4, p3

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/r1;->V0(IJLcom/google/android/exoplayer2/a2;I)V

    .line 27
    return-void
.end method

.method private V0(IJLcom/google/android/exoplayer2/a2;I)V
    .locals 2
    .param p4    # Lcom/google/android/exoplayer2/a2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/d2;->a(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->startTimeMs:J

    .line 7
    sub-long/2addr p2, v0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/analytics/x1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    if-eqz p4, :cond_9

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/analytics/c2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 18
    .line 19
    .line 20
    invoke-static {p5}, Lcom/google/android/exoplayer2/analytics/r1;->K0(I)I

    .line 21
    move-result p3

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/g2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 25
    .line 26
    iget-object p3, p4, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/h2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 32
    .line 33
    :cond_0
    iget-object p3, p4, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/i2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 39
    .line 40
    :cond_1
    iget-object p3, p4, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/j2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 46
    .line 47
    :cond_2
    iget p3, p4, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 48
    const/4 p5, -0x1

    .line 49
    .line 50
    if-eq p3, p5, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/k2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 54
    .line 55
    :cond_3
    iget p3, p4, Lcom/google/android/exoplayer2/a2;->width:I

    .line 56
    .line 57
    if-eq p3, p5, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/l2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 61
    .line 62
    :cond_4
    iget p3, p4, Lcom/google/android/exoplayer2/a2;->height:I

    .line 63
    .line 64
    if-eq p3, p5, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/m2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 68
    .line 69
    :cond_5
    iget p3, p4, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 70
    .line 71
    if-eq p3, p5, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/n2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 75
    .line 76
    :cond_6
    iget p3, p4, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 77
    .line 78
    if-eq p3, p5, :cond_7

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/y1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 82
    .line 83
    :cond_7
    iget-object p3, p4, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz p3, :cond_8

    .line 86
    .line 87
    .line 88
    invoke-static {p3}, Lcom/google/android/exoplayer2/analytics/r1;->G0(Ljava/lang/String;)Landroid/util/Pair;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p5, Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p5}, Landroidx/media3/exoplayer/analytics/z1;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 97
    .line 98
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 99
    .line 100
    if-eqz p3, :cond_8

    .line 101
    .line 102
    check-cast p3, Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/a2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 106
    .line 107
    :cond_8
    iget p3, p4, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 108
    .line 109
    const/high16 p4, -0x40800000    # -1.0f

    .line 110
    .line 111
    cmpl-float p4, p3, p4

    .line 112
    .line 113
    if-eqz p4, :cond_a

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/b2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;F)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 117
    goto :goto_0

    .line 118
    :cond_9
    const/4 p3, 0x0

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/analytics/c2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 122
    .line 123
    :cond_a
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->reportedEventsForCurrentSession:Z

    .line 124
    .line 125
    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/e2;->a(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-static {p2, p1}, Landroidx/media3/exoplayer/analytics/f2;->a(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    .line 133
    return-void
.end method

.method private W0(Lcom/google/android/exoplayer2/d3;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getPlaybackState()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->isSeeking:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    const/4 p1, 0x5

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/r1;->hasFatalError:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/16 p1, 0xd

    .line 17
    return p1

    .line 18
    :cond_1
    const/4 v1, 0x4

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    const/16 p1, 0xb

    .line 23
    return p1

    .line 24
    :cond_2
    const/4 v2, 0x2

    .line 25
    .line 26
    if-ne v0, v2, :cond_7

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentPlaybackState:I

    .line 29
    .line 30
    if-eqz v0, :cond_6

    .line 31
    .line 32
    if-ne v0, v2, :cond_3

    .line 33
    goto :goto_1

    .line 34
    .line 35
    .line 36
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getPlayWhenReady()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_4

    .line 40
    const/4 p1, 0x7

    .line 41
    return p1

    .line 42
    .line 43
    .line 44
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->r()I

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_5

    .line 48
    .line 49
    const/16 p1, 0xa

    .line 50
    goto :goto_0

    .line 51
    :cond_5
    const/4 p1, 0x6

    .line 52
    :goto_0
    return p1

    .line 53
    :cond_6
    :goto_1
    return v2

    .line 54
    :cond_7
    const/4 v2, 0x3

    .line 55
    .line 56
    if-ne v0, v2, :cond_a

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->getPlayWhenReady()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_8

    .line 63
    return v1

    .line 64
    .line 65
    .line 66
    :cond_8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/d3;->r()I

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_9

    .line 70
    .line 71
    const/16 v2, 0x9

    .line 72
    :cond_9
    return v2

    .line 73
    :cond_a
    const/4 p1, 0x1

    .line 74
    .line 75
    if-ne v0, p1, :cond_b

    .line 76
    .line 77
    iget p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentPlaybackState:I

    .line 78
    .line 79
    if-eqz p1, :cond_b

    .line 80
    .line 81
    const/16 p1, 0xc

    .line 82
    return p1

    .line 83
    .line 84
    :cond_b
    iget p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->currentPlaybackState:I

    .line 85
    return p1
.end method

.method private z0(Lcom/google/android/exoplayer2/analytics/r1$b;)Z
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/analytics/r1$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->sessionId:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/analytics/s1;->a()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method


# virtual methods
.method public synthetic A(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/b;->k(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V

    return-void
.end method

.method public synthetic B(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/b;->c(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic C(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->E(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method public synthetic D(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->D(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    return-void
.end method

.method public synthetic E(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->a(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public F(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/x;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 8
    .line 9
    iget-object v1, p2, Lcom/google/android/exoplayer2/source/x;->trackFormat:Lcom/google/android/exoplayer2/a2;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/exoplayer2/a2;

    .line 16
    .line 17
    iget v2, p2, Lcom/google/android/exoplayer2/source/x;->trackSelectionReason:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 20
    .line 21
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/google/android/exoplayer2/source/b0$b;

    .line 30
    .line 31
    .line 32
    invoke-interface {v3, v4, p1}, Lcom/google/android/exoplayer2/analytics/s1;->g(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/r1$b;-><init>(Lcom/google/android/exoplayer2/a2;ILjava/lang/String;)V

    .line 37
    .line 38
    iget p1, p2, Lcom/google/android/exoplayer2/source/x;->trackType:I

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    const/4 p2, 0x1

    .line 42
    .line 43
    if-eq p1, p2, :cond_2

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    if-eq p1, p2, :cond_3

    .line 47
    const/4 p2, 0x3

    .line 48
    .line 49
    if-eq p1, p2, :cond_1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingTextFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingAudioFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 59
    :goto_0
    return-void
.end method

.method public G(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$e;Lcom/google/android/exoplayer2/d3$e;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->isSeeking:Z

    :cond_0
    iput p4, p0, Lcom/google/android/exoplayer2/analytics/r1;->discontinuityReason:I

    return-void
.end method

.method public synthetic H(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->l(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/d3$b;)V

    return-void
.end method

.method public H0()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/q3;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic I(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/b;->T(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic J(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->o(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic K(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->s(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public synthetic L(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->g0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic M(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->y(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;I)V

    return-void
.end method

.method public synthetic N(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->z(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic O(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->H(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    return-void
.end method

.method public synthetic P(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->J(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public synthetic Q(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->P(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V

    return-void
.end method

.method public synthetic R(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/b;->b(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public S(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/analytics/c$b;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/analytics/r1;->L0(Lcom/google/android/exoplayer2/analytics/c$b;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/r1;->R0(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/r1;->N0(J)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/analytics/r1;->P0(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;J)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/analytics/r1;->M0(J)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/analytics/r1;->O0(Lcom/google/android/exoplayer2/d3;Lcom/google/android/exoplayer2/analytics/c$b;J)V

    .line 30
    .line 31
    const/16 p1, 0x404

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/analytics/c$b;->a(I)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/analytics/c$b;->c(I)Lcom/google/android/exoplayer2/analytics/c$a;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/s1;->b(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 47
    :cond_1
    return-void
.end method

.method public synthetic T(Lcom/google/android/exoplayer2/analytics/c$a;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->Z(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;II)V

    return-void
.end method

.method public synthetic U(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->L(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;ZI)V

    return-void
.end method

.method public synthetic V(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->k0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    return-void
.end method

.method public synthetic W(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->a0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;I)V

    return-void
.end method

.method public synthetic X(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->W(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method

.method public synthetic Y(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->c0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/e4;)V

    return-void
.end method

.method public synthetic Z(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->x(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/analytics/c$a;JI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/b;->i0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;JI)V

    return-void
.end method

.method public synthetic a0(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->v(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->w(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method

.method public b0(Lcom/google/android/exoplayer2/analytics/c$a;IJJ)V
    .locals 5

    .line 1
    .line 2
    iget-object p5, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    .line 4
    if-eqz p5, :cond_2

    .line 5
    .line 6
    iget-object p6, p0, Lcom/google/android/exoplayer2/analytics/r1;->sessionManager:Lcom/google/android/exoplayer2/analytics/s1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 9
    .line 10
    .line 11
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p5

    .line 13
    .line 14
    check-cast p5, Lcom/google/android/exoplayer2/source/b0$b;

    .line 15
    .line 16
    .line 17
    invoke-interface {p6, p1, p5}, Lcom/google/android/exoplayer2/analytics/s1;->g(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object p5, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthBytes:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p5

    .line 25
    .line 26
    check-cast p5, Ljava/lang/Long;

    .line 27
    .line 28
    iget-object p6, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p6

    .line 33
    .line 34
    check-cast p6, Ljava/lang/Long;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthBytes:Ljava/util/HashMap;

    .line 37
    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    if-nez p5, :cond_0

    .line 41
    move-wide v3, v1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 46
    move-result-wide v3

    .line 47
    :goto_0
    add-long/2addr v3, p3

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    iget-object p3, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 57
    .line 58
    if-nez p6, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    .line 63
    move-result-wide v1

    .line 64
    :goto_1
    int-to-long p4, p2

    .line 65
    add-long/2addr v1, p4

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->O(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;I)V

    return-void
.end method

.method public synthetic c0(Lcom/google/android/exoplayer2/analytics/c$a;IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->t(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;IZ)V

    return-void
.end method

.method public synthetic d(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->f(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic d0(Lcom/google/android/exoplayer2/analytics/c$a;IIIF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/b;->l0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;IIIF)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    .line 2
    iget p1, p3, Lcom/google/android/exoplayer2/source/x;->dataType:I

    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->ioErrorType:I

    .line 5
    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/analytics/c$a;ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/b;->q(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic f(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->p(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic f0(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->S(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;I)V

    return-void
.end method

.method public synthetic g(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->K(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic g0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->m(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/text/f;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/analytics/c$a;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->R(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;ZI)V

    return-void
.end method

.method public synthetic h0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->M(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/c3;)V

    return-void
.end method

.method public synthetic i(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->N(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;I)V

    return-void
.end method

.method public synthetic i0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->e(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->j0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public synthetic j0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->h0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic k(Lcom/google/android/exoplayer2/analytics/c$a;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->i(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;J)V

    return-void
.end method

.method public synthetic k0(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->U(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;I)V

    return-void
.end method

.method public synthetic l(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->X(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    return-void
.end method

.method public synthetic l0(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->Q(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/analytics/c$a;IJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/b;->B(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;IJ)V

    return-void
.end method

.method public m0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/video/a0;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/exoplayer2/a2;->height:I

    .line 9
    const/4 v2, -0x1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget v1, p2, Lcom/google/android/exoplayer2/video/a0;->width:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->j0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget p2, p2, Lcom/google/android/exoplayer2/video/a0;->height:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/a2$b;->Q(I)Lcom/google/android/exoplayer2/a2$b;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 34
    .line 35
    iget v1, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->selectionReason:I

    .line 36
    .line 37
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/r1$b;->sessionId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/exoplayer2/analytics/r1$b;-><init>(Lcom/google/android/exoplayer2/a2;ILjava/lang/String;)V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingVideoFormat:Lcom/google/android/exoplayer2/analytics/r1$b;

    .line 43
    :cond_0
    return-void
.end method

.method public synthetic n(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->j(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public n0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->activeSessionId:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/r1;->B0()V

    .line 23
    .line 24
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->bandwidthBytes:Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public synthetic o(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->Y(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    return-void
.end method

.method public o0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/analytics/r1;->B0()V

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->activeSessionId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroidx/media3/exoplayer/analytics/o2;->a()Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    const-string v0, "ExoPlayerLib"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/analytics/a3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const-string v0, "2.18.2"

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/analytics/b3;->a(Landroid/media/metrics/PlaybackMetrics$Builder;Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 35
    .line 36
    iget-object p2, p1, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/analytics/r1;->T0(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)V

    .line 42
    return-void
.end method

.method public synthetic p(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->n(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/util/List;)V

    return-void
.end method

.method public synthetic p0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->g(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public synthetic q(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/b;->f0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic q0(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->u(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method

.method public synthetic r(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->d0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic r0(Lcom/google/android/exoplayer2/analytics/c$a;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->m0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;F)V

    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->I(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/i2;I)V

    return-void
.end method

.method public synthetic s0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->F(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method public synthetic t(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->b0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/trackselection/z;)V

    return-void
.end method

.method public synthetic t0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->d(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 1
    .line 2
    iget p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->droppedFrames:I

    .line 3
    .line 4
    iget v0, p2, Lcom/google/android/exoplayer2/decoder/e;->droppedBufferCount:I

    .line 5
    add-int/2addr p1, v0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->droppedFrames:I

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->playedFrames:I

    .line 10
    .line 11
    iget p2, p2, Lcom/google/android/exoplayer2/decoder/e;->renderedOutputBufferCount:I

    .line 12
    add-int/2addr p1, p2

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/analytics/r1;->playedFrames:I

    .line 15
    return-void
.end method

.method public u0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic v(Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->r(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;ILcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public synthetic v0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/b;->e0(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic w(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->V(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method

.method public synthetic w0(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->h(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/decoder/i;)V

    return-void
.end method

.method public synthetic x(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/b;->G(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    return-void
.end method

.method public synthetic x0(Lcom/google/android/exoplayer2/analytics/c$a;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/b;->C(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;Z)V

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/analytics/c$a;Lcom/google/android/exoplayer2/z2;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/r1;->pendingPlayerError:Lcom/google/android/exoplayer2/z2;

    return-void
.end method

.method public y0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/b;->A(Lcom/google/android/exoplayer2/analytics/c;Lcom/google/android/exoplayer2/analytics/c$a;)V

    return-void
.end method
