.class public abstract Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;
.super Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final availabilityTimeOffsetUs:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final duration:J

.field private final periodStartUnixTimeUs:J

.field final segmentTimeline:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:J

.field private final timeShiftBufferDepthUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V
    .locals 3
    .param p1    # Landroidx/media3/exoplayer/dash/manifest/RangedUri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJJ)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;-><init>(Landroidx/media3/exoplayer/dash/manifest/RangedUri;JJ)V

    .line 5
    move-wide v1, p6

    .line 6
    .line 7
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 8
    move-wide v1, p8

    .line 9
    .line 10
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 11
    move-object v1, p10

    .line 12
    .line 13
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 14
    move-wide v1, p11

    .line 15
    .line 16
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 17
    .line 18
    move-wide/from16 v1, p13

    .line 19
    .line 20
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    .line 21
    .line 22
    move-wide/from16 v1, p15

    .line 23
    .line 24
    iput-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    .line 25
    return-void
.end method


# virtual methods
.method public c(JJ)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->g(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    return-wide v0

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    .line 14
    .line 15
    sub-long v0, p3, v0

    .line 16
    .line 17
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 18
    add-long/2addr v0, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->i(JJ)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->d(JJ)J

    .line 26
    move-result-wide p1

    .line 27
    sub-long/2addr v0, p1

    .line 28
    long-to-int p1, v0

    .line 29
    int-to-long p1, p1

    .line 30
    return-wide p1
.end method

.method public d(JJ)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->g(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    .line 25
    sub-long/2addr p3, v2

    .line 26
    sub-long/2addr p3, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p3, p4, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->i(JJ)J

    .line 30
    move-result-wide p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->e()J

    .line 34
    move-result-wide p3

    .line 35
    .line 36
    .line 37
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 38
    move-result-wide p1

    .line 39
    return-wide p1

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->e()J

    .line 43
    move-result-wide p1

    .line 44
    return-wide p1
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    return-wide v0
.end method

.method public f(JJ)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    return-wide p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->d(JJ)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->c(JJ)J

    .line 18
    move-result-wide p3

    .line 19
    add-long/2addr v0, p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->j(J)J

    .line 23
    move-result-wide p3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->h(JJ)J

    .line 27
    move-result-wide p1

    .line 28
    add-long/2addr p3, p1

    .line 29
    .line 30
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 31
    sub-long/2addr p3, p1

    .line 32
    return-wide p3
.end method

.method public abstract g(J)J
.end method

.method public final h(JJ)J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    const-wide/32 v1, 0xf4240

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 10
    sub-long/2addr p1, p3

    .line 11
    long-to-int p1, p1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 18
    .line 19
    iget-wide p1, p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    .line 20
    mul-long/2addr p1, v1

    .line 21
    .line 22
    iget-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 23
    div-long/2addr p1, p3

    .line 24
    return-wide p1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->g(J)J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    const-wide/16 v5, -0x1

    .line 31
    .line 32
    cmp-long v0, v3, v5

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->e()J

    .line 38
    move-result-wide v5

    .line 39
    add-long/2addr v5, v3

    .line 40
    .line 41
    const-wide/16 v3, 0x1

    .line 42
    sub-long/2addr v5, v3

    .line 43
    .line 44
    cmp-long v0, p1, v5

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->j(J)J

    .line 50
    move-result-wide p1

    .line 51
    sub-long/2addr p3, p1

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    iget-wide p1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 55
    mul-long/2addr p1, v1

    .line 56
    .line 57
    iget-wide p3, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 58
    .line 59
    div-long p3, p1, p3

    .line 60
    :goto_0
    return-wide p3
.end method

.method public i(JJ)J
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->e()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p4}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->g(J)J

    .line 8
    move-result-wide p3

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, p3, v2

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    return-wide v0

    .line 16
    .line 17
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 18
    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    if-nez v2, :cond_3

    .line 22
    .line 23
    iget-wide v5, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 24
    .line 25
    .line 26
    const-wide/32 v7, 0xf4240

    .line 27
    mul-long/2addr v5, v7

    .line 28
    .line 29
    iget-wide v7, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 30
    div-long/2addr v5, v7

    .line 31
    .line 32
    iget-wide v7, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 33
    div-long/2addr p1, v5

    .line 34
    add-long/2addr v7, p1

    .line 35
    .line 36
    cmp-long p1, v7, v0

    .line 37
    .line 38
    if-gez p1, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    const-wide/16 p1, -0x1

    .line 42
    .line 43
    cmp-long p1, p3, p1

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    move-wide v0, v7

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    add-long/2addr v0, p3

    .line 49
    sub-long/2addr v0, v3

    .line 50
    .line 51
    .line 52
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 53
    move-result-wide v0

    .line 54
    :goto_0
    return-wide v0

    .line 55
    :cond_3
    add-long/2addr p3, v0

    .line 56
    sub-long/2addr p3, v3

    .line 57
    move-wide v5, v0

    .line 58
    .line 59
    :goto_1
    cmp-long v2, v5, p3

    .line 60
    .line 61
    if-gtz v2, :cond_6

    .line 62
    .line 63
    sub-long v7, p3, v5

    .line 64
    .line 65
    const-wide/16 v9, 0x2

    .line 66
    div-long/2addr v7, v9

    .line 67
    add-long/2addr v7, v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v7, v8}, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->j(J)J

    .line 71
    move-result-wide v9

    .line 72
    .line 73
    cmp-long v2, v9, p1

    .line 74
    .line 75
    if-gez v2, :cond_4

    .line 76
    .line 77
    add-long v5, v7, v3

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_4
    if-lez v2, :cond_5

    .line 81
    sub-long/2addr v7, v3

    .line 82
    move-wide p3, v7

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    return-wide v7

    .line 85
    .line 86
    :cond_6
    cmp-long p1, v5, v0

    .line 87
    .line 88
    if-nez p1, :cond_7

    .line 89
    move-wide p3, v5

    .line 90
    :cond_7
    return-wide p3
.end method

.method public final j(J)J
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 7
    sub-long/2addr p1, v1

    .line 8
    long-to-int p1, p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 15
    .line 16
    iget-wide p1, p1, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 17
    .line 18
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    .line 19
    sub-long/2addr p1, v0

    .line 20
    :goto_0
    move-wide v0, p1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 24
    sub-long/2addr p1, v0

    .line 25
    .line 26
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 27
    mul-long/2addr p1, v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :goto_1
    const-wide/32 v2, 0xf4240

    .line 32
    .line 33
    iget-wide v4, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 34
    .line 35
    .line 36
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->X0(JJJ)J

    .line 37
    move-result-wide p1

    .line 38
    return-wide p1
.end method

.method public abstract k(Landroidx/media3/exoplayer/dash/manifest/Representation;J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
