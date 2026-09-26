.class public final Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationHolder"
.end annotation


# instance fields
.field final chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final periodDurationUs:J

.field public final representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

.field public final segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final segmentNumShift:J

.field public final selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;


# direct methods
.method constructor <init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V
    .locals 0
    .param p5    # Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/media3/exoplayer/dash/DashSegmentIndex;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 10
    .line 11
    iput-wide p6, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 12
    .line 13
    iput-object p5, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 16
    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 3
    return-wide v0
.end method


# virtual methods
.method b(JLandroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 19
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/source/BehindLiveWindowException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-wide/from16 v2, p1

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 10
    move-result-object v9

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p3 .. p3}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 14
    move-result-object v10

    .line 15
    .line 16
    if-nez v9, :cond_0

    .line 17
    .line 18
    new-instance v10, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 19
    .line 20
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 21
    .line 22
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 23
    .line 24
    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 25
    move-object v1, v10

    .line 26
    .line 27
    move-wide/from16 v2, p1

    .line 28
    .line 29
    move-object/from16 v4, p3

    .line 30
    .line 31
    .line 32
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    .line 33
    return-object v10

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {v9}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->h()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    new-instance v11, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 42
    .line 43
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 44
    .line 45
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 46
    .line 47
    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 48
    move-object v1, v11

    .line 49
    .line 50
    move-wide/from16 v2, p1

    .line 51
    .line 52
    move-object/from16 v4, p3

    .line 53
    move-object v9, v10

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    .line 57
    return-object v11

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-interface {v9, v2, v3}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->e(J)J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    const-wide/16 v6, 0x0

    .line 64
    .line 65
    cmp-long v1, v4, v6

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    new-instance v11, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 70
    .line 71
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 72
    .line 73
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 74
    .line 75
    iget-wide v7, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 76
    move-object v1, v11

    .line 77
    .line 78
    move-wide/from16 v2, p1

    .line 79
    .line 80
    move-object/from16 v4, p3

    .line 81
    move-object v9, v10

    .line 82
    .line 83
    .line 84
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    .line 85
    return-object v11

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-interface {v9}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->f()J

    .line 89
    move-result-wide v6

    .line 90
    .line 91
    .line 92
    invoke-interface {v9, v6, v7}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 93
    move-result-wide v11

    .line 94
    add-long/2addr v4, v6

    .line 95
    .line 96
    const-wide/16 v13, 0x1

    .line 97
    .line 98
    sub-long v13, v4, v13

    .line 99
    .line 100
    .line 101
    invoke-interface {v9, v13, v14}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 102
    move-result-wide v15

    .line 103
    .line 104
    .line 105
    invoke-interface {v9, v13, v14, v2, v3}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->a(JJ)J

    .line 106
    move-result-wide v13

    .line 107
    add-long/2addr v15, v13

    .line 108
    .line 109
    .line 110
    invoke-interface {v10}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->f()J

    .line 111
    move-result-wide v13

    .line 112
    move-object v1, v9

    .line 113
    .line 114
    .line 115
    invoke-interface {v10, v13, v14}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 116
    move-result-wide v8

    .line 117
    .line 118
    move-wide/from16 v17, v6

    .line 119
    .line 120
    iget-wide v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 121
    .line 122
    cmp-long v15, v15, v8

    .line 123
    .line 124
    if-nez v15, :cond_3

    .line 125
    :goto_0
    sub-long/2addr v4, v13

    .line 126
    add-long/2addr v6, v4

    .line 127
    :goto_1
    move-wide v7, v6

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_3
    if-ltz v15, :cond_5

    .line 131
    .line 132
    cmp-long v4, v8, v11

    .line 133
    .line 134
    if-gez v4, :cond_4

    .line 135
    .line 136
    .line 137
    invoke-interface {v10, v11, v12, v2, v3}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->d(JJ)J

    .line 138
    move-result-wide v4

    .line 139
    .line 140
    sub-long v4, v4, v17

    .line 141
    sub-long/2addr v6, v4

    .line 142
    goto :goto_1

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-interface {v1, v8, v9, v2, v3}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->d(JJ)J

    .line 146
    move-result-wide v4

    .line 147
    goto :goto_0

    .line 148
    .line 149
    :goto_2
    new-instance v11, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 150
    .line 151
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 152
    .line 153
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 154
    move-object v1, v11

    .line 155
    .line 156
    move-wide/from16 v2, p1

    .line 157
    .line 158
    move-object/from16 v4, p3

    .line 159
    move-object v9, v10

    .line 160
    .line 161
    .line 162
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    .line 163
    return-object v11

    .line 164
    .line 165
    :cond_5
    new-instance v1, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    .line 166
    .line 167
    .line 168
    invoke-direct {v1}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    .line 169
    throw v1
.end method

.method c(Landroidx/media3/exoplayer/dash/DashSegmentIndex;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 10
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    new-instance v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 7
    .line 8
    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 9
    .line 10
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 11
    .line 12
    iget-wide v6, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 13
    move-object v0, v9

    .line 14
    move-object v8, p1

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    .line 18
    return-object v9
.end method

.method d(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 10
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    new-instance v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 7
    .line 8
    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 9
    .line 10
    iget-wide v6, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 11
    .line 12
    iget-object v8, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 13
    move-object v0, v9

    .line 14
    move-object v4, p1

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    .line 18
    return-object v9
.end method

.method public e(J)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, v2, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->b(JJ)J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 11
    add-long/2addr p1, v0

    .line 12
    return-wide p1
.end method

.method public f()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->f()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-wide v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 9
    add-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public g(J)J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->e(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 7
    .line 8
    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 9
    .line 10
    .line 11
    invoke-interface {v2, v3, v4, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->i(JJ)J

    .line 12
    move-result-wide p1

    .line 13
    add-long/2addr v0, p1

    .line 14
    .line 15
    const-wide/16 p1, 0x1

    .line 16
    sub-long/2addr v0, p1

    .line 17
    return-wide v0
.end method

.method public h()J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->e(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public i(J)J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 7
    .line 8
    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 9
    sub-long/2addr p1, v3

    .line 10
    .line 11
    iget-wide v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 12
    .line 13
    .line 14
    invoke-interface {v2, p1, p2, v3, v4}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->a(JJ)J

    .line 15
    move-result-wide p1

    .line 16
    add-long/2addr v0, p1

    .line 17
    return-wide v0
.end method

.method public j(J)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->d(JJ)J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 11
    add-long/2addr p1, v0

    .line 12
    return-wide p1
.end method

.method public k(J)J
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 5
    sub-long/2addr p1, v1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public l(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 5
    sub-long/2addr p1, v1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->g(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public m(JJ)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->h()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    cmp-long v0, p3, v2

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->i(J)J

    .line 23
    move-result-wide p1

    .line 24
    .line 25
    cmp-long p1, p1, p3

    .line 26
    .line 27
    if-gtz p1, :cond_1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :cond_2
    :goto_0
    return v1
.end method
