.class final Lcom/google/android/exoplayer2/source/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/y;
.implements Lcom/google/android/exoplayer2/extractor/n;
.implements Lcom/google/android/exoplayer2/upstream/g0$b;
.implements Lcom/google/android/exoplayer2/upstream/g0$f;
.implements Lcom/google/android/exoplayer2/source/v0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/q0$d;,
        Lcom/google/android/exoplayer2/source/q0$e;,
        Lcom/google/android/exoplayer2/source/q0$a;,
        Lcom/google/android/exoplayer2/source/q0$c;,
        Lcom/google/android/exoplayer2/source/q0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/y;",
        "Lcom/google/android/exoplayer2/extractor/n;",
        "Lcom/google/android/exoplayer2/upstream/g0$b<",
        "Lcom/google/android/exoplayer2/source/q0$a;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/g0$f;",
        "Lcom/google/android/exoplayer2/source/v0$d;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_SAMPLE_DURATION_US:J = 0x2710L

.field private static final ICY_FORMAT:Lcom/google/android/exoplayer2/a2;

.field private static final ICY_METADATA_HEADERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/b;

.field private callback:Lcom/google/android/exoplayer2/source/y$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final continueLoadingCheckIntervalBytes:J

.field private final customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSource:Lcom/google/android/exoplayer2/upstream/k;

.field private dataType:I

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

.field private durationUs:J

.field private enabledTrackCount:I

.field private extractedSamplesCountAtStartOfLoad:I

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoTracks:Z

.field private icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isLengthKnown:Z

.field private isLive:Z

.field private lastSeekPositionUs:J

.field private final listener:Lcom/google/android/exoplayer2/source/q0$b;

.field private final loadCondition:Lcom/google/android/exoplayer2/util/g;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field private final loader:Lcom/google/android/exoplayer2/upstream/g0;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

.field private notifyDiscontinuity:Z

.field private final onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

.field private pendingDeferredRetry:Z

.field private pendingResetPositionUs:J

.field private prepared:Z

.field private final progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/l0;

.field private released:Z

.field private sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/q0$d;

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

.field private sampleQueuesBuilt:Z

.field private seekMap:Lcom/google/android/exoplayer2/extractor/b0;

.field private seenFirstTrackSelection:Z

