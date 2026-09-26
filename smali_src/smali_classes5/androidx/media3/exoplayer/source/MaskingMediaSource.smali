.class public final Landroidx/media3/exoplayer/source/MaskingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;,
        Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;
    }
.end annotation


# instance fields
.field private hasRealTimeline:Z

.field private hasStartedPreparing:Z

.field private isPrepared:Z

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

.field private unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final useLazyPreparation:Z

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->r()Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    move p2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    .line 17
    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->useLazyPreparation:Z

    .line 18
    .line 19
    new-instance p2, Landroidx/media3/common/Timeline$Window;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 23
    .line 24
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 25
    .line 26
    new-instance p2, Landroidx/media3/common/Timeline$Period;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->o()Landroidx/media3/common/Timeline;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    const/4 p1, 0x0

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->z(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 45
    .line 46
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->j()Landroidx/media3/common/MediaItem;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->y(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 58
    :goto_1
    return-void
.end method

.method private F0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->w(Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->w(Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object p1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 23
    :cond_0
    return-object p1
.end method

.method private G0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->w(Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->w(Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    :cond_0
    return-object p1
.end method

.method private I0(J)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 7
    .line 8
    iget-object v2, v2, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->f(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1, v3}, Landroidx/media3/common/Timeline;->j(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget-wide v1, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    cmp-long v3, v1, v3

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    cmp-long v3, p1, v1

    .line 38
    .line 39
    if-ltz v3, :cond_1

    .line 40
    .line 41
    const-wide/16 p1, 0x1

    .line 42
    sub-long/2addr v1, p1

    .line 43
    .line 44
    const-wide/16 p1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->l(J)V

    .line 52
    return-void
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m()V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 14
    :cond_0
    return-void
.end method

.method protected A0(Landroidx/media3/common/Timeline;)V
    .locals 14

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->x(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 15
    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->h()J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->I0(J)V

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->u()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->x(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    sget-object v0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 45
    .line 46
    sget-object v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->z(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->e()J

    .line 66
    move-result-wide v2

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 73
    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i()J

    .line 78
    move-result-wide v4

    .line 79
    .line 80
    iget-object v6, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 81
    .line 82
    iget-object v7, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 83
    .line 84
    iget-object v7, v7, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 85
    .line 86
    iget-object v7, v7, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 87
    .line 88
    iget-object v8, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v7, v8}, Landroidx/media3/common/Timeline;->l(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 92
    .line 93
    iget-object v6, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Period;->r()J

    .line 97
    move-result-wide v6

    .line 98
    add-long/2addr v6, v4

    .line 99
    .line 100
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 101
    .line 102
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v1, v5}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Window;->e()J

    .line 110
    move-result-wide v4

    .line 111
    .line 112
    cmp-long v1, v6, v4

    .line 113
    .line 114
    if-eqz v1, :cond_3

    .line 115
    move-wide v12, v6

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move-wide v12, v2

    .line 118
    .line 119
    :goto_1
    iget-object v9, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 120
    .line 121
    iget-object v10, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    .line 122
    const/4 v11, 0x0

    .line 123
    move-object v8, p1

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v8 .. v13}, Landroidx/media3/common/Timeline;->n(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 137
    move-result-wide v3

    .line 138
    .line 139
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 140
    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->x(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 147
    move-result-object p1

    .line 148
    goto :goto_2

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-static {p1, v0, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->z(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    :goto_2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 155
    .line 156
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->I0(J)V

    .line 162
    .line 163
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 164
    .line 165
    iget-object v0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->G0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 173
    move-result-object p1

    .line 174
    goto :goto_4

    .line 175
    :cond_5
    :goto_3
    const/4 p1, 0x0

    .line 176
    :goto_4
    const/4 v0, 0x1

    .line 177
    .line 178
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 179
    .line 180
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    .line 181
    .line 182
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i0(Landroidx/media3/common/Timeline;)V

    .line 186
    .line 187
    if-eqz p1, :cond_6

    .line 188
    .line 189
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    check-cast v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 199
    :cond_6
    return-void
.end method

.method public D0()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->useLazyPreparation:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->C0()V

    .line 11
    :cond_0
    return-void
.end method

.method public E0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 11
    .line 12
    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->G0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 31
    .line 32
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    const/4 p1, 0x1

    .line 36
    .line 37
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->C0()V

    .line 41
    :cond_1
    :goto_0
    return-object v0
.end method

.method public H0()Landroidx/media3/common/Timeline;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->timeline:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    return-object v0
.end method

.method public bridge synthetic M(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->E0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public j0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->j0()V

    .line 9
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected u0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/common/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->F0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
