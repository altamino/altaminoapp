.class public Lcom/google/android/exoplayer2/source/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/e0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/v0$c;,
        Lcom/google/android/exoplayer2/source/v0$b;,
        Lcom/google/android/exoplayer2/source/v0$d;
    }
.end annotation


# static fields
.field static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SampleQueue"


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Lcom/google/android/exoplayer2/extractor/e0$a;

.field private currentDrmSession:Lcom/google/android/exoplayer2/drm/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private downstreamFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/v0$b;

.field private flags:[I

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private loggedUnexpectedNonSyncSample:Z

.field private offsets:[J

.field private pendingSplice:Z

.field private readPosition:I

.field private relativeFirstIndex:I

.field private final sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

.field private sampleOffsetUs:J

.field private final sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/d1<",
            "Lcom/google/android/exoplayer2/source/v0$c;",
            ">;"
        }
    .end annotation
.end field

.field private sizes:[I

.field private sourceIds:[I

.field private startTimeUs:J

.field private timesUs:[J

.field private unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private upstreamAllSamplesAreSyncSamples:Z

.field private upstreamFormat:Lcom/google/android/exoplayer2/a2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private upstreamFormatAdjustmentRequired:Z

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/v0$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/drm/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 8
    .line 9
    new-instance p2, Lcom/google/android/exoplayer2/source/t0;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/t0;-><init>(Lcom/google/android/exoplayer2/upstream/b;)V

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 15
    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/source/v0$b;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/v0$b;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->extrasHolder:Lcom/google/android/exoplayer2/source/v0$b;

    .line 22
    .line 23
    const/16 p1, 0x3e8

    .line 24
    .line 25
    iput p1, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    .line 26
    .line 27
    new-array p2, p1, [I

    .line 28
    .line 29
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->sourceIds:[I

    .line 30
    .line 31
    new-array p2, p1, [J

    .line 32
    .line 33
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 34
    .line 35
    new-array p2, p1, [J

    .line 36
    .line 37
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 38
    .line 39
    new-array p2, p1, [I

    .line 40
    .line 41
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 42
    .line 43
    new-array p2, p1, [I

    .line 44
    .line 45
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 46
    .line 47
    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 50
    .line 51
    new-instance p1, Lcom/google/android/exoplayer2/source/d1;

    .line 52
    .line 53
    new-instance p2, Lcom/google/android/exoplayer2/source/u0;

    .line 54
    .line 55
    .line 56
    invoke-direct {p2}, Lcom/google/android/exoplayer2/source/u0;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/d1;-><init>(Lcom/google/android/exoplayer2/util/h;)V

    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 62
    .line 63
    const-wide/high16 p1, -0x8000000000000000L

    .line 64
    .line 65
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/v0;->startTimeUs:J

    .line 66
    .line 67
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/v0;->largestDiscardedTimestampUs:J

    .line 68
    .line 69
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J

    .line 70
    const/4 p1, 0x1

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatRequired:Z

    .line 73
    .line 74
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamKeyframeRequired:Z

    .line 75
    return-void
.end method

.method private B()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic E(Lcom/google/android/exoplayer2/source/v0$c;)V
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/v0$c;->drmSessionReference:Lcom/google/android/exoplayer2/drm/x$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/x$b;->release()V

    .line 6
    return-void
.end method

.method private F(I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/n;->getState()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 14
    .line 15
    aget p1, v0, p1

    .line 16
    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    and-int/2addr p1, v0

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/n;->a()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private H(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/b2;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->downstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 14
    .line 15
    :goto_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->downstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/drm/x;->c(Lcom/google/android/exoplayer2/a2;)I

    .line 25
    move-result v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/a2;->c(I)Lcom/google/android/exoplayer2/a2;

    .line 29
    move-result-object v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move-object v3, p1

    .line 32
    .line 33
    :goto_2
    iput-object v3, p2, Lcom/google/android/exoplayer2/b2;->format:Lcom/google/android/exoplayer2/a2;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 36
    .line 37
    iput-object v3, p2, Lcom/google/android/exoplayer2/b2;->drmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 40
    .line 41
    if-nez v3, :cond_3

    .line 42
    return-void

    .line 43
    .line 44
    :cond_3
    if-nez v1, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    return-void

    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/v0;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v2, p1}, Lcom/google/android/exoplayer2/drm/x;->a(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/n;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 64
    .line 65
    iput-object p1, p2, Lcom/google/android/exoplayer2/b2;->drmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/n;->e(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 73
    :cond_5
    return-void
.end method

.method private declared-synchronized I(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;ZZLcom/google/android/exoplayer2/source/v0$b;)I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/decoder/g;->waitingForKeys:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->B()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x4

    .line 10
    const/4 v2, -0x3

    .line 11
    const/4 v3, -0x5

    .line 12
    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    if-nez p4, :cond_3

    .line 16
    .line 17
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/v0;->isLastSampleQueued:Z

    .line 18
    .line 19
    if-eqz p4, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->downstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 29
    .line 30
    if-eq p2, p3, :cond_2

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_3

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Lcom/google/android/exoplayer2/a2;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/v0;->H(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/b2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return v3

    .line 45
    :cond_2
    monitor-exit p0

    .line 46
    return v2

    .line 47
    :cond_3
    :goto_1
    const/4 p1, 0x4

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/a;->k(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    .line 52
    return v1

    .line 53
    .line 54
    :cond_4
    :try_start_2
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/v0;->w()I

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/source/d1;->f(I)Ljava/lang/Object;

    .line 62
    move-result-object p4

    .line 63
    .line 64
    check-cast p4, Lcom/google/android/exoplayer2/source/v0$c;

    .line 65
    .line 66
    iget-object p4, p4, Lcom/google/android/exoplayer2/source/v0$c;->format:Lcom/google/android/exoplayer2/a2;

    .line 67
    .line 68
    if-nez p3, :cond_8

    .line 69
    .line 70
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->downstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 71
    .line 72
    if-eq p4, p3, :cond_5

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_5
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 79
    move-result p1

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->F(I)Z

    .line 83
    move-result p3

    .line 84
    .line 85
    if-nez p3, :cond_6

    .line 86
    const/4 p1, 0x1

    .line 87
    .line 88
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/g;->waitingForKeys:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    monitor-exit p0

    .line 90
    return v2

    .line 91
    .line 92
    :cond_6
    :try_start_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 93
    .line 94
    aget p3, p3, p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/decoder/a;->k(I)V

    .line 98
    .line 99
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 100
    .line 101
    aget-wide v2, p3, p1

    .line 102
    .line 103
    iput-wide v2, p2, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 104
    .line 105
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/v0;->startTimeUs:J

    .line 106
    .line 107
    cmp-long p3, v2, p3

    .line 108
    .line 109
    if-gez p3, :cond_7

    .line 110
    .line 111
    const/high16 p3, -0x80000000

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 115
    .line 116
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 117
    .line 118
    aget p2, p2, p1

    .line 119
    .line 120
    iput p2, p5, Lcom/google/android/exoplayer2/source/v0$b;->size:I

    .line 121
    .line 122
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 123
    .line 124
    aget-wide p3, p2, p1

    .line 125
    .line 126
    iput-wide p3, p5, Lcom/google/android/exoplayer2/source/v0$b;->offset:J

    .line 127
    .line 128
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 129
    .line 130
    aget-object p1, p2, p1

    .line 131
    .line 132
    iput-object p1, p5, Lcom/google/android/exoplayer2/source/v0$b;->cryptoData:Lcom/google/android/exoplayer2/extractor/e0$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    monitor-exit p0

    .line 134
    return v1

    .line 135
    .line 136
    .line 137
    :cond_8
    :goto_2
    :try_start_4
    invoke-direct {p0, p4, p1}, Lcom/google/android/exoplayer2/source/v0;->H(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/b2;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    monitor-exit p0

    .line 139
    return v3

    .line 140
    :goto_3
    monitor-exit p0

    .line 141
    throw p1
.end method

.method private M()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/n;->e(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->downstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 15
    :cond_0
    return-void
.end method

.method private declared-synchronized P()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/t0;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method private declared-synchronized S(Lcom/google/android/exoplayer2/a2;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatRequired:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    monitor-exit p0

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/d1;->h()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/d1;->g()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/google/android/exoplayer2/source/v0$c;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/v0$c;->format:Lcom/google/android/exoplayer2/a2;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/a2;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/d1;->g()Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/google/android/exoplayer2/source/v0$c;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/v0$c;->format:Lcom/google/android/exoplayer2/a2;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 58
    .line 59
    iget-object v1, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    move-result p1

    .line 66
    .line 67
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamAllSamplesAreSyncSamples:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/v0;->loggedUnexpectedNonSyncSample:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit p0

    .line 71
    const/4 p1, 0x1

    .line 72
    return p1

    .line 73
    :goto_1
    monitor-exit p0

    .line 74
    throw p1
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/source/v0$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/v0;->E(Lcom/google/android/exoplayer2/source/v0$c;)V

    return-void
.end method

.method private declared-synchronized h(J)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/v0;->largestDiscardedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    cmp-long p1, p1, v3

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    move v1, v2

    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/v0;->u()J

    .line 22
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    cmp-long v0, v3, p1

    .line 25
    .line 26
    if-ltz v0, :cond_2

    .line 27
    monitor-exit p0

    .line 28
    return v1

    .line 29
    .line 30
    .line 31
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/v0;->j(J)I

    .line 32
    move-result p1

    .line 33
    .line 34
    iget p2, p0, Lcom/google/android/exoplayer2/source/v0;->absoluteFirstIndex:I

    .line 35
    add-int/2addr p2, p1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/v0;->q(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return v2

    .line 41
    :goto_0
    monitor-exit p0

    .line 42
    throw p1
.end method

.method private declared-synchronized i(JIJILcom/google/android/exoplayer2/extractor/e0$a;)V
    .locals 8
    .param p7    # Lcom/google/android/exoplayer2/extractor/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 15
    .line 16
    aget-wide v4, v3, v0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 19
    .line 20
    aget v0, v3, v0

    .line 21
    int-to-long v6, v0

    .line 22
    add-long/2addr v4, v6

    .line 23
    .line 24
    cmp-long v0, v4, p4

    .line 25
    .line 26
    if-gtz v0, :cond_0

    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    :goto_1
    const/high16 v0, 0x20000000

    .line 39
    and-int/2addr v0, p3

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    move v0, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v0, v2

    .line 45
    .line 46
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/v0;->isLastSampleQueued:Z

    .line 47
    .line 48
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 52
    move-result-wide v3

    .line 53
    .line 54
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J

    .line 55
    .line 56
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 63
    .line 64
    aput-wide p1, v3, v0

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 67
    .line 68
    aput-wide p4, p1, v0

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 71
    .line 72
    aput p6, p1, v0

    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 75
    .line 76
    aput p3, p1, v0

    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 79
    .line 80
    aput-object p7, p1, v0

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sourceIds:[I

    .line 83
    .line 84
    iget p2, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamSourceId:I

    .line 85
    .line 86
    aput p2, p1, v0

    .line 87
    .line 88
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/d1;->h()Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/d1;->g()Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    check-cast p1, Lcom/google/android/exoplayer2/source/v0$c;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/v0$c;->format:Lcom/google/android/exoplayer2/a2;

    .line 105
    .line 106
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/a2;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->drmSessionManager:Lcom/google/android/exoplayer2/drm/x;

    .line 115
    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 119
    .line 120
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/drm/x;->b(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/x$b;

    .line 124
    move-result-object p1

    .line 125
    goto :goto_3

    .line 126
    .line 127
    :cond_4
    sget-object p1, Lcom/google/android/exoplayer2/drm/x$b;->EMPTY:Lcom/google/android/exoplayer2/drm/x$b;

    .line 128
    .line 129
    :goto_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/v0;->A()I

    .line 133
    move-result p3

    .line 134
    .line 135
    new-instance p4, Lcom/google/android/exoplayer2/source/v0$c;

    .line 136
    .line 137
    iget-object p5, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 138
    .line 139
    .line 140
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object p5

    .line 142
    .line 143
    check-cast p5, Lcom/google/android/exoplayer2/a2;

    .line 144
    const/4 p6, 0x0

    .line 145
    .line 146
    .line 147
    invoke-direct {p4, p5, p1, p6}, Lcom/google/android/exoplayer2/source/v0$c;-><init>(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/drm/x$b;Lcom/google/android/exoplayer2/source/v0$a;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/source/d1;->b(ILjava/lang/Object;)V

    .line 151
    .line 152
    :cond_5
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 153
    add-int/2addr p1, v1

    .line 154
    .line 155
    iput p1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 156
    .line 157
    iget p2, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    .line 158
    .line 159
    if-ne p1, p2, :cond_6

    .line 160
    .line 161
    add-int/lit16 p1, p2, 0x3e8

    .line 162
    .line 163
    new-array p3, p1, [I

    .line 164
    .line 165
    new-array p4, p1, [J

    .line 166
    .line 167
    new-array p5, p1, [J

    .line 168
    .line 169
    new-array p6, p1, [I

    .line 170
    .line 171
    new-array p7, p1, [I

    .line 172
    .line 173
    new-array v0, p1, [Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 174
    .line 175
    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 176
    sub-int/2addr p2, v1

    .line 177
    .line 178
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 184
    .line 185
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 191
    .line 192
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 193
    .line 194
    .line 195
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    .line 197
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 198
    .line 199
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    .line 204
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 205
    .line 206
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    .line 211
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->sourceIds:[I

    .line 212
    .line 213
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    .line 218
    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 219
    .line 220
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 221
    .line 222
    .line 223
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    .line 225
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 226
    .line 227
    .line 228
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    .line 230
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    .line 235
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 236
    .line 237
    .line 238
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    .line 240
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 241
    .line 242
    .line 243
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->sourceIds:[I

    .line 246
    .line 247
    .line 248
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    .line 250
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 251
    .line 252
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 253
    .line 254
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 255
    .line 256
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 257
    .line 258
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/e0$a;

    .line 259
    .line 260
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->sourceIds:[I

    .line 261
    .line 262
    iput v2, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 263
    .line 264
    iput p1, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_6
    monitor-exit p0

    .line 266
    return-void

    .line 267
    :goto_4
    monitor-exit p0

    .line 268
    throw p1
.end method

.method private j(J)I
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 11
    .line 12
    if-le v0, v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 15
    .line 16
    aget-wide v3, v2, v1

    .line 17
    .line 18
    cmp-long v2, v3, p1

    .line 19
    .line 20
    if-ltz v2, :cond_1

    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    const/4 v2, -0x1

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v0
.end method

.method public static k(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/drm/v$a;)Lcom/google/android/exoplayer2/source/v0;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/v0;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/drm/x;

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/google/android/exoplayer2/drm/v$a;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/v0;-><init>(Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 18
    return-object v0
.end method

.method private declared-synchronized l(JZZ)J
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 10
    .line 11
    iget v5, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 12
    .line 13
    aget-wide v6, v3, v5

    .line 14
    .line 15
    cmp-long v3, p1, v6

    .line 16
    .line 17
    if-gez v3, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    if-eqz p4, :cond_1

    .line 21
    .line 22
    iget p4, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 23
    .line 24
    if-eq p4, v0, :cond_1

    .line 25
    .line 26
    add-int/lit8 v0, p4, 0x1

    .line 27
    :cond_1
    move v6, v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :goto_0
    move-object v4, p0

    .line 32
    move-wide v7, p1

    .line 33
    move v9, p3

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/v0;->r(IIJZ)I

    .line 37
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 p2, -0x1

    .line 39
    .line 40
    if-ne p1, p2, :cond_2

    .line 41
    monitor-exit p0

    .line 42
    return-wide v1

    .line 43
    .line 44
    .line 45
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->n(I)J

    .line 46
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return-wide p1

    .line 49
    :cond_3
    :goto_1
    monitor-exit p0

    .line 50
    return-wide v1

    .line 51
    :goto_2
    monitor-exit p0

    .line 52
    throw p1
.end method

.method private declared-synchronized m()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    return-wide v0

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->n(I)J

    .line 13
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method private n(I)J
    .locals 5
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v0;->largestDiscardedTimestampUs:J

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->v(I)J

    .line 6
    move-result-wide v2

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/v0;->largestDiscardedTimestampUs:J

    .line 13
    .line 14
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 15
    sub-int/2addr v0, p1

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->absoluteFirstIndex:I

    .line 20
    add-int/2addr v0, p1

    .line 21
    .line 22
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->absoluteFirstIndex:I

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 25
    add-int/2addr v1, p1

    .line 26
    .line 27
    iput v1, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    .line 30
    .line 31
    if-lt v1, v2, :cond_0

    .line 32
    sub-int/2addr v1, v2

    .line 33
    .line 34
    iput v1, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 35
    .line 36
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 37
    sub-int/2addr v1, p1

    .line 38
    .line 39
    iput v1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 40
    .line 41
    if-gez v1, :cond_1

    .line 42
    const/4 p1, 0x0

    .line 43
    .line 44
    iput p1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/d1;->e(I)V

    .line 50
    .line 51
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    .line 60
    .line 61
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 64
    .line 65
    aget-wide v1, v0, p1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 68
    .line 69
    aget p1, v0, p1

    .line 70
    int-to-long v3, p1

    .line 71
    add-long/2addr v1, v3

    .line 72
    return-wide v1

    .line 73
    .line 74
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 75
    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 77
    .line 78
    aget-wide v0, p1, v0

    .line 79
    return-wide v0
.end method

.method private q(I)J
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/v0;->A()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 12
    .line 13
    iget v4, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 14
    sub-int/2addr v3, v4

    .line 15
    .line 16
    if-gt v0, v3, :cond_0

    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 23
    .line 24
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 25
    sub-int/2addr v3, v0

    .line 26
    .line 27
    iput v3, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 28
    .line 29
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/v0;->largestDiscardedTimestampUs:J

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/v0;->v(I)J

    .line 33
    move-result-wide v6

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 37
    move-result-wide v3

    .line 38
    .line 39
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/v0;->isLastSampleQueued:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    move v1, v2

    .line 47
    .line 48
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/v0;->isLastSampleQueued:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/d1;->d(I)V

    .line 54
    .line 55
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    sub-int/2addr p1, v2

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 62
    move-result p1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->offsets:[J

    .line 65
    .line 66
    aget-wide v1, v0, p1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sizes:[I

    .line 69
    .line 70
    aget p1, v0, p1

    .line 71
    int-to-long v3, p1

    .line 72
    add-long/2addr v1, v3

    .line 73
    return-wide v1

    .line 74
    .line 75
    :cond_2
    const-wide/16 v0, 0x0

    .line 76
    return-wide v0
.end method

.method private r(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-ge v2, p2, :cond_4

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 8
    .line 9
    aget-wide v4, v3, p1

    .line 10
    .line 11
    cmp-long v3, v4, p3

    .line 12
    .line 13
    if-gtz v3, :cond_4

    .line 14
    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 18
    .line 19
    aget v3, v3, p1

    .line 20
    .line 21
    and-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    :cond_0
    cmp-long v0, v4, p3

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    .line 32
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    iget v3, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    .line 35
    .line 36
    if-ne p1, v3, :cond_3

    .line 37
    move p1, v1

    .line 38
    .line 39
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    :goto_1
    return v0
.end method

.method private v(I)J
    .locals 7

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-wide v0

    .line 6
    .line 7
    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v3, p1, :cond_3

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 17
    .line 18
    aget-wide v5, v4, v2

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/v0;->flags:[I

    .line 25
    .line 26
    aget v4, v4, v2

    .line 27
    .line 28
    and-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 34
    const/4 v4, -0x1

    .line 35
    .line 36
    if-ne v2, v4, :cond_2

    .line 37
    .line 38
    iget v2, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    .line 39
    .line 40
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_1
    return-wide v0
.end method

.method private x(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->capacity:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public final A()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized C()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/v0;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized D(Z)Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->B()Z

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/v0;->isLastSampleQueued:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->downstreamFormat:Lcom/google/android/exoplayer2/a2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    return v1

    .line 29
    .line 30
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/v0;->w()I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/d1;->f(I)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/google/android/exoplayer2/source/v0$c;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/v0$c;->format:Lcom/google/android/exoplayer2/a2;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->downstreamFormat:Lcom/google/android/exoplayer2/a2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    if-eq p1, v0, :cond_3

    .line 47
    monitor-exit p0

    .line 48
    return v1

    .line 49
    .line 50
    :cond_3
    :try_start_2
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 54
    move-result p1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->F(I)Z

    .line 58
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return p1

    .line 61
    :goto_1
    monitor-exit p0

    .line 62
    throw p1
.end method

.method public G()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/n;->getState()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->currentDrmSession:Lcom/google/android/exoplayer2/drm/n;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/n;->getError()Lcom/google/android/exoplayer2/drm/n$a;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/exoplayer2/drm/n$a;

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public J()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/v0;->p()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->M()V

    .line 7
    return-void
.end method

.method public K(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;IZ)I
    .locals 9
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    and-int/lit8 v0, p3, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move v6, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v6, v1

    .line 10
    .line 11
    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/v0;->extrasHolder:Lcom/google/android/exoplayer2/source/v0$b;

    .line 12
    move-object v3, p0

    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move v7, p4

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/v0;->I(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;ZZLcom/google/android/exoplayer2/source/v0$b;)I

    .line 19
    move-result p1

    .line 20
    const/4 p4, -0x4

    .line 21
    .line 22
    if-ne p1, p4, :cond_4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 26
    move-result p4

    .line 27
    .line 28
    if-nez p4, :cond_4

    .line 29
    .line 30
    and-int/lit8 p4, p3, 0x1

    .line 31
    .line 32
    if-eqz p4, :cond_1

    .line 33
    move v1, v2

    .line 34
    .line 35
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 36
    .line 37
    if-nez p3, :cond_3

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 42
    .line 43
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/v0;->extrasHolder:Lcom/google/android/exoplayer2/source/v0$b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/source/t0;->e(Lcom/google/android/exoplayer2/decoder/g;Lcom/google/android/exoplayer2/source/v0$b;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 50
    .line 51
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/v0;->extrasHolder:Lcom/google/android/exoplayer2/source/v0$b;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/source/t0;->l(Lcom/google/android/exoplayer2/decoder/g;Lcom/google/android/exoplayer2/source/v0$b;)V

    .line 55
    .line 56
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 57
    .line 58
    iget p2, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 59
    add-int/2addr p2, v2

    .line 60
    .line 61
    iput p2, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 62
    :cond_4
    return p1
.end method

.method public L()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->O(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->M()V

    .line 8
    return-void
.end method

.method public final N()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->O(Z)V

    .line 5
    return-void
.end method

.method public O(Z)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/t0;->m()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->absoluteFirstIndex:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->relativeFirstIndex:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamKeyframeRequired:Z

    .line 18
    .line 19
    const-wide/high16 v2, -0x8000000000000000L

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/v0;->startTimeUs:J

    .line 22
    .line 23
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/v0;->largestDiscardedTimestampUs:J

    .line 24
    .line 25
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/v0;->isLastSampleQueued:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sharedSampleMetadata:Lcom/google/android/exoplayer2/source/d1;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/d1;->c()V

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    const/4 p1, 0x0

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatRequired:Z

    .line 42
    :cond_0
    return-void
.end method

.method public final declared-synchronized Q(JZ)Z
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->P()V

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->B()Z

    .line 14
    move-result v0

    .line 15
    const/4 v7, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 20
    .line 21
    aget-wide v3, v0, v2

    .line 22
    .line 23
    cmp-long v0, p1, v3

    .line 24
    .line 25
    if-ltz v0, :cond_2

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J

    .line 28
    .line 29
    cmp-long v0, p1, v0

    .line 30
    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    if-nez p3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget p3, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 37
    .line 38
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 39
    .line 40
    sub-int v3, p3, v0

    .line 41
    const/4 v6, 0x1

    .line 42
    move-object v1, p0

    .line 43
    move-wide v4, p1

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/v0;->r(IIJZ)I

    .line 47
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v0, -0x1

    .line 49
    .line 50
    if-ne p3, v0, :cond_1

    .line 51
    monitor-exit p0

    .line 52
    return v7

    .line 53
    .line 54
    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/v0;->startTimeUs:J

    .line 55
    .line 56
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 57
    add-int/2addr p1, p3

    .line 58
    .line 59
    iput p1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    monitor-exit p0

    .line 66
    return v7

    .line 67
    :goto_1
    monitor-exit p0

    .line 68
    throw p1
.end method

.method public final R(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/v0;->startTimeUs:J

    return-void
.end method

.method public final T(Lcom/google/android/exoplayer2/source/v0$d;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/v0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/v0$d;

    return-void
.end method

.method public final declared-synchronized U(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 6
    add-int/2addr v0, p1

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 21
    add-int/2addr v0, p1

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/h;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/t0;->o(Lcom/google/android/exoplayer2/upstream/h;IZ)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/h;IZ)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/d0;->a(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/upstream/h;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/util/c0;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d0;->b(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/util/c0;I)V

    return-void
.end method

.method public final d(Lcom/google/android/exoplayer2/a2;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/v0;->s(Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatAdjustmentRequired:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/v0;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->S(Lcom/google/android/exoplayer2/a2;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/v0$d;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/v0$d;->a(Lcom/google/android/exoplayer2/a2;)V

    .line 23
    :cond_0
    return-void
.end method

.method public e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V
    .locals 11
    .param p6    # Lcom/google/android/exoplayer2/extractor/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v8, p0

    .line 2
    .line 3
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatAdjustmentRequired:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/v0;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/exoplayer2/a2;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 17
    .line 18
    :cond_0
    and-int/lit8 v0, p3, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    move v3, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v3, v1

    .line 26
    .line 27
    :goto_0
    iget-boolean v4, v8, Lcom/google/android/exoplayer2/source/v0;->upstreamKeyframeRequired:Z

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    return-void

    .line 33
    .line 34
    :cond_2
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/v0;->upstreamKeyframeRequired:Z

    .line 35
    .line 36
    :cond_3
    iget-wide v4, v8, Lcom/google/android/exoplayer2/source/v0;->sampleOffsetUs:J

    .line 37
    add-long/2addr v4, p1

    .line 38
    .line 39
    iget-boolean v6, v8, Lcom/google/android/exoplayer2/source/v0;->upstreamAllSamplesAreSyncSamples:Z

    .line 40
    .line 41
    if-eqz v6, :cond_6

    .line 42
    .line 43
    iget-wide v6, v8, Lcom/google/android/exoplayer2/source/v0;->startTimeUs:J

    .line 44
    .line 45
    cmp-long v6, v4, v6

    .line 46
    .line 47
    if-gez v6, :cond_4

    .line 48
    return-void

    .line 49
    .line 50
    :cond_4
    if-nez v0, :cond_6

    .line 51
    .line 52
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/v0;->loggedUnexpectedNonSyncSample:Z

    .line 53
    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v6, "Overriding unexpected non-sync sample for format: "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    iget-object v6, v8, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string v6, "SampleQueue"

    .line 76
    .line 77
    .line 78
    invoke-static {v6, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    iput-boolean v2, v8, Lcom/google/android/exoplayer2/source/v0;->loggedUnexpectedNonSyncSample:Z

    .line 81
    .line 82
    :cond_5
    or-int/lit8 v0, p3, 0x1

    .line 83
    move v6, v0

    .line 84
    goto :goto_1

    .line 85
    :cond_6
    move v6, p3

    .line 86
    .line 87
    :goto_1
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/v0;->pendingSplice:Z

    .line 88
    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    if-eqz v3, :cond_8

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/v0;->h(J)Z

    .line 95
    move-result v0

    .line 96
    .line 97
    if-nez v0, :cond_7

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_7
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/v0;->pendingSplice:Z

    .line 101
    goto :goto_3

    .line 102
    :cond_8
    :goto_2
    return-void

    .line 103
    .line 104
    :cond_9
    :goto_3
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/t0;->d()J

    .line 108
    move-result-wide v0

    .line 109
    move v7, p4

    .line 110
    int-to-long v2, v7

    .line 111
    sub-long/2addr v0, v2

    .line 112
    .line 113
    move/from16 v2, p5

    .line 114
    int-to-long v2, v2

    .line 115
    .line 116
    sub-long v9, v0, v2

    .line 117
    move-object v0, p0

    .line 118
    move-wide v1, v4

    .line 119
    move v3, v6

    .line 120
    move-wide v4, v9

    .line 121
    move v6, p4

    .line 122
    .line 123
    move-object/from16 v7, p6

    .line 124
    .line 125
    .line 126
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/v0;->i(JIJILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 127
    return-void
.end method

.method public final f(Lcom/google/android/exoplayer2/util/c0;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/source/t0;->p(Lcom/google/android/exoplayer2/util/c0;I)V

    .line 6
    return-void
.end method

.method public final o(JZZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/v0;->l(JZZ)J

    .line 6
    move-result-wide p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/t0;->b(J)V

    .line 10
    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->sampleDataQueue:Lcom/google/android/exoplayer2/source/t0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->m()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/t0;->b(J)V

    .line 10
    return-void
.end method

.method protected s(Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/a2;
    .locals 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v0;->sampleOffsetUs:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p1, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x7fffffffffffffffL

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-wide v1, p1, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/v0;->sampleOffsetUs:J

    .line 28
    add-long/2addr v1, v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/a2$b;->i0(J)Lcom/google/android/exoplayer2/a2$b;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 36
    move-result-object p1

    .line 37
    :cond_0
    return-object p1
.end method

.method public final declared-synchronized t()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized u()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v0;->largestDiscardedTimestampUs:J

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/v0;->v(I)J

    .line 9
    move-result-wide v2

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 13
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final w()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized y(JZ)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/v0;->x(I)I

    .line 7
    move-result v2

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/v0;->B()Z

    .line 11
    move-result v0

    .line 12
    const/4 v7, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->timesUs:[J

    .line 17
    .line 18
    aget-wide v3, v0, v2

    .line 19
    .line 20
    cmp-long v0, p1, v3

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/v0;->largestQueuedTimestampUs:J

    .line 26
    .line 27
    cmp-long v0, p1, v0

    .line 28
    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    iget p1, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 34
    .line 35
    iget p2, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sub-int/2addr p1, p2

    .line 37
    monitor-exit p0

    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    :try_start_1
    iget p3, p0, Lcom/google/android/exoplayer2/source/v0;->length:I

    .line 43
    .line 44
    iget v0, p0, Lcom/google/android/exoplayer2/source/v0;->readPosition:I

    .line 45
    .line 46
    sub-int v3, p3, v0

    .line 47
    const/4 v6, 0x1

    .line 48
    move-object v1, p0

    .line 49
    move-wide v4, p1

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/v0;->r(IIJZ)I

    .line 53
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/4 p2, -0x1

    .line 55
    .line 56
    if-ne p1, p2, :cond_2

    .line 57
    monitor-exit p0

    .line 58
    return v7

    .line 59
    :cond_2
    monitor-exit p0

    .line 60
    return p1

    .line 61
    :cond_3
    :goto_0
    monitor-exit p0

    .line 62
    return v7

    .line 63
    :goto_1
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public final declared-synchronized z()Lcom/google/android/exoplayer2/a2;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormatRequired:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/v0;->upstreamFormat:Lcom/google/android/exoplayer2/a2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method