.field private trackState:Lcom/google/android/exoplayer2/source/q0$e;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/source/q0;->y()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/android/exoplayer2/source/q0;->ICY_METADATA_HEADERS:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 12
    .line 13
    const-string v1, "icy"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-string v1, "application/x-icy"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sput-object v0, Lcom/google/android/exoplayer2/source/q0;->ICY_FORMAT:Lcom/google/android/exoplayer2/a2;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/source/l0;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/source/h0$a;Lcom/google/android/exoplayer2/source/q0$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V
    .locals 0
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->uri:Landroid/net/Uri;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q0;->dataSource:Lcom/google/android/exoplayer2/upstream/k;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/q0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/q0;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 12
    .line 13
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/q0;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 14
    .line 15
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/q0;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/google/android/exoplayer2/source/q0;->listener:Lcom/google/android/exoplayer2/source/q0$b;

    .line 18
    .line 19
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/q0;->allocator:Lcom/google/android/exoplayer2/upstream/b;

    .line 20
    .line 21
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/q0;->customCacheKey:Ljava/lang/String;

    .line 22
    int-to-long p1, p11

    .line 23
    .line 24
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->continueLoadingCheckIntervalBytes:J

    .line 25
    .line 26
    new-instance p1, Lcom/google/android/exoplayer2/upstream/g0;

    .line 27
    .line 28
    const-string p2, "ProgressiveMediaPeriod"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/g0;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/q0;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/l0;

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/exoplayer2/util/g;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/g;-><init>()V

    .line 41
    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->loadCondition:Lcom/google/android/exoplayer2/util/g;

    .line 43
    .line 44
    new-instance p1, Lcom/google/android/exoplayer2/source/m0;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/m0;-><init>(Lcom/google/android/exoplayer2/source/q0;)V

    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 50
    .line 51
    new-instance p1, Lcom/google/android/exoplayer2/source/n0;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/n0;-><init>(Lcom/google/android/exoplayer2/source/q0;)V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->u()Landroid/os/Handler;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->handler:Landroid/os/Handler;

    .line 63
    const/4 p1, 0x0

    .line 64
    .line 65
    new-array p2, p1, [Lcom/google/android/exoplayer2/source/q0$d;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/q0$d;

    .line 68
    .line 69
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/v0;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    .line 78
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 79
    .line 80
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 81
    const/4 p1, 0x1

    .line 82
    .line 83
    iput p1, p0, Lcom/google/android/exoplayer2/source/q0;->dataType:I

    .line 84
    return-void
.end method

.method private A(Z)J
    .locals 5

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 6
    array-length v3, v3

    .line 7
    .line 8
    if-ge v2, v3, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 13
    .line 14
    .line 15
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Lcom/google/android/exoplayer2/source/q0$e;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/google/android/exoplayer2/source/q0$e;->trackEnabledStates:[Z

    .line 21
    .line 22
    aget-boolean v3, v3, v2

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 27
    .line 28
    aget-object v3, v3, v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/v0;->t()J

    .line 32
    move-result-wide v3

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-wide v0
.end method

.method private C()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic E()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->released:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/exoplayer2/source/y$a;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/x0$a;->c(Lcom/google/android/exoplayer2/source/x0;)V

    .line 16
    :cond_0
    return-void
.end method

.method private synthetic F()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->isLengthKnown:Z

    return-void
.end method

.method private synthetic G(Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q0;->U(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 4
    return-void
.end method

.method private H()V
    .locals 11

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->released:Z

    .line 3
    .line 4
    if-nez v0, :cond_a

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 7
    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueuesBuilt:Z

    .line 11
    .line 12
    if-eqz v0, :cond_a

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    .line 25
    :goto_0
    if-ge v3, v1, :cond_2

    .line 26
    .line 27
    aget-object v4, v0, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/v0;->z()Lcom/google/android/exoplayer2/a2;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loadCondition:Lcom/google/android/exoplayer2/util/g;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->c()Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 45
    array-length v0, v0

    .line 46
    .line 47
    new-array v1, v0, [Lcom/google/android/exoplayer2/source/f1;

    .line 48
    .line 49
    new-array v3, v0, [Z

    .line 50
    move v4, v2

    .line 51
    :goto_1
    const/4 v5, 0x1

    .line 52
    .line 53
    if-ge v4, v0, :cond_9

    .line 54
    .line 55
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 56
    .line 57
    aget-object v6, v6, v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/v0;->z()Lcom/google/android/exoplayer2/a2;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    .line 64
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    check-cast v6, Lcom/google/android/exoplayer2/a2;

    .line 68
    .line 69
    iget-object v7, v6, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/x;->l(Ljava/lang/String;)Z

    .line 73
    move-result v8

    .line 74
    .line 75
    if-nez v8, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/x;->o(Ljava/lang/String;)Z

    .line 79
    move-result v7

    .line 80
    .line 81
    if-eqz v7, :cond_3

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v7, v2

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    :goto_2
    move v7, v5

    .line 86
    .line 87
    :goto_3
    aput-boolean v7, v3, v4

    .line 88
    .line 89
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/q0;->haveAudioVideoTracks:Z

    .line 90
    or-int/2addr v7, v9

    .line 91
    .line 92
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/q0;->haveAudioVideoTracks:Z

    .line 93
    .line 94
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/q0;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 95
    .line 96
    if-eqz v7, :cond_8

    .line 97
    .line 98
    if-nez v8, :cond_5

    .line 99
    .line 100
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/q0$d;

    .line 101
    .line 102
    aget-object v9, v9, v4

    .line 103
    .line 104
    iget-boolean v9, v9, Lcom/google/android/exoplayer2/source/q0$d;->isIcyTrack:Z

    .line 105
    .line 106
    if-eqz v9, :cond_7

    .line 107
    .line 108
    :cond_5
    iget-object v9, v6, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 109
    .line 110
    if-nez v9, :cond_6

    .line 111
    .line 112
    new-instance v9, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 113
    .line 114
    new-array v10, v5, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 115
    .line 116
    aput-object v7, v10, v2

    .line 117
    .line 118
    .line 119
    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 120
    goto :goto_4

    .line 121
    .line 122
    :cond_6
    new-array v10, v5, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 123
    .line 124
    aput-object v7, v10, v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;->a([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 128
    move-result-object v9

    .line 129
    .line 130
    .line 131
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 132
    move-result-object v6

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/a2$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    .line 136
    move-result-object v6

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    :cond_7
    if-eqz v8, :cond_8

    .line 143
    .line 144
    iget v8, v6, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    .line 145
    const/4 v9, -0x1

    .line 146
    .line 147
    if-ne v8, v9, :cond_8

    .line 148
    .line 149
    iget v8, v6, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    .line 150
    .line 151
    if-ne v8, v9, :cond_8

    .line 152
    .line 153
    iget v8, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    .line 154
    .line 155
    if-eq v8, v9, :cond_8

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 159
    move-result-object v6

    .line 160
    .line 161
    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/a2$b;->G(I)Lcom/google/android/exoplayer2/a2$b;

    .line 165
    move-result-object v6

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 169
    move-result-object v6

    .line 170
    .line 171
    :cond_8
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/q0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 172
    .line 173
    .line 174
    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/drm/x;->c(Lcom/google/android/exoplayer2/a2;)I

    .line 175
    move-result v7

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/a2;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 179
    move-result-object v6

    .line 180
    .line 181
    new-instance v7, Lcom/google/android/exoplayer2/source/f1;

    .line 182
    .line 183
    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 185
    move-result-object v8

    .line 186
    .line 187
    new-array v5, v5, [Lcom/google/android/exoplayer2/a2;

    .line 188
    .line 189
    aput-object v6, v5, v2

    .line 190
    .line 191
    .line 192
    invoke-direct {v7, v8, v5}, Lcom/google/android/exoplayer2/source/f1;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/a2;)V

    .line 193
    .line 194
    aput-object v7, v1, v4

    .line 195
    .line 196
    add-int/lit8 v4, v4, 0x1

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/source/q0$e;

    .line 201
    .line 202
    new-instance v2, Lcom/google/android/exoplayer2/source/h1;

    .line 203
    .line 204
    .line 205
    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/h1;-><init>([Lcom/google/android/exoplayer2/source/f1;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/q0$e;-><init>(Lcom/google/android/exoplayer2/source/h1;[Z)V

    .line 209
    .line 210
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 211
    .line 212
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 213
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    check-cast v0, Lcom/google/android/exoplayer2/source/y$a;

    .line 221
    .line 222
    .line 223
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/y$a;->d(Lcom/google/android/exoplayer2/source/y;)V

    .line 224
    :cond_a
    :goto_5
    return-void
.end method

.method private I(I)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0$e;->trackNotifiedDownstreamFormats:[Z

    .line 8
    .line 9
    aget-boolean v2, v1, p1

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/q0$e;->tracks:Lcom/google/android/exoplayer2/source/h1;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/h1;->b(I)Lcom/google/android/exoplayer2/source/f1;

    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/f1;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 22
    move-result-object v5

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 25
    .line 26
    iget-object v0, v5, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/x;->i(Ljava/lang/String;)I

    .line 30
    move-result v4

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    .line 34
    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/q0;->lastSeekPositionUs:J

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/h0$a;->h(ILcom/google/android/exoplayer2/a2;ILjava/lang/Object;J)V

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    aput-boolean v0, v1, p1

    .line 41
    :cond_0
    return-void
.end method

.method private J(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/q0$e;->trackIsAudioVideoFlags:[Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingDeferredRetry:Z

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    aget-boolean v0, v0, p1

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 18
    .line 19
    aget-object p1, v0, p1

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/v0;->D(Z)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->pendingDeferredRetry:Z

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0;->notifyDiscontinuity:Z

    .line 37
    .line 38
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/q0;->lastSeekPositionUs:J

    .line 39
    .line 40
    iput v0, p0, Lcom/google/android/exoplayer2/source/q0;->extractedSamplesCountAtStartOfLoad:I

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 43
    array-length v1, p1

    .line 44
    .line 45
    :goto_0
    if-ge v0, v1, :cond_1

    .line 46
    .line 47
    aget-object v2, p1, v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/v0;->N()V

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    check-cast p1, Lcom/google/android/exoplayer2/source/y$a;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/x0$a;->c(Lcom/google/android/exoplayer2/source/x0;)V

    .line 65
    :cond_2
    :goto_1
    return-void
.end method

.method private M()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/source/o0;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/o0;-><init>(Lcom/google/android/exoplayer2/source/q0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private Q(Lcom/google/android/exoplayer2/source/q0$d;)Lcom/google/android/exoplayer2/extractor/e0;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/q0$d;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/q0$d;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 19
    .line 20
    aget-object p1, p1, v1

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q0;->allocator:Lcom/google/android/exoplayer2/upstream/b;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/q0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/v0;->k(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/drm/v$a;)Lcom/google/android/exoplayer2/source/v0;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/v0;->T(Lcom/google/android/exoplayer2/source/v0$d;)V

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/q0$d;

    .line 40
    .line 41
    add-int/lit8 v3, v0, 0x1

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, [Lcom/google/android/exoplayer2/source/q0$d;

    .line 48
    .line 49
    aput-object p1, v2, v0

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/o0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, [Lcom/google/android/exoplayer2/source/q0$d;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueueTrackIds:[Lcom/google/android/exoplayer2/source/q0$d;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, [Lcom/google/android/exoplayer2/source/v0;

    .line 66
    .line 67
    aput-object v1, p1, v0

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, [Lcom/google/android/exoplayer2/source/v0;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 76
    return-object v1
.end method

.method private T([ZJ)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 10
    .line 11
    aget-object v3, v3, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, p2, p3, v1}, Lcom/google/android/exoplayer2/source/v0;->Q(JZ)Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    aget-boolean v3, p1, v2

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/q0;->haveAudioVideoTracks:Z

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    :cond_0
    return v1

    .line 27
    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method private U(Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    move-object v0, p1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/b0$b;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    .line 17
    .line 18
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/b0;->getDurationUs()J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->isLengthKnown:Z

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/b0;->getDurationUs()J

    .line 33
    move-result-wide v4

    .line 34
    .line 35
    cmp-long v0, v4, v1

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    move v0, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    .line 42
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->isLive:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    const/4 v3, 0x7

    .line 46
    .line 47
    :cond_2
    iput v3, p0, Lcom/google/android/exoplayer2/source/q0;->dataType:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->listener:Lcom/google/android/exoplayer2/source/q0$b;

    .line 50
    .line 51
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/b0;->isSeekable()Z

    .line 55
    move-result p1

    .line 56
    .line 57
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/q0;->isLive:Z

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/source/q0$b;->q(JZZ)V

    .line 61
    .line 62
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->H()V

    .line 68
    :cond_3
    return-void
.end method

.method private W()V
    .locals 26

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    new-instance v8, Lcom/google/android/exoplayer2/source/q0$a;

    .line 5
    .line 6
    iget-object v2, v7, Lcom/google/android/exoplayer2/source/q0;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    iget-object v3, v7, Lcom/google/android/exoplayer2/source/q0;->dataSource:Lcom/google/android/exoplayer2/upstream/k;

    .line 9
    .line 10
    iget-object v4, v7, Lcom/google/android/exoplayer2/source/q0;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/l0;

    .line 11
    .line 12
    iget-object v6, v7, Lcom/google/android/exoplayer2/source/q0;->loadCondition:Lcom/google/android/exoplayer2/util/g;

    .line 13
    move-object v0, v8

    .line 14
    .line 15
    move-object/from16 v1, p0

    .line 16
    .line 17
    move-object/from16 v5, p0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/q0$a;-><init>(Lcom/google/android/exoplayer2/source/q0;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/source/l0;Lcom/google/android/exoplayer2/extractor/n;Lcom/google/android/exoplayer2/util/g;)V

    .line 21
    .line 22
    iget-boolean v0, v7, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/q0;->C()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 32
    .line 33
    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    cmp-long v4, v0, v2

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 45
    .line 46
    cmp-long v0, v4, v0

    .line 47
    .line 48
    if-lez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    iput-boolean v0, v7, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 52
    .line 53
    iput-wide v2, v7, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 54
    return-void

    .line 55
    .line 56
    :cond_0
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lcom/google/android/exoplayer2/extractor/b0;

    .line 63
    .line 64
    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/b0;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/b0$a;->first:Lcom/google/android/exoplayer2/extractor/c0;

    .line 71
    .line 72
    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/c0;->position:J

    .line 73
    .line 74
    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 75
    .line 76
    .line 77
    invoke-static {v8, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/q0$a;->f(Lcom/google/android/exoplayer2/source/q0$a;JJ)V

    .line 78
    .line 79
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 80
    array-length v1, v0

    .line 81
    const/4 v4, 0x0

    .line 82
    .line 83
    :goto_0
    if-ge v4, v1, :cond_1

    .line 84
    .line 85
    aget-object v5, v0, v4

    .line 86
    .line 87
    iget-wide v9, v7, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v9, v10}, Lcom/google/android/exoplayer2/source/v0;->R(J)V

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_1
    iput-wide v2, v7, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/q0;->z()I

    .line 99
    move-result v0

    .line 100
    .line 101
    iput v0, v7, Lcom/google/android/exoplayer2/source/q0;->extractedSamplesCountAtStartOfLoad:I

    .line 102
    .line 103
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 104
    .line 105
    iget-object v1, v7, Lcom/google/android/exoplayer2/source/q0;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 106
    .line 107
    iget v2, v7, Lcom/google/android/exoplayer2/source/q0;->dataType:I

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/f0;->b(I)I

    .line 111
    move-result v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/exoplayer2/upstream/g0;->n(Lcom/google/android/exoplayer2/upstream/g0$e;Lcom/google/android/exoplayer2/upstream/g0$b;I)J

    .line 115
    move-result-wide v13

    .line 116
    .line 117
    .line 118
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/q0$a;->d(Lcom/google/android/exoplayer2/source/q0$a;)Lcom/google/android/exoplayer2/upstream/o;

    .line 119
    move-result-object v12

    .line 120
    .line 121
    iget-object v15, v7, Lcom/google/android/exoplayer2/source/q0;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 122
    .line 123
    new-instance v16, Lcom/google/android/exoplayer2/source/u;

    .line 124
    .line 125
    .line 126
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/q0$a;->c(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 127
    move-result-wide v10

    .line 128
    .line 129
    move-object/from16 v9, v16

    .line 130
    .line 131
    .line 132
    invoke-direct/range {v9 .. v14}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;J)V

    .line 133
    .line 134
    const/16 v17, 0x1

    .line 135
    .line 136
    const/16 v18, -0x1

    .line 137
    .line 138
    const/16 v19, 0x0

    .line 139
    .line 140
    const/16 v20, 0x0

    .line 141
    .line 142
    const/16 v21, 0x0

    .line 143
    .line 144
    .line 145
    invoke-static {v8}, Lcom/google/android/exoplayer2/source/q0$a;->e(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 146
    move-result-wide v22

    .line 147
    .line 148
    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 149
    .line 150
    move-wide/from16 v24, v0

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {v15 .. v25}, Lcom/google/android/exoplayer2/source/h0$a;->u(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 154
    return-void
.end method

.method private X()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->notifyDiscontinuity:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->C()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/source/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->H()V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/source/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->F()V

    return-void
.end method

.method public static synthetic k(Lcom/google/android/exoplayer2/source/q0;Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q0;->G(Lcom/google/android/exoplayer2/extractor/b0;)V

    return-void
.end method

.method public static synthetic l(Lcom/google/android/exoplayer2/source/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->E()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/source/q0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/q0;->onContinueLoadingRequestedRunnable:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/source/q0;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/q0;->handler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/source/q0;Z)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q0;->A(Z)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic p()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/q0;->ICY_METADATA_HEADERS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/source/q0;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/q0;->customCacheKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/source/q0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->M()V

    .line 4
    return-void
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/source/q0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/q0;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/source/q0;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->icyHeaders:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 3
    return-object p1
.end method

.method static synthetic u()Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/q0;->ICY_FORMAT:Lcom/google/android/exoplayer2/a2;

    return-object v0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/source/q0;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q0;->continueLoadingCheckIntervalBytes:J

    .line 3
    return-wide v0
.end method

.method private w()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method private x(Lcom/google/android/exoplayer2/source/q0$a;I)Z
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->isLengthKnown:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->getDurationUs()J

    .line 13
    move-result-wide v2

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    cmp-long v0, v2, v4

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->X()Z

    .line 32
    move-result p2

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingDeferredRetry:Z

    .line 37
    return v0

    .line 38
    .line 39
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 40
    .line 41
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/q0;->notifyDiscontinuity:Z

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/q0;->lastSeekPositionUs:J

    .line 46
    .line 47
    iput v0, p0, Lcom/google/android/exoplayer2/source/q0;->extractedSamplesCountAtStartOfLoad:I

    .line 48
    .line 49
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 50
    array-length v4, p2

    .line 51
    .line 52
    :goto_0
    if-ge v0, v4, :cond_2

    .line 53
    .line 54
    aget-object v5, p2, v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/v0;->N()V

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {p1, v2, v3, v2, v3}, Lcom/google/android/exoplayer2/source/q0$a;->f(Lcom/google/android/exoplayer2/source/q0$a;JJ)V

    .line 64
    return v1

    .line 65
    .line 66
    :cond_3
    :goto_1
    iput p2, p0, Lcom/google/android/exoplayer2/source/q0;->extractedSamplesCountAtStartOfLoad:I

    .line 67
    return v1
.end method

.method private static y()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    const-string v1, "Icy-MetaData"

    .line 8
    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private z()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v4, v0, v2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/v0;->A()I

    .line 13
    move-result v4

    .line 14
    add-int/2addr v3, v4

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v3
.end method


# virtual methods
.method B()Lcom/google/android/exoplayer2/extractor/e0;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/q0$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/q0$d;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/q0;->Q(Lcom/google/android/exoplayer2/source/q0$d;)Lcom/google/android/exoplayer2/extractor/e0;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method D(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->X()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 9
    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/v0;->D(Z)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method K()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q0;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 5
    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/source/q0;->dataType:I

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/f0;->b(I)I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/g0;->k(I)V

    .line 14
    return-void
.end method

.method L(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/v0;->G()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/q0;->K()V

    .line 11
    return-void
.end method

.method public N(Lcom/google/android/exoplayer2/source/q0$a;JJZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->b(Lcom/google/android/exoplayer2/source/q0$a;)Lcom/google/android/exoplayer2/upstream/l0;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    new-instance v14, Lcom/google/android/exoplayer2/source/u;

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->c(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 11
    move-result-wide v3

    .line 12
    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->d(Lcom/google/android/exoplayer2/source/q0$a;)Lcom/google/android/exoplayer2/upstream/o;

    .line 15
    move-result-object v5

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->e()Landroid/net/Uri;

    .line 19
    move-result-object v6

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->f()Ljava/util/Map;

    .line 23
    move-result-object v7

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->d()J

    .line 27
    move-result-wide v12

    .line 28
    move-object v2, v14

    .line 29
    .line 30
    move-wide/from16 v8, p2

    .line 31
    .line 32
    move-wide/from16 v10, p4

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 36
    .line 37
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 38
    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->c(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 41
    move-result-wide v2

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/f0;->a(J)V

    .line 45
    .line 46
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/q0;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, -0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->e(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 55
    move-result-wide v9

    .line 56
    .line 57
    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 58
    move-object v3, v14

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/h0$a;->o(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 62
    .line 63
    if-nez p6, :cond_1

    .line 64
    .line 65
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 66
    array-length v2, v1

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    :goto_0
    if-ge v3, v2, :cond_0

    .line 70
    .line 71
    aget-object v4, v1, v3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/v0;->N()V

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 80
    .line 81
    if-lez v1, :cond_1

    .line 82
    .line 83
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    check-cast v1, Lcom/google/android/exoplayer2/source/y$a;

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/x0$a;->c(Lcom/google/android/exoplayer2/source/x0;)V

    .line 93
    :cond_1
    return-void
.end method

.method public O(Lcom/google/android/exoplayer2/source/q0$a;JJ)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    cmp-long v1, v1, v3

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/b0;->isSeekable()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/q0;->A(Z)J

    .line 26
    move-result-wide v3

    .line 27
    .line 28
    const-wide/high16 v5, -0x8000000000000000L

    .line 29
    .line 30
    cmp-long v5, v3, v5

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    const-wide/16 v3, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    const-wide/16 v5, 0x2710

    .line 38
    add-long/2addr v3, v5

    .line 39
    .line 40
    :goto_0
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 41
    .line 42
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/q0;->listener:Lcom/google/android/exoplayer2/source/q0$b;

    .line 43
    .line 44
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/q0;->isLive:Z

    .line 45
    .line 46
    .line 47
    invoke-interface {v5, v3, v4, v1, v6}, Lcom/google/android/exoplayer2/source/q0$b;->q(JZZ)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->b(Lcom/google/android/exoplayer2/source/q0$a;)Lcom/google/android/exoplayer2/upstream/l0;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    new-instance v15, Lcom/google/android/exoplayer2/source/u;

    .line 54
    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->c(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 57
    move-result-wide v4

    .line 58
    .line 59
    .line 60
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->d(Lcom/google/android/exoplayer2/source/q0$a;)Lcom/google/android/exoplayer2/upstream/o;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->e()Landroid/net/Uri;

    .line 65
    move-result-object v7

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->f()Ljava/util/Map;

    .line 69
    move-result-object v8

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->d()J

    .line 73
    move-result-wide v13

    .line 74
    move-object v3, v15

    .line 75
    .line 76
    move-wide/from16 v9, p2

    .line 77
    .line 78
    move-wide/from16 v11, p4

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 82
    .line 83
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 84
    .line 85
    .line 86
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->c(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 87
    move-result-wide v3

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->a(J)V

    .line 91
    .line 92
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/q0;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 93
    const/4 v5, 0x1

    .line 94
    const/4 v6, -0x1

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v8, 0x0

    .line 97
    const/4 v9, 0x0

    .line 98
    .line 99
    .line 100
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->e(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 101
    move-result-wide v10

    .line 102
    .line 103
    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 104
    move-object v4, v15

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/h0$a;->q(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 108
    .line 109
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 110
    .line 111
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    check-cast v1, Lcom/google/android/exoplayer2/source/y$a;

    .line 118
    .line 119
    .line 120
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/x0$a;->c(Lcom/google/android/exoplayer2/source/x0;)V

    .line 121
    return-void
.end method

.method public P(Lcom/google/android/exoplayer2/source/q0$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/g0$c;
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->b(Lcom/google/android/exoplayer2/source/q0$a;)Lcom/google/android/exoplayer2/upstream/l0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v14, Lcom/google/android/exoplayer2/source/u;

    .line 9
    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->c(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 12
    move-result-wide v3

    .line 13
    .line 14
    .line 15
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->d(Lcom/google/android/exoplayer2/source/q0$a;)Lcom/google/android/exoplayer2/upstream/o;

    .line 16
    move-result-object v5

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->e()Landroid/net/Uri;

    .line 20
    move-result-object v6

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->f()Ljava/util/Map;

    .line 24
    move-result-object v7

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/l0;->d()J

    .line 28
    move-result-wide v12

    .line 29
    move-object v2, v14

    .line 30
    .line 31
    move-wide/from16 v8, p2

    .line 32
    .line 33
    move-wide/from16 v10, p4

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/u;-><init>(JLcom/google/android/exoplayer2/upstream/o;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 37
    .line 38
    new-instance v1, Lcom/google/android/exoplayer2/source/x;

    .line 39
    .line 40
    const/16 v16, 0x1

    .line 41
    .line 42
    const/16 v17, -0x1

    .line 43
    .line 44
    const/16 v18, 0x0

    .line 45
    .line 46
    const/16 v19, 0x0

    .line 47
    .line 48
    const/16 v20, 0x0

    .line 49
    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->e(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 52
    move-result-wide v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 56
    move-result-wide v21

    .line 57
    .line 58
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 62
    move-result-wide v23

    .line 63
    move-object v15, v1

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v15 .. v24}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 67
    .line 68
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/q0;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 69
    .line 70
    new-instance v3, Lcom/google/android/exoplayer2/upstream/f0$a;

    .line 71
    .line 72
    move-object/from16 v13, p6

    .line 73
    .line 74
    move/from16 v4, p7

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v14, v1, v13, v4}, Lcom/google/android/exoplayer2/upstream/f0$a;-><init>(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/f0;->c(Lcom/google/android/exoplayer2/upstream/f0$a;)J

    .line 81
    move-result-wide v1

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    .line 88
    cmp-long v3, v1, v3

    .line 89
    const/4 v4, 0x1

    .line 90
    .line 91
    if-nez v3, :cond_0

    .line 92
    .line 93
    sget-object v1, Lcom/google/android/exoplayer2/upstream/g0;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 94
    .line 95
    move-object/from16 v15, p1

    .line 96
    goto :goto_1

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/q0;->z()I

    .line 100
    move-result v3

    .line 101
    .line 102
    iget v5, v0, Lcom/google/android/exoplayer2/source/q0;->extractedSamplesCountAtStartOfLoad:I

    .line 103
    .line 104
    if-le v3, v5, :cond_1

    .line 105
    .line 106
    move-object/from16 v15, p1

    .line 107
    move v5, v4

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const/4 v5, 0x0

    .line 110
    .line 111
    move-object/from16 v15, p1

    .line 112
    .line 113
    .line 114
    :goto_0
    invoke-direct {v0, v15, v3}, Lcom/google/android/exoplayer2/source/q0;->x(Lcom/google/android/exoplayer2/source/q0$a;I)Z

    .line 115
    move-result v3

    .line 116
    .line 117
    if-eqz v3, :cond_2

    .line 118
    .line 119
    .line 120
    invoke-static {v5, v1, v2}, Lcom/google/android/exoplayer2/upstream/g0;->g(ZJ)Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 121
    move-result-object v1

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/upstream/g0;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/g0$c;->c()Z

    .line 128
    move-result v2

    .line 129
    .line 130
    xor-int/lit8 v16, v2, 0x1

    .line 131
    .line 132
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/q0;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 133
    const/4 v4, 0x1

    .line 134
    const/4 v5, -0x1

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    .line 139
    .line 140
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->e(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 141
    move-result-wide v9

    .line 142
    .line 143
    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/q0;->durationUs:J

    .line 144
    move-object v3, v14

    .line 145
    .line 146
    move-object/from16 v13, p6

    .line 147
    .line 148
    move/from16 v14, v16

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/h0$a;->s(Lcom/google/android/exoplayer2/source/u;IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 152
    .line 153
    if-eqz v16, :cond_3

    .line 154
    .line 155
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/q0;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 156
    .line 157
    .line 158
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/q0$a;->c(Lcom/google/android/exoplayer2/source/q0$a;)J

    .line 159
    move-result-wide v3

    .line 160
    .line 161
    .line 162
    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/f0;->a(J)V

    .line 163
    :cond_3
    return-object v1
.end method

.method R(ILcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->X()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x3

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q0;->I(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 14
    .line 15
    aget-object v0, v0, p1

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/exoplayer2/source/v0;->K(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;IZ)I

    .line 21
    move-result p2

    .line 22
    .line 23
    if-ne p2, v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q0;->J(I)V

    .line 27
    :cond_1
    return p2
.end method

.method public S()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/v0;->J()V

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/g0;->m(Lcom/google/android/exoplayer2/upstream/g0$f;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->handler:Landroid/os/Handler;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/q0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 32
    const/4 v0, 0x1

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->released:Z

    .line 35
    return-void
.end method

.method V(IJ)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->X()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q0;->I(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 14
    .line 15
    aget-object v0, v0, p1

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/v0;->y(JZ)I

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/v0;->U(I)V

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/q0;->J(I)V

    .line 30
    :cond_1
    return p2
.end method

.method public a(Lcom/google/android/exoplayer2/a2;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    return-void
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/s;[Z[Lcom/google/android/exoplayer2/source/w0;[ZJ)J
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q0$e;->tracks:Lcom/google/android/exoplayer2/source/h1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/q0$e;->trackEnabledStates:[Z

    .line 10
    .line 11
    iget v2, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    array-length v5, p1

    .line 15
    const/4 v6, 0x1

    .line 16
    .line 17
    if-ge v4, v5, :cond_2

    .line 18
    .line 19
    aget-object v5, p3, v4

    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    aget-object v7, p1, v4

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    aget-boolean v7, p2, v4

    .line 28
    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    :cond_0
    check-cast v5, Lcom/google/android/exoplayer2/source/q0$c;

    .line 32
    .line 33
    .line 34
    invoke-static {v5}, Lcom/google/android/exoplayer2/source/q0$c;->b(Lcom/google/android/exoplayer2/source/q0$c;)I

    .line 35
    move-result v5

    .line 36
    .line 37
    aget-boolean v7, v0, v5

    .line 38
    .line 39
    .line 40
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 41
    .line 42
    iget v7, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 43
    sub-int/2addr v7, v6

    .line 44
    .line 45
    iput v7, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 46
    .line 47
    aput-boolean v3, v0, v5

    .line 48
    const/4 v5, 0x0

    .line 49
    .line 50
    aput-object v5, p3, v4

    .line 51
    .line 52
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/q0;->seenFirstTrackSelection:Z

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    :goto_1
    move p2, v6

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move p2, v3

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_4
    const-wide/16 v4, 0x0

    .line 66
    .line 67
    cmp-long p2, p5, v4

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    goto :goto_1

    .line 71
    :goto_2
    move v2, v3

    .line 72
    :goto_3
    array-length v4, p1

    .line 73
    .line 74
    if-ge v2, v4, :cond_9

    .line 75
    .line 76
    aget-object v4, p3, v2

    .line 77
    .line 78
    if-nez v4, :cond_8

    .line 79
    .line 80
    aget-object v4, p1, v2

    .line 81
    .line 82
    if-eqz v4, :cond_8

    .line 83
    .line 84
    .line 85
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/v;->length()I

    .line 86
    move-result v5

    .line 87
    .line 88
    if-ne v5, v6, :cond_5

    .line 89
    move v5, v6

    .line 90
    goto :goto_4

    .line 91
    :cond_5
    move v5, v3

    .line 92
    .line 93
    .line 94
    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v4, v3}, Lcom/google/android/exoplayer2/trackselection/v;->getIndexInTrackGroup(I)I

    .line 98
    move-result v5

    .line 99
    .line 100
    if-nez v5, :cond_6

    .line 101
    move v5, v6

    .line 102
    goto :goto_5

    .line 103
    :cond_6
    move v5, v3

    .line 104
    .line 105
    .line 106
    :goto_5
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v4}, Lcom/google/android/exoplayer2/trackselection/v;->getTrackGroup()Lcom/google/android/exoplayer2/source/f1;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/h1;->c(Lcom/google/android/exoplayer2/source/f1;)I

    .line 114
    move-result v4

    .line 115
    .line 116
    aget-boolean v5, v0, v4

    .line 117
    xor-int/2addr v5, v6

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 121
    .line 122
    iget v5, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 123
    add-int/2addr v5, v6

    .line 124
    .line 125
    iput v5, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 126
    .line 127
    aput-boolean v6, v0, v4

    .line 128
    .line 129
    new-instance v5, Lcom/google/android/exoplayer2/source/q0$c;

    .line 130
    .line 131
    .line 132
    invoke-direct {v5, p0, v4}, Lcom/google/android/exoplayer2/source/q0$c;-><init>(Lcom/google/android/exoplayer2/source/q0;I)V

    .line 133
    .line 134
    aput-object v5, p3, v2

    .line 135
    .line 136
    aput-boolean v6, p4, v2

    .line 137
    .line 138
    if-nez p2, :cond_8

    .line 139
    .line 140
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 141
    .line 142
    aget-object p2, p2, v4

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p5, p6, v6}, Lcom/google/android/exoplayer2/source/v0;->Q(JZ)Z

    .line 146
    move-result v4

    .line 147
    .line 148
    if-nez v4, :cond_7

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/v0;->w()I

    .line 152
    move-result p2

    .line 153
    .line 154
    if-eqz p2, :cond_7

    .line 155
    move p2, v6

    .line 156
    goto :goto_6

    .line 157
    :cond_7
    move p2, v3

    .line 158
    .line 159
    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 160
    goto :goto_3

    .line 161
    .line 162
    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 163
    .line 164
    if-nez p1, :cond_c

    .line 165
    .line 166
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/q0;->pendingDeferredRetry:Z

    .line 167
    .line 168
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/q0;->notifyDiscontinuity:Z

    .line 169
    .line 170
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/g0;->i()Z

    .line 174
    move-result p1

    .line 175
    .line 176
    if-eqz p1, :cond_b

    .line 177
    .line 178
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 179
    array-length p2, p1

    .line 180
    .line 181
    :goto_7
    if-ge v3, p2, :cond_a

    .line 182
    .line 183
    aget-object p3, p1, v3

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/v0;->p()V

    .line 187
    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 189
    goto :goto_7

    .line 190
    .line 191
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/g0;->e()V

    .line 195
    goto :goto_a

    .line 196
    .line 197
    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 198
    array-length p2, p1

    .line 199
    .line 200
    :goto_8
    if-ge v3, p2, :cond_e

    .line 201
    .line 202
    aget-object p3, p1, v3

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/v0;->N()V

    .line 206
    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 208
    goto :goto_8

    .line 209
    .line 210
    :cond_c
    if-eqz p2, :cond_e

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/q0;->seekToUs(J)J

    .line 214
    move-result-wide p5

    .line 215
    :goto_9
    array-length p1, p3

    .line 216
    .line 217
    if-ge v3, p1, :cond_e

    .line 218
    .line 219
    aget-object p1, p3, v3

    .line 220
    .line 221
    if-eqz p1, :cond_d

    .line 222
    .line 223
    aput-boolean v6, p4, v3

    .line 224
    .line 225
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 226
    goto :goto_9

    .line 227
    .line 228
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/q0;->seenFirstTrackSelection:Z

    .line 229
    return-wide p5
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/upstream/g0$e;JJZ)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/q0$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/q0;->N(Lcom/google/android/exoplayer2/source/q0$a;JJZ)V

    .line 6
    return-void
.end method

.method public continueLoading(J)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/g0;->h()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingDeferredRetry:Z

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget p1, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->loadCondition:Lcom/google/android/exoplayer2/util/g;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/g0;->i()Z

    .line 37
    move-result p2

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->W()V

    .line 43
    const/4 p1, 0x1

    .line 44
    :cond_1
    return p1

    .line 45
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public bridge synthetic d(Lcom/google/android/exoplayer2/upstream/g0$e;JJ)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/q0$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/q0;->O(Lcom/google/android/exoplayer2/source/q0$a;JJ)V

    .line 6
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->C()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/q0$e;->trackEnabledStates:[Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 17
    array-length v1, v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 23
    .line 24
    aget-object v3, v3, v2

    .line 25
    .line 26
    aget-boolean v4, v0, v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/exoplayer2/source/v0;->o(JZZ)V

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method public e(JLcom/google/android/exoplayer2/r3;)J
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->isSeekable()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/16 p1, 0x0

    .line 14
    return-wide p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/b0;->getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/b0$a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/b0$a;->first:Lcom/google/android/exoplayer2/extractor/c0;

    .line 23
    .line 24
    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/c0;->timeUs:J

    .line 25
    .line 26
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/b0$a;->second:Lcom/google/android/exoplayer2/extractor/c0;

    .line 27
    .line 28
    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/c0;->timeUs:J

    .line 29
    move-object v2, p3

    .line 30
    move-wide v3, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/exoplayer2/r3;->a(JJJ)J

    .line 34
    move-result-wide p1

    .line 35
    return-wide p1
.end method

.method public endTracks()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueuesBuilt:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q0;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/source/y$a;J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->callback:Lcom/google/android/exoplayer2/source/y$a;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q0;->loadCondition:Lcom/google/android/exoplayer2/util/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/g;->e()Z

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->W()V

    .line 11
    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/upstream/g0$e;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/g0$c;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/q0$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/q0;->P(Lcom/google/android/exoplayer2/source/q0$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/g0$c;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getBufferedPositionUs()J
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 6
    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    if-nez v0, :cond_7

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/exoplayer2/source/q0;->enabledTrackCount:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->C()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 23
    return-wide v0

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->haveAudioVideoTracks:Z

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v4, 0x7fffffffffffffffL

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 36
    array-length v0, v0

    .line 37
    move v6, v3

    .line 38
    move-wide v7, v4

    .line 39
    .line 40
    :goto_0
    if-ge v6, v0, :cond_4

    .line 41
    .line 42
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 43
    .line 44
    iget-object v10, v9, Lcom/google/android/exoplayer2/source/q0$e;->trackIsAudioVideoFlags:[Z

    .line 45
    .line 46
    aget-boolean v10, v10, v6

    .line 47
    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    iget-object v9, v9, Lcom/google/android/exoplayer2/source/q0$e;->trackEnabledStates:[Z

    .line 51
    .line 52
    aget-boolean v9, v9, v6

    .line 53
    .line 54
    if-eqz v9, :cond_2

    .line 55
    .line 56
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 57
    .line 58
    aget-object v9, v9, v6

    .line 59
    .line 60
    .line 61
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/v0;->C()Z

    .line 62
    move-result v9

    .line 63
    .line 64
    if-nez v9, :cond_2

    .line 65
    .line 66
    iget-object v9, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 67
    .line 68
    aget-object v9, v9, v6

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/v0;->t()J

    .line 72
    move-result-wide v9

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 76
    move-result-wide v7

    .line 77
    .line 78
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move-wide v7, v4

    .line 81
    .line 82
    :cond_4
    cmp-long v0, v7, v4

    .line 83
    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/q0;->A(Z)J

    .line 88
    move-result-wide v7

    .line 89
    .line 90
    :cond_5
    cmp-long v0, v7, v1

    .line 91
    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/q0;->lastSeekPositionUs:J

    .line 95
    :cond_6
    return-wide v7

    .line 96
    :cond_7
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/q0;->getBufferedPositionUs()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/h1;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/q0$e;->tracks:Lcom/google/android/exoplayer2/source/h1;

    .line 8
    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/source/p0;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/p0;-><init>(Lcom/google/android/exoplayer2/source/q0;Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->i()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loadCondition:Lcom/google/android/exoplayer2/util/g;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/g;->d()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/q0;->K()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->prepared:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 19
    move-result-object v0

    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/v0;->L()V

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->progressiveMediaExtractor:Lcom/google/android/exoplayer2/source/l0;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/l0;->release()V

    .line 20
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->notifyDiscontinuity:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->z()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/exoplayer2/source/q0;->extractedSamplesCountAtStartOfLoad:I

    .line 15
    .line 16
    if-le v0, v1, :cond_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/q0;->notifyDiscontinuity:Z

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q0;->lastSeekPositionUs:J

    .line 22
    return-wide v0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->trackState:Lcom/google/android/exoplayer2/source/q0$e;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/q0$e;->trackIsAudioVideoFlags:[Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q0;->seekMap:Lcom/google/android/exoplayer2/extractor/b0;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/b0;->isSeekable()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-wide/16 p1, 0x0

    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/q0;->notifyDiscontinuity:Z

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->lastSeekPositionUs:J

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/q0;->C()Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 32
    return-wide p1

    .line 33
    .line 34
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/source/q0;->dataType:I

    .line 35
    const/4 v3, 0x7

    .line 36
    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/q0;->T([ZJ)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    return-wide p1

    .line 45
    .line 46
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingDeferredRetry:Z

    .line 47
    .line 48
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q0;->pendingResetPositionUs:J

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/q0;->loadingFinished:Z

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->i()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 61
    array-length v2, v0

    .line 62
    .line 63
    :goto_1
    if-ge v1, v2, :cond_3

    .line 64
    .line 65
    aget-object v3, v0, v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/v0;->p()V

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->e()V

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->f()V

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q0;->sampleQueues:[Lcom/google/android/exoplayer2/source/v0;

    .line 85
    array-length v2, v0

    .line 86
    .line 87
    :goto_2
    if-ge v1, v2, :cond_5

    .line 88
    .line 89
    aget-object v3, v0, v1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/v0;->N()V

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    :goto_3
    return-wide p1
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/e0;
    .locals 1

    .line 1
    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/source/q0$d;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p2, p1, v0}, Lcom/google/android/exoplayer2/source/q0$d;-><init>(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/q0;->Q(Lcom/google/android/exoplayer2/source/q0$d;)Lcom/google/android/exoplayer2/extractor/e0;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
