.class final Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;
.super Landroidx/media3/common/Timeline;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final firstPeriodId:I

.field private final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJJIJJJLandroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 7
    .param p16    # Landroidx/media3/common/MediaItem$LiveConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p14

    .line 4
    .line 5
    move-object/from16 v2, p16

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 9
    .line 10
    iget-boolean v3, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    move v6, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v6, v5

    .line 18
    .line 19
    :goto_0
    if-ne v3, v6, :cond_1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v4, v5

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 25
    move-wide v3, p1

    .line 26
    .line 27
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 28
    move-wide v3, p3

    .line 29
    .line 30
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 31
    move-wide v3, p5

    .line 32
    .line 33
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 34
    move v3, p7

    .line 35
    .line 36
    iput v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 37
    move-wide v3, p8

    .line 38
    .line 39
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 40
    .line 41
    move-wide/from16 v3, p10

    .line 42
    .line 43
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 44
    .line 45
    move-wide/from16 v3, p12

    .line 46
    .line 47
    iput-wide v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 48
    .line 49
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 50
    .line 51
    move-object/from16 v1, p15

    .line 52
    .line 53
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 54
    .line 55
    iput-object v2, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 56
    return-void
.end method

.method private w(J)J
    .locals 10

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 5
    .line 6
    .line 7
    invoke-static {v2}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->x(Landroidx/media3/exoplayer/dash/manifest/DashManifest;)Z

    .line 8
    move-result v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    return-wide v0

    .line 12
    .line 13
    :cond_0
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, p1, v2

    .line 16
    .line 17
    if-lez v4, :cond_1

    .line 18
    add-long/2addr v0, p1

    .line 19
    .line 20
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 21
    .line 22
    cmp-long p1, v0, p1

    .line 23
    .line 24
    if-lez p1, :cond_1

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    return-wide p1

    .line 31
    .line 32
    :cond_1
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 33
    add-long/2addr p1, v0

    .line 34
    .line 35
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 36
    const/4 v5, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 40
    move-result-wide v6

    .line 41
    move v4, v5

    .line 42
    .line 43
    :goto_0
    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 47
    move-result v8

    .line 48
    .line 49
    add-int/lit8 v8, v8, -0x1

    .line 50
    .line 51
    if-ge v4, v8, :cond_2

    .line 52
    .line 53
    cmp-long v8, p1, v6

    .line 54
    .line 55
    if-ltz v8, :cond_2

    .line 56
    sub-long/2addr p1, v6

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    iget-object v6, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 64
    move-result-wide v6

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v4}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 71
    move-result-object v4

    .line 72
    const/4 v8, 0x2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v8}, Landroidx/media3/exoplayer/dash/manifest/Period;->a(I)I

    .line 76
    move-result v8

    .line 77
    const/4 v9, -0x1

    .line 78
    .line 79
    if-ne v8, v9, :cond_3

    .line 80
    return-wide v0

    .line 81
    .line 82
    :cond_3
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 83
    .line 84
    .line 85
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 89
    .line 90
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 91
    .line 92
    .line 93
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    check-cast v4, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    if-eqz v4, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-interface {v4, v6, v7}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->e(J)J

    .line 106
    move-result-wide v8

    .line 107
    .line 108
    cmp-long v2, v8, v2

    .line 109
    .line 110
    if-nez v2, :cond_4

    .line 111
    goto :goto_1

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-interface {v4, p1, p2, v6, v7}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->d(JJ)J

    .line 115
    move-result-wide v2

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v2, v3}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 119
    move-result-wide v2

    .line 120
    add-long/2addr v0, v2

    .line 121
    sub-long/2addr v0, p1

    .line 122
    :cond_5
    :goto_1
    return-wide v0
.end method

.method private static x(Landroidx/media3/exoplayer/dash/manifest/DashManifest;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->durationMs:J

    .line 18
    .line 19
    cmp-long p0, v0, v2

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)I
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    .line 14
    iget v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 15
    sub-int/2addr p1, v0

    .line 16
    .line 17
    if-ltz p1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->m()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-lt p1, v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, p1

    .line 26
    :cond_2
    :goto_0
    return v1
.end method

.method public k(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->m()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/Assertions;->c(III)I

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Period;->id:Ljava/lang/String;

    .line 20
    move-object v4, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v0

    .line 23
    .line 24
    :goto_0
    if-eqz p3, :cond_1

    .line 25
    .line 26
    iget p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 27
    add-int/2addr p3, p1

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v0

    .line 32
    :cond_1
    move-object v5, v0

    .line 33
    const/4 v6, 0x0

    .line 34
    .line 35
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 39
    move-result-wide v7

    .line 40
    .line 41
    iget-object p3, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iget-wide v2, p1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-wide v0, p1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 56
    sub-long/2addr v2, v0

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 60
    move-result-wide v0

    .line 61
    .line 62
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 63
    .line 64
    sub-long v9, v0, v2

    .line 65
    move-object v3, p2

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v3 .. v10}, Landroidx/media3/common/Timeline$Period;->w(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public m()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q(I)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->m()I

    .line 5
    move-result v1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Assertions;->c(III)I

    .line 9
    .line 10
    iget v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 11
    add-int/2addr v0, p1

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public s(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v13, 0x1

    .line 7
    .line 8
    move/from16 v3, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v2, v13}, Landroidx/media3/common/util/Assertions;->c(III)I

    .line 12
    .line 13
    move-wide/from16 v2, p3

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->w(J)J

    .line 17
    move-result-wide v14

    .line 18
    .line 19
    sget-object v2, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 22
    .line 23
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 24
    move-object v4, v12

    .line 25
    .line 26
    iget-wide v5, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 27
    .line 28
    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 29
    .line 30
    iget-wide v9, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 31
    const/4 v11, 0x1

    .line 32
    .line 33
    .line 34
    invoke-static {v12}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->x(Landroidx/media3/exoplayer/dash/manifest/DashManifest;)Z

    .line 35
    move-result v12

    .line 36
    .line 37
    iget-object v13, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 38
    .line 39
    const/16 v19, 0x1

    .line 40
    .line 41
    move/from16 p2, v12

    .line 42
    .line 43
    iget-wide v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 44
    .line 45
    move-wide/from16 v16, v11

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->m()I

    .line 51
    move-result v11

    .line 52
    .line 53
    add-int/lit8 v19, v11, -0x1

    .line 54
    .line 55
    iget-wide v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 56
    .line 57
    move-wide/from16 v20, v11

    .line 58
    .line 59
    move/from16 v12, p2

    .line 60
    const/4 v11, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v1 .. v21}, Landroidx/media3/common/Timeline$Window;->i(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 64
    move-result-object v1

    .line 65
    return-object v1
.end method

.method public t()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
