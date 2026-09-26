.class public final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;
.implements Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;,
        Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;,
        Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;,
        Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;,
        Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;
    }
.end annotation


# instance fields
.field private final adPlaybackStateUpdater:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adPlaybackStates:Lcom/google/common/collect/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b0<",
            "Ljava/lang/Object;",
            "Landroidx/media3/common/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private final drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaPeriods:Lcom/google/common/collect/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j0<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private final mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field private playbackHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;)V
    .locals 0
    .param p2    # Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStateUpdater:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/collect/g;->E()Lcom/google/common/collect/g;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/j0;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->c0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->a0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 33
    return-void
.end method

.method static synthetic k0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/common/AdPlaybackState;)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->o0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/common/AdPlaybackState;)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic l0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;
    .locals 11

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 3
    .line 4
    iget v1, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->dataType:I

    .line 5
    .line 6
    iget v2, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    .line 7
    .line 8
    iget-object v3, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    .line 9
    .line 10
    iget v4, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionReason:I

    .line 11
    .line 12
    iget-object v5, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    .line 13
    .line 14
    iget-wide v6, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaStartTimeMs:J

    .line 15
    .line 16
    .line 17
    invoke-static {v6, v7, p0, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->n0(JLandroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/common/AdPlaybackState;)J

    .line 18
    move-result-wide v6

    .line 19
    .line 20
    iget-wide v8, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->mediaEndTimeMs:J

    .line 21
    .line 22
    .line 23
    invoke-static {v8, v9, p0, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->n0(JLandroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/common/AdPlaybackState;)J

    .line 24
    move-result-wide v8

    .line 25
    move-object v0, v10

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 29
    return-object v10
.end method

.method private static n0(JLandroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/common/AdPlaybackState;)J
    .locals 3

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    cmp-long v2, p0, v0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    return-wide v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 14
    move-result-wide p0

    .line 15
    .line 16
    iget-object p2, p2, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v0, p2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 25
    .line 26
    iget p2, p2, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->c(JIILandroidx/media3/common/AdPlaybackState;)J

    .line 30
    move-result-wide p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p2, -0x1

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->d(JILandroidx/media3/common/AdPlaybackState;)J

    .line 36
    move-result-wide p0

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 40
    move-result-wide p0

    .line 41
    return-wide p0
.end method

.method private static o0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/common/AdPlaybackState;)J
    .locals 4

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/MediaPeriodId;->c()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/media3/common/AdPlaybackState;->d(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget v0, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const-wide/16 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    .line 25
    .line 26
    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    .line 27
    .line 28
    aget-wide p0, p1, p0

    .line 29
    :goto_0
    return-wide p0

    .line 30
    .line 31
    :cond_1
    iget p0, p0, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v2, 0x7fffffffffffffffL

    .line 37
    .line 38
    if-ne p0, v1, :cond_2

    .line 39
    return-wide v2

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/media3/common/AdPlaybackState;->d(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    iget-wide p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    .line 46
    .line 47
    const-wide/high16 v0, -0x8000000000000000L

    .line 48
    .line 49
    cmp-long v0, p0, v0

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-wide v2, p0

    .line 54
    :goto_1
    return-wide v2
.end method

.method private p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .locals 5
    .param p1    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/media3/exoplayer/source/MediaLoadData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/j0;

    .line 7
    .line 8
    new-instance v2, Landroid/util/Pair;

    .line 9
    .line 10
    iget-wide v3, p1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 11
    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lcom/google/common/collect/j0;->get(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    if-eqz p3, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/common/collect/h0;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->b(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->b(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->c(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/util/List;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/google/common/collect/h0;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 60
    :goto_0
    return-object p1

    .line 61
    :cond_3
    const/4 p3, 0x0

    .line 62
    move v0, p3

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    move-result v1

    .line 67
    .line 68
    if-ge v0, v1, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->n(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    return-object v1

    .line 82
    .line 83
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    check-cast p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->c(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/util/List;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    check-cast p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 101
    return-object p1
.end method

.method private q0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->G(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 4

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 3
    .line 4
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->H(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->u()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/j0;

    .line 18
    .line 19
    new-instance v1, Landroid/util/Pair;

    .line 20
    .line 21
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 22
    .line 23
    iget-wide v2, v2, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    iget-object v3, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 30
    .line 31
    iget-object v3, v3, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    iget-object v2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/m0;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/j0;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Lcom/google/common/collect/m0;->isEmpty()Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 50
    .line 51
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->G(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public B(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p4, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p4}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->r(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->A(Landroidx/media3/exoplayer/source/LoadEventInfo;)V

    .line 19
    .line 20
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p4, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->r(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 46
    :goto_0
    return-void
.end method

.method public D(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p3, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->i(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->z(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 19
    .line 20
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p3, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->i(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 46
    :goto_0
    return-void
.end method

.method public F(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->m()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->m()V

    .line 20
    :goto_0
    return-void
.end method

.method public I(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p3, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->D(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 18
    .line 19
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p3, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->D(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 41
    :goto_0
    return-void
.end method

.method public L(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p4, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p4}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->A(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3, p4}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->B(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 19
    .line 20
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p4, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->A(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 46
    :goto_0
    return-void
.end method

.method public M(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 11

    .line 1
    .line 2
    new-instance v0, Landroid/util/Pair;

    .line 3
    .line 4
    iget-wide v1, p1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v2, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->a(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget-object v4, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/j0;

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v0, v1}, Lcom/google/common/collect/m0;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->G(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 48
    move-object v1, v2

    .line 49
    .line 50
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v1, v2

    .line 53
    .line 54
    :goto_1
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/j0;

    .line 57
    .line 58
    .line 59
    invoke-interface {v1, v0}, Lcom/google/common/collect/j0;->get(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/google/common/collect/h0;->f(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1, p3, p4}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->h(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 78
    .line 79
    iget-object v2, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    check-cast v1, Landroidx/media3/common/AdPlaybackState;

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    check-cast v1, Landroidx/media3/common/AdPlaybackState;

    .line 92
    .line 93
    .line 94
    invoke-static {p3, p4, p1, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->e(JLandroidx/media3/common/MediaPeriodId;Landroidx/media3/common/AdPlaybackState;)J

    .line 95
    move-result-wide v4

    .line 96
    .line 97
    new-instance v2, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 98
    .line 99
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 100
    .line 101
    new-instance v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 102
    .line 103
    iget-object v8, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 104
    .line 105
    iget-wide v9, p1, Landroidx/media3/common/MediaPeriodId;->windowSequenceNumber:J

    .line 106
    .line 107
    .line 108
    invoke-direct {v7, v8, v9, v10}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v6, v7, p2, v4, v5}, Landroidx/media3/exoplayer/source/MediaSource;->M(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    iget-object v4, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, p2, v4, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    .line 118
    .line 119
    iget-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/j0;

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, v0, v2}, Lcom/google/common/collect/m0;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    move-object v1, v2

    .line 124
    .line 125
    :cond_3
    :goto_2
    new-instance p2, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->c0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->a0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    .line 136
    invoke-direct {p2, v1, p1, v0, v2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;-><init>(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->e(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V

    .line 140
    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    iget-object p1, v1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->trackSelections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 144
    array-length p1, p1

    .line 145
    .line 146
    if-lez p1, :cond_4

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p3, p4}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->seekToUs(J)J

    .line 150
    :cond_4
    return-object p2
.end method

.method public N(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->k(I)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->k(I)V

    .line 20
    :goto_0
    return-void
.end method

.method public synthetic O(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/drm/j;->a(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public Q(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStateUpdater:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;->a(Landroidx/media3/common/Timeline;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/common/collect/b0;->isEmpty()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;-><init>(Landroidx/media3/common/Timeline;Lcom/google/common/collect/b0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i0(Landroidx/media3/common/Timeline;)V

    .line 29
    :cond_1
    return-void
.end method

.method public R(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->i()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->i()V

    .line 20
    :goto_0
    return-void
.end method

.method public S(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->l(Ljava/lang/Exception;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->l(Ljava/lang/Exception;)V

    .line 20
    :goto_0
    return-void
.end method

.method public V(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p4, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p4}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->u(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->A(Landroidx/media3/exoplayer/source/LoadEventInfo;)V

    .line 19
    .line 20
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 23
    .line 24
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p4, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->u(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 46
    :goto_0
    return-void
.end method

.method public W(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->j()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->j()V

    .line 20
    :goto_0
    return-void
.end method

.method protected d0()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->q0()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->X(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 9
    return-void
.end method

.method protected e0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->U(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 6
    return-void
.end method

.method protected h0(Landroidx/media3/datasource/TransferListener;)V
    .locals 2
    .param p1    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/media3/common/util/Util;->w()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    monitor-enter p0

    .line 6
    .line 7
    :try_start_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->s(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->y(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->f0()Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p0, p1, v1}, Landroidx/media3/exoplayer/source/MediaSource;->T(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method

.method public j()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->j()Landroidx/media3/common/MediaItem;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected j0()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->q0()V

    .line 4
    monitor-enter p0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    :try_start_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->E(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->J(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->P(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 6
    return-void
.end method

.method public x(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->h()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->h()V

    .line 20
    :goto_0
    return-void
.end method

.method public z(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 2
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2, p4, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->p0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;Z)Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p4, p5, p6}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->x(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-eqz p6, :cond_1

    .line 16
    .line 17
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->A(Landroidx/media3/exoplayer/source/LoadEventInfo;)V

    .line 21
    .line 22
    :cond_1
    iget-object p2, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/b0;

    .line 25
    .line 26
    iget-object v1, p1, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p4, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;->m0(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3, p1, p5, p6}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->x(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 48
    :goto_0
    return-void
.end method
