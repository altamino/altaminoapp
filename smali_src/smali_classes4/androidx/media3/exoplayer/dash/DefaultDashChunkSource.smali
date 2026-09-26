.class public Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/dash/DashChunkSource;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;,
        Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;,
        Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndices:[I

.field private final baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSource:Landroidx/media3/datasource/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final playerTrackEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

.field private trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

.field private final trackType:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;I[ILandroidx/media3/exoplayer/trackselection/ExoTrackSelection;ILandroidx/media3/datasource/DataSource;JIZLjava/util/List;Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V
    .locals 27
    .param p15    # Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;",
            "Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            "Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;",
            "I[I",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            "I",
            "Landroidx/media3/datasource/DataSource;",
            "JIZ",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v2, p4

    .line 7
    .line 8
    move/from16 v3, p5

    .line 9
    .line 10
    move-object/from16 v4, p7

    .line 11
    .line 12
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    move-object/from16 v5, p2

    .line 16
    .line 17
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 18
    .line 19
    iput-object v1, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 20
    .line 21
    iput-object v2, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 22
    .line 23
    move-object/from16 v5, p6

    .line 24
    .line 25
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    .line 26
    .line 27
    iput-object v4, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 28
    .line 29
    move/from16 v12, p8

    .line 30
    .line 31
    iput v12, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackType:I

    .line 32
    .line 33
    move-object/from16 v5, p9

    .line 34
    .line 35
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 36
    .line 37
    iput v3, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 38
    .line 39
    move-wide/from16 v5, p10

    .line 40
    .line 41
    iput-wide v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 42
    .line 43
    move/from16 v5, p12

    .line 44
    .line 45
    iput v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    .line 46
    .line 47
    move-object/from16 v13, p15

    .line 48
    .line 49
    iput-object v13, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 50
    .line 51
    move-object/from16 v5, p17

    .line 52
    .line 53
    iput-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 57
    move-result-wide v23

    .line 58
    .line 59
    .line 60
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->l()Ljava/util/ArrayList;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-interface/range {p7 .. p7}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    .line 65
    move-result v3

    .line 66
    .line 67
    new-array v3, v3, [Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 68
    .line 69
    iput-object v3, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 70
    const/4 v3, 0x0

    .line 71
    move v15, v3

    .line 72
    .line 73
    :goto_0
    iget-object v5, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 74
    array-length v5, v5

    .line 75
    .line 76
    if-ge v15, v5, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v15}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    .line 80
    move-result v5

    .line 81
    .line 82
    .line 83
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v5

    .line 85
    move-object v14, v5

    .line 86
    .line 87
    check-cast v14, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 88
    .line 89
    iget-object v5, v14, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->j(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    iget-object v11, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 96
    .line 97
    new-instance v25, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 98
    .line 99
    if-eqz v5, :cond_0

    .line 100
    .line 101
    :goto_1
    move-object/from16 v18, v5

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_0
    iget-object v5, v14, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 105
    .line 106
    .line 107
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    check-cast v5, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :goto_2
    iget-object v7, v14, Landroidx/media3/exoplayer/dash/manifest/Representation;->format:Landroidx/media3/common/Format;

    .line 114
    .line 115
    move-object/from16 v5, p1

    .line 116
    .line 117
    move/from16 v6, p8

    .line 118
    .line 119
    move/from16 v8, p13

    .line 120
    .line 121
    move-object/from16 v9, p14

    .line 122
    .line 123
    move-object/from16 v10, p15

    .line 124
    .line 125
    move-object/from16 v26, v11

    .line 126
    .line 127
    move-object/from16 v11, p16

    .line 128
    .line 129
    .line 130
    invoke-interface/range {v5 .. v11}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;->a(ILandroidx/media3/common/Format;ZLjava/util/List;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 131
    move-result-object v19

    .line 132
    .line 133
    const-wide/16 v20, 0x0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v14}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 137
    move-result-object v22

    .line 138
    move-object v5, v14

    .line 139
    .line 140
    move-object/from16 v14, v25

    .line 141
    move v6, v15

    .line 142
    .line 143
    move-wide/from16 v15, v23

    .line 144
    .line 145
    move-object/from16 v17, v5

    .line 146
    .line 147
    .line 148
    invoke-direct/range {v14 .. v22}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLandroidx/media3/exoplayer/dash/manifest/Representation;Landroidx/media3/exoplayer/dash/manifest/BaseUrl;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;JLandroidx/media3/exoplayer/dash/DashSegmentIndex;)V

    .line 149
    .line 150
    aput-object v25, v26, v6

    .line 151
    .line 152
    add-int/lit8 v15, v6, 0x1

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method private i(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Ljava/util/List;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;)",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v3, v0, v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->e(IJ)Z

    .line 16
    move-result v5

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p2}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->f(Ljava/util/List;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    new-instance v0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->g(Ljava/util/List;)I

    .line 35
    move-result p2

    .line 36
    .line 37
    sub-int p2, p1, p2

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1, p2, v2, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    .line 41
    return-object v0
.end method

.method private j(JJ)J
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 3
    .line 4
    iget-boolean v0, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->h()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 25
    .line 26
    aget-object v0, v0, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->g(J)J

    .line 30
    move-result-wide v2

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 33
    .line 34
    aget-object v0, v0, v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->i(J)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->k(J)J

    .line 42
    move-result-wide p1

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 46
    move-result-wide p1

    .line 47
    sub-long/2addr p1, p3

    .line 48
    .line 49
    .line 50
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 51
    move-result-wide p1

    .line 52
    return-wide p1

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    return-wide p1
.end method

.method private k(J)J
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 3
    .line 4
    iget-wide v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-wide v3, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 23
    add-long/2addr v1, v3

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    sub-long v3, p1, v0

    .line 30
    :goto_0
    return-wide v3
.end method

.method private l()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 3
    .line 4
    iget v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    .line 18
    array-length v3, v2

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge v4, v3, :cond_0

    .line 22
    .line 23
    aget v5, v2, v4

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    check-cast v5, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 30
    .line 31
    iget-object v5, v5, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method private m(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Landroidx/media3/exoplayer/source/chunk/MediaChunk;JJJ)J
    .locals 6
    .param p2    # Landroidx/media3/exoplayer/source/chunk/MediaChunk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->e()J

    .line 6
    move-result-wide p1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, p3, p4}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->j(J)J

    .line 11
    move-result-wide v0

    .line 12
    move-wide v2, p5

    .line 13
    move-wide v4, p7

    .line 14
    .line 15
    .line 16
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->r(JJJ)J

    .line 17
    move-result-wide p1

    .line 18
    :goto_0
    return-wide p1
.end method

.method private p(I)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 3
    .line 4
    aget-object v0, v0, p1

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 7
    .line 8
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 9
    .line 10
    iget-object v2, v2, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->j(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->d(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 31
    .line 32
    aput-object v0, v1, p1

    .line 33
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 16

    .line 1
    .line 2
    move-wide/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v7, p0

    .line 5
    .line 6
    iget-object v0, v7, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v4, v3, :cond_4

    .line 11
    .line 12
    aget-object v5, v0, v4

    .line 13
    .line 14
    iget-object v6, v5, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 15
    .line 16
    if-eqz v6, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->h()J

    .line 20
    move-result-wide v8

    .line 21
    .line 22
    const-wide/16 v10, 0x0

    .line 23
    .line 24
    cmp-long v6, v8, v10

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    goto :goto_2

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v5, v1, v2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->j(J)J

    .line 31
    move-result-wide v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v3, v4}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 35
    move-result-wide v10

    .line 36
    .line 37
    cmp-long v0, v10, v1

    .line 38
    .line 39
    if-gez v0, :cond_2

    .line 40
    .line 41
    const-wide/16 v12, -0x1

    .line 42
    .line 43
    cmp-long v0, v8, v12

    .line 44
    .line 45
    const-wide/16 v12, 0x1

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->f()J

    .line 51
    move-result-wide v14

    .line 52
    add-long/2addr v14, v8

    .line 53
    sub-long/2addr v14, v12

    .line 54
    .line 55
    cmp-long v0, v3, v14

    .line 56
    .line 57
    if-gez v0, :cond_2

    .line 58
    :cond_1
    add-long/2addr v3, v12

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v3, v4}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 62
    move-result-wide v3

    .line 63
    move-wide v5, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-wide v5, v10

    .line 66
    .line 67
    :goto_1
    move-object/from16 v0, p3

    .line 68
    .line 69
    move-wide/from16 v1, p1

    .line 70
    move-wide v3, v10

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/SeekParameters;->a(JJJ)J

    .line 74
    move-result-wide v0

    .line 75
    return-wide v0

    .line 76
    .line 77
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    return-wide v1
.end method

.method public b(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/source/chunk/Chunk;ZLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->j(Landroidx/media3/exoplayer/source/chunk/Chunk;)Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    return v1

    .line 17
    .line 18
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 19
    .line 20
    iget-boolean p2, p2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    instance-of p2, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 25
    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-object p2, p3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    .line 29
    .line 30
    instance-of v2, p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    check-cast p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 35
    .line 36
    iget p2, p2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 37
    .line 38
    const/16 v2, 0x194

    .line 39
    .line 40
    if-ne p2, v2, :cond_2

    .line 41
    .line 42
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 45
    .line 46
    iget-object v3, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 47
    .line 48
    .line 49
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->h(Landroidx/media3/common/Format;)I

    .line 50
    move-result v2

    .line 51
    .line 52
    aget-object p2, p2, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->h()J

    .line 56
    move-result-wide v2

    .line 57
    .line 58
    const-wide/16 v4, -0x1

    .line 59
    .line 60
    cmp-long v4, v2, v4

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    cmp-long v4, v2, v4

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->f()J

    .line 72
    move-result-wide v4

    .line 73
    add-long/2addr v4, v2

    .line 74
    .line 75
    const-wide/16 v2, 0x1

    .line 76
    sub-long/2addr v4, v2

    .line 77
    move-object p2, p1

    .line 78
    .line 79
    check-cast p2, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->e()J

    .line 83
    move-result-wide v2

    .line 84
    .line 85
    cmp-long p2, v2, v4

    .line 86
    .line 87
    if-lez p2, :cond_2

    .line 88
    .line 89
    iput-boolean v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->missingLastSegment:Z

    .line 90
    return v1

    .line 91
    .line 92
    :cond_2
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 93
    .line 94
    iget-object v2, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->h(Landroidx/media3/common/Format;)I

    .line 98
    move-result p2

    .line 99
    .line 100
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 101
    .line 102
    aget-object p2, v2, p2

    .line 103
    .line 104
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 105
    .line 106
    iget-object v3, p2, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 107
    .line 108
    iget-object v3, v3, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->j(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    iget-object v3, p2, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v2

    .line 121
    .line 122
    if-nez v2, :cond_3

    .line 123
    return v1

    .line 124
    .line 125
    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 126
    .line 127
    iget-object v3, p2, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 128
    .line 129
    iget-object v3, v3, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->i(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Ljava/util/List;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    .line 133
    move-result-object v2

    .line 134
    const/4 v3, 0x2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->a(I)Z

    .line 138
    move-result v4

    .line 139
    .line 140
    if-nez v4, :cond_4

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->a(I)Z

    .line 144
    move-result v4

    .line 145
    .line 146
    if-nez v4, :cond_4

    .line 147
    return v0

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-interface {p4, v2, p3}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->c(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    .line 151
    move-result-object p3

    .line 152
    .line 153
    if-eqz p3, :cond_7

    .line 154
    .line 155
    iget p4, p3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, p4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->a(I)Z

    .line 159
    move-result p4

    .line 160
    .line 161
    if-nez p4, :cond_5

    .line 162
    goto :goto_0

    .line 163
    .line 164
    :cond_5
    iget p4, p3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    .line 165
    .line 166
    if-ne p4, v3, :cond_6

    .line 167
    .line 168
    iget-object p2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 169
    .line 170
    iget-object p1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 171
    .line 172
    .line 173
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->h(Landroidx/media3/common/Format;)I

    .line 174
    move-result p1

    .line 175
    .line 176
    iget-wide p3, p3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, p1, p3, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->f(IJ)Z

    .line 180
    move-result v0

    .line 181
    goto :goto_0

    .line 182
    .line 183
    :cond_6
    if-ne p4, v1, :cond_7

    .line 184
    .line 185
    iget-object p1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 186
    .line 187
    iget-object p2, p2, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 188
    .line 189
    iget-wide p3, p3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2, p3, p4}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->e(Landroidx/media3/exoplayer/dash/manifest/BaseUrl;J)V

    .line 193
    move v0, v1

    .line 194
    :cond_7
    :goto_0
    return v0
.end method

.method public e(Landroidx/media3/exoplayer/source/chunk/Chunk;)V
    .locals 7

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->h(Landroidx/media3/common/Format;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 18
    .line 19
    aget-object v1, v1, v0

    .line 20
    .line 21
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->c()Landroidx/media3/extractor/ChunkIndex;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 34
    .line 35
    new-instance v4, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;

    .line 36
    .line 37
    iget-object v5, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 38
    .line 39
    iget-wide v5, v5, Landroidx/media3/exoplayer/dash/manifest/Representation;->presentationTimeOffsetUs:J

    .line 40
    .line 41
    .line 42
    invoke-direct {v4, v2, v5, v6}, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Landroidx/media3/extractor/ChunkIndex;J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->c(Landroidx/media3/exoplayer/dash/DashSegmentIndex;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    aput-object v1, v3, v0

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->i(Landroidx/media3/exoplayer/source/chunk/Chunk;)V

    .line 56
    :cond_1
    return-void
.end method

.method public f(Landroidx/media3/exoplayer/dash/manifest/DashManifest;I)V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 3
    .line 4
    iput p2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 8
    move-result-wide p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->l()Ljava/util/ArrayList;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 16
    array-length v2, v2

    .line 17
    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 31
    .line 32
    iget-object v3, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 33
    .line 34
    aget-object v4, v3, v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1, p2, v2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->b(JLandroidx/media3/exoplayer/dash/manifest/Representation;)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    aput-object v2, v3, v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    .line 46
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 47
    :cond_0
    return-void
.end method

.method public g(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/exoplayer/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->g(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public h(JJLjava/util/List;Landroidx/media3/exoplayer/source/chunk/ChunkHolder;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;",
            "Landroidx/media3/exoplayer/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-wide/from16 v9, p1

    .line 5
    .line 6
    move-object/from16 v14, p6

    .line 7
    .line 8
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    sub-long v11, p3, v9

    .line 14
    .line 15
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 16
    .line 17
    iget-wide v0, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 24
    .line 25
    iget v3, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    iget-wide v2, v2, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 35
    move-result-wide v2

    .line 36
    add-long/2addr v0, v2

    .line 37
    .line 38
    add-long v0, v0, p3

    .line 39
    .line 40
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->h(J)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    return-void

    .line 50
    .line 51
    :cond_1
    iget-wide v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->e0(J)J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 59
    move-result-wide v7

    .line 60
    .line 61
    .line 62
    invoke-direct {v15, v7, v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->k(J)J

    .line 63
    move-result-wide v24

    .line 64
    .line 65
    .line 66
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v0

    .line 68
    const/4 v5, 0x1

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    move-object/from16 v6, p5

    .line 73
    .line 74
    const/16 v26, 0x0

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 79
    move-result v0

    .line 80
    sub-int/2addr v0, v5

    .line 81
    .line 82
    move-object/from16 v6, p5

    .line 83
    .line 84
    .line 85
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 89
    .line 90
    move-object/from16 v26, v0

    .line 91
    .line 92
    :goto_0
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    .line 96
    move-result v3

    .line 97
    .line 98
    new-array v4, v3, [Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    .line 99
    .line 100
    const/16 v27, 0x0

    .line 101
    .line 102
    move/from16 v2, v27

    .line 103
    .line 104
    :goto_1
    if-ge v2, v3, :cond_5

    .line 105
    .line 106
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 107
    .line 108
    aget-object v1, v0, v2

    .line 109
    .line 110
    iget-object v0, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 111
    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    sget-object v0, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    .line 115
    .line 116
    aput-object v0, v4, v2

    .line 117
    move v13, v2

    .line 118
    .line 119
    move/from16 v28, v3

    .line 120
    .line 121
    move-object/from16 v29, v4

    .line 122
    .line 123
    move-wide/from16 v30, v11

    .line 124
    move-wide v11, v7

    .line 125
    goto :goto_2

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->e(J)J

    .line 129
    move-result-wide v16

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->g(J)J

    .line 133
    move-result-wide v20

    .line 134
    .line 135
    move-object/from16 v0, p0

    .line 136
    move v13, v2

    .line 137
    .line 138
    move-object/from16 v2, v26

    .line 139
    .line 140
    move/from16 v28, v3

    .line 141
    .line 142
    move-object/from16 v29, v4

    .line 143
    .line 144
    move-wide/from16 v3, p3

    .line 145
    .line 146
    move-wide/from16 v5, v16

    .line 147
    .line 148
    move-wide/from16 v30, v11

    .line 149
    move-wide v11, v7

    .line 150
    .line 151
    move-wide/from16 v7, v20

    .line 152
    .line 153
    .line 154
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->m(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Landroidx/media3/exoplayer/source/chunk/MediaChunk;JJJ)J

    .line 155
    move-result-wide v18

    .line 156
    .line 157
    cmp-long v0, v18, v16

    .line 158
    .line 159
    if-gez v0, :cond_4

    .line 160
    .line 161
    sget-object v0, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    .line 162
    .line 163
    aput-object v0, v29, v13

    .line 164
    goto :goto_2

    .line 165
    .line 166
    .line 167
    :cond_4
    invoke-direct {v15, v13}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->p(I)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 168
    move-result-object v17

    .line 169
    .line 170
    new-instance v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;

    .line 171
    .line 172
    move-object/from16 v16, v0

    .line 173
    .line 174
    move-wide/from16 v22, v24

    .line 175
    .line 176
    .line 177
    invoke-direct/range {v16 .. v23}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;-><init>(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V

    .line 178
    .line 179
    aput-object v0, v29, v13

    .line 180
    .line 181
    :goto_2
    add-int/lit8 v2, v13, 0x1

    .line 182
    .line 183
    move-object/from16 v6, p5

    .line 184
    move-wide v7, v11

    .line 185
    .line 186
    move/from16 v3, v28

    .line 187
    .line 188
    move-object/from16 v4, v29

    .line 189
    .line 190
    move-wide/from16 v11, v30

    .line 191
    const/4 v5, 0x1

    .line 192
    goto :goto_1

    .line 193
    .line 194
    :cond_5
    move-object/from16 v29, v4

    .line 195
    .line 196
    move-wide/from16 v30, v11

    .line 197
    move-wide v11, v7

    .line 198
    .line 199
    .line 200
    invoke-direct {v15, v11, v12, v9, v10}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->j(JJ)J

    .line 201
    move-result-wide v5

    .line 202
    .line 203
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 204
    .line 205
    move-wide/from16 v1, p1

    .line 206
    .line 207
    move-wide/from16 v3, v30

    .line 208
    .line 209
    move-object/from16 v7, p5

    .line 210
    .line 211
    move-object/from16 v8, v29

    .line 212
    .line 213
    .line 214
    invoke-interface/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->i(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    .line 215
    .line 216
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 217
    .line 218
    .line 219
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    .line 220
    move-result v0

    .line 221
    .line 222
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 223
    .line 224
    if-nez v2, :cond_6

    .line 225
    .line 226
    const/16 v16, 0x0

    .line 227
    goto :goto_3

    .line 228
    .line 229
    :cond_6
    new-instance v8, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 230
    .line 231
    iget-object v3, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 232
    .line 233
    const-string v6, "d"

    .line 234
    .line 235
    iget-object v1, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 236
    .line 237
    iget-boolean v7, v1, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 238
    move-object v1, v8

    .line 239
    .line 240
    move-wide/from16 v4, v30

    .line 241
    .line 242
    .line 243
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;-><init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V

    .line 244
    .line 245
    move-object/from16 v16, v8

    .line 246
    .line 247
    .line 248
    :goto_3
    invoke-direct {v15, v0}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->p(I)Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 249
    move-result-object v9

    .line 250
    .line 251
    iget-object v0, v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 252
    .line 253
    if-eqz v0, :cond_a

    .line 254
    .line 255
    iget-object v1, v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 256
    .line 257
    .line 258
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->e()[Landroidx/media3/common/Format;

    .line 259
    move-result-object v0

    .line 260
    .line 261
    if-nez v0, :cond_7

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Landroidx/media3/exoplayer/dash/manifest/Representation;->m()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 265
    move-result-object v0

    .line 266
    move-object v6, v0

    .line 267
    goto :goto_4

    .line 268
    :cond_7
    const/4 v6, 0x0

    .line 269
    .line 270
    :goto_4
    iget-object v0, v9, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 271
    .line 272
    if-nez v0, :cond_8

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Landroidx/media3/exoplayer/dash/manifest/Representation;->l()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 276
    move-result-object v0

    .line 277
    move-object v7, v0

    .line 278
    goto :goto_5

    .line 279
    :cond_8
    const/4 v7, 0x0

    .line 280
    .line 281
    :goto_5
    if-nez v6, :cond_9

    .line 282
    .line 283
    if-eqz v7, :cond_a

    .line 284
    .line 285
    :cond_9
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 286
    .line 287
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 288
    .line 289
    .line 290
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    .line 291
    move-result-object v3

    .line 292
    .line 293
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 294
    .line 295
    .line 296
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    .line 297
    move-result v4

    .line 298
    .line 299
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 300
    .line 301
    .line 302
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    .line 303
    move-result-object v5

    .line 304
    .line 305
    move-object/from16 v0, p0

    .line 306
    move-object v1, v9

    .line 307
    .line 308
    move-object/from16 v8, v16

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->n(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Landroidx/media3/datasource/DataSource;Landroidx/media3/common/Format;ILjava/lang/Object;Landroidx/media3/exoplayer/dash/manifest/RangedUri;Landroidx/media3/exoplayer/dash/manifest/RangedUri;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 312
    move-result-object v0

    .line 313
    .line 314
    iput-object v0, v14, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 315
    return-void

    .line 316
    .line 317
    .line 318
    :cond_a
    invoke-static {v9}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->a(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)J

    .line 319
    move-result-wide v17

    .line 320
    .line 321
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 322
    .line 323
    iget-boolean v1, v0, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    .line 324
    .line 325
    if-eqz v1, :cond_b

    .line 326
    .line 327
    iget v1, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 331
    move-result v0

    .line 332
    const/4 v10, 0x1

    .line 333
    sub-int/2addr v0, v10

    .line 334
    .line 335
    if-ne v1, v0, :cond_c

    .line 336
    move v5, v10

    .line 337
    goto :goto_6

    .line 338
    :cond_b
    const/4 v10, 0x1

    .line 339
    .line 340
    :cond_c
    move/from16 v5, v27

    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    :goto_6
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 346
    .line 347
    if-eqz v5, :cond_e

    .line 348
    .line 349
    cmp-long v0, v17, v19

    .line 350
    .line 351
    if-eqz v0, :cond_d

    .line 352
    goto :goto_7

    .line 353
    .line 354
    :cond_d
    move/from16 v0, v27

    .line 355
    goto :goto_8

    .line 356
    :cond_e
    :goto_7
    move v0, v10

    .line 357
    .line 358
    .line 359
    :goto_8
    invoke-virtual {v9}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->h()J

    .line 360
    move-result-wide v1

    .line 361
    .line 362
    const-wide/16 v3, 0x0

    .line 363
    .line 364
    cmp-long v1, v1, v3

    .line 365
    .line 366
    if-nez v1, :cond_f

    .line 367
    .line 368
    iput-boolean v0, v14, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    .line 369
    return-void

    .line 370
    .line 371
    .line 372
    :cond_f
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->e(J)J

    .line 373
    move-result-wide v21

    .line 374
    .line 375
    .line 376
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->g(J)J

    .line 377
    move-result-wide v11

    .line 378
    .line 379
    if-eqz v5, :cond_11

    .line 380
    .line 381
    .line 382
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->i(J)J

    .line 383
    move-result-wide v1

    .line 384
    .line 385
    .line 386
    invoke-virtual {v9, v11, v12}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 387
    move-result-wide v3

    .line 388
    .line 389
    sub-long v3, v1, v3

    .line 390
    add-long/2addr v1, v3

    .line 391
    .line 392
    cmp-long v1, v1, v17

    .line 393
    .line 394
    if-ltz v1, :cond_10

    .line 395
    move v5, v10

    .line 396
    goto :goto_9

    .line 397
    .line 398
    :cond_10
    move/from16 v5, v27

    .line 399
    :goto_9
    and-int/2addr v0, v5

    .line 400
    :cond_11
    move v13, v0

    .line 401
    .line 402
    move-object/from16 v0, p0

    .line 403
    move-object v1, v9

    .line 404
    .line 405
    move-object/from16 v2, v26

    .line 406
    .line 407
    move-wide/from16 v3, p3

    .line 408
    .line 409
    move-wide/from16 v5, v21

    .line 410
    move-wide v7, v11

    .line 411
    .line 412
    .line 413
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->m(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Landroidx/media3/exoplayer/source/chunk/MediaChunk;JJJ)J

    .line 414
    move-result-wide v7

    .line 415
    .line 416
    cmp-long v0, v7, v21

    .line 417
    .line 418
    if-gez v0, :cond_12

    .line 419
    .line 420
    new-instance v0, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    .line 421
    .line 422
    .line 423
    invoke-direct {v0}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    .line 424
    .line 425
    iput-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 426
    return-void

    .line 427
    .line 428
    :cond_12
    cmp-long v0, v7, v11

    .line 429
    .line 430
    if-gtz v0, :cond_13

    .line 431
    .line 432
    iget-boolean v1, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->missingLastSegment:Z

    .line 433
    .line 434
    if-eqz v1, :cond_14

    .line 435
    .line 436
    if-ltz v0, :cond_14

    .line 437
    :cond_13
    move-object v15, v14

    .line 438
    goto :goto_b

    .line 439
    .line 440
    :cond_14
    if-eqz v13, :cond_15

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9, v7, v8}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 444
    move-result-wide v0

    .line 445
    .line 446
    cmp-long v0, v0, v17

    .line 447
    .line 448
    if-ltz v0, :cond_15

    .line 449
    .line 450
    iput-boolean v10, v14, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    .line 451
    return-void

    .line 452
    .line 453
    :cond_15
    iget v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    .line 454
    int-to-long v0, v0

    .line 455
    sub-long/2addr v11, v7

    .line 456
    .line 457
    const-wide/16 v2, 0x1

    .line 458
    add-long/2addr v11, v2

    .line 459
    .line 460
    .line 461
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 462
    move-result-wide v0

    .line 463
    long-to-int v0, v0

    .line 464
    .line 465
    cmp-long v1, v17, v19

    .line 466
    .line 467
    if-eqz v1, :cond_16

    .line 468
    .line 469
    :goto_a
    if-le v0, v10, :cond_16

    .line 470
    int-to-long v4, v0

    .line 471
    add-long/2addr v4, v7

    .line 472
    sub-long/2addr v4, v2

    .line 473
    .line 474
    .line 475
    invoke-virtual {v9, v4, v5}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 476
    move-result-wide v4

    .line 477
    .line 478
    cmp-long v1, v4, v17

    .line 479
    .line 480
    if-ltz v1, :cond_16

    .line 481
    .line 482
    add-int/lit8 v0, v0, -0x1

    .line 483
    goto :goto_a

    .line 484
    :cond_16
    move v10, v0

    .line 485
    .line 486
    .line 487
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 488
    move-result v0

    .line 489
    .line 490
    if-eqz v0, :cond_17

    .line 491
    .line 492
    move-wide/from16 v19, p3

    .line 493
    .line 494
    :cond_17
    iget-object v2, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->dataSource:Landroidx/media3/datasource/DataSource;

    .line 495
    .line 496
    iget v3, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackType:I

    .line 497
    .line 498
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 499
    .line 500
    .line 501
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    .line 502
    move-result-object v4

    .line 503
    .line 504
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 505
    .line 506
    .line 507
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    .line 508
    move-result v5

    .line 509
    .line 510
    iget-object v0, v15, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 511
    .line 512
    .line 513
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    .line 514
    move-result-object v6

    .line 515
    .line 516
    move-object/from16 v0, p0

    .line 517
    move-object v1, v9

    .line 518
    move v9, v10

    .line 519
    .line 520
    move-wide/from16 v10, v19

    .line 521
    .line 522
    move-wide/from16 v12, v24

    .line 523
    move-object v15, v14

    .line 524
    .line 525
    move-object/from16 v14, v16

    .line 526
    .line 527
    .line 528
    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->o(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Landroidx/media3/datasource/DataSource;ILandroidx/media3/common/Format;ILjava/lang/Object;JIJJLandroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 529
    move-result-object v0

    .line 530
    .line 531
    iput-object v0, v15, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 532
    return-void

    .line 533
    .line 534
    :goto_b
    iput-boolean v13, v15, Landroidx/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    .line 535
    return-void
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/LoaderErrorThrower;->maybeThrowError()V

    .line 10
    return-void

    .line 11
    :cond_0
    throw v0
.end method

.method protected n(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Landroidx/media3/datasource/DataSource;Landroidx/media3/common/Format;ILjava/lang/Object;Landroidx/media3/exoplayer/dash/manifest/RangedUri;Landroidx/media3/exoplayer/dash/manifest/RangedUri;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/source/chunk/Chunk;
    .locals 13
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/media3/exoplayer/dash/manifest/RangedUri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/media3/exoplayer/dash/manifest/RangedUri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 12
    .line 13
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 14
    .line 15
    move-object/from16 v5, p7

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v5, v4}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;->a(Landroidx/media3/exoplayer/dash/manifest/RangedUri;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v4

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    move-object/from16 v5, p7

    .line 27
    move-object v1, v5

    .line 28
    .line 29
    :goto_0
    if-nez v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 33
    move-result-object v2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_2
    const-string v4, "i"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->e(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->a()Lcom/google/common/collect/b0;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 47
    .line 48
    iget-object v4, v4, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 49
    const/4 v5, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4, v1, v5, v2}, Landroidx/media3/exoplayer/dash/DashUtil;->a(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Landroidx/media3/datasource/DataSpec;

    .line 53
    move-result-object v8

    .line 54
    .line 55
    new-instance v1, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;

    .line 56
    .line 57
    iget-object v12, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 58
    move-object v6, v1

    .line 59
    move-object v7, p2

    .line 60
    .line 61
    move-object/from16 v9, p3

    .line 62
    .line 63
    move/from16 v10, p4

    .line 64
    .line 65
    move-object/from16 v11, p5

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v6 .. v12}, Landroidx/media3/exoplayer/source/chunk/InitializationChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;)V

    .line 69
    return-object v1
.end method

.method protected o(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Landroidx/media3/datasource/DataSource;ILandroidx/media3/common/Format;ILjava/lang/Object;JIJJLandroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/source/chunk/Chunk;
    .locals 27
    .param p14    # Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-wide/from16 v14, p7

    .line 7
    .line 8
    move-wide/from16 v2, p12

    .line 9
    .line 10
    move-object/from16 v4, p14

    .line 11
    .line 12
    iget-object v5, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v14, v15}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->k(J)J

    .line 16
    move-result-wide v8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v14, v15}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->l(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 20
    move-result-object v6

    .line 21
    .line 22
    iget-object v7, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 23
    .line 24
    if-nez v7, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v14, v15}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->i(J)J

    .line 28
    move-result-wide v12

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v14, v15, v2, v3}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->m(JJ)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    const/4 v10, 0x0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    const/16 v10, 0x8

    .line 39
    .line 40
    :goto_0
    if-nez v4, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 44
    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    sub-long v2, v12, v8

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v2, v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->d(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->c(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->e(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->a()Lcom/google/common/collect/b0;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    :goto_1
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 68
    .line 69
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-static {v5, v1, v6, v10, v2}, Landroidx/media3/exoplayer/dash/DashUtil;->a(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Landroidx/media3/datasource/DataSpec;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    new-instance v16, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;

    .line 76
    .line 77
    move-object/from16 v1, v16

    .line 78
    .line 79
    move-object/from16 v2, p2

    .line 80
    .line 81
    move-object/from16 v4, p4

    .line 82
    .line 83
    move/from16 v5, p5

    .line 84
    .line 85
    move-object/from16 v6, p6

    .line 86
    move-wide v7, v8

    .line 87
    move-wide v9, v12

    .line 88
    .line 89
    move-wide/from16 v11, p7

    .line 90
    .line 91
    move/from16 v13, p3

    .line 92
    .line 93
    move-object/from16 v14, p4

    .line 94
    .line 95
    .line 96
    invoke-direct/range {v1 .. v14}, Landroidx/media3/exoplayer/source/chunk/SingleSampleMediaChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJILandroidx/media3/common/Format;)V

    .line 97
    return-object v16

    .line 98
    :cond_2
    const/4 v7, 0x1

    .line 99
    .line 100
    move/from16 v13, p9

    .line 101
    move v12, v7

    .line 102
    .line 103
    :goto_2
    if-ge v7, v13, :cond_4

    .line 104
    int-to-long v10, v7

    .line 105
    add-long/2addr v10, v14

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v10, v11}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->l(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 109
    move-result-object v10

    .line 110
    .line 111
    iget-object v11, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 112
    .line 113
    iget-object v11, v11, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v10, v11}, Landroidx/media3/exoplayer/dash/manifest/RangedUri;->a(Landroidx/media3/exoplayer/dash/manifest/RangedUri;Ljava/lang/String;)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 117
    move-result-object v10

    .line 118
    .line 119
    if-nez v10, :cond_3

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 123
    .line 124
    add-int/lit8 v7, v7, 0x1

    .line 125
    move-object v6, v10

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    :goto_3
    int-to-long v10, v12

    .line 128
    add-long/2addr v10, v14

    .line 129
    .line 130
    const-wide/16 v18, 0x1

    .line 131
    .line 132
    sub-long v10, v10, v18

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v10, v11}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->i(J)J

    .line 136
    move-result-wide v22

    .line 137
    .line 138
    .line 139
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->a(Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)J

    .line 140
    move-result-wide v18

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 146
    .line 147
    cmp-long v7, v18, v20

    .line 148
    .line 149
    if-eqz v7, :cond_5

    .line 150
    .line 151
    cmp-long v7, v18, v22

    .line 152
    .line 153
    if-gtz v7, :cond_5

    .line 154
    .line 155
    move-wide/from16 v24, v18

    .line 156
    goto :goto_4

    .line 157
    .line 158
    :cond_5
    move-wide/from16 v24, v20

    .line 159
    .line 160
    .line 161
    :goto_4
    invoke-virtual {v1, v10, v11, v2, v3}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->m(JJ)Z

    .line 162
    move-result v2

    .line 163
    .line 164
    if-eqz v2, :cond_6

    .line 165
    const/4 v10, 0x0

    .line 166
    goto :goto_5

    .line 167
    .line 168
    :cond_6
    const/16 v10, 0x8

    .line 169
    .line 170
    :goto_5
    if-nez v4, :cond_7

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 174
    move-result-object v2

    .line 175
    goto :goto_6

    .line 176
    .line 177
    :cond_7
    sub-long v2, v22, v8

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v2, v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->d(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    iget-object v3, v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 184
    .line 185
    .line 186
    invoke-static {v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->c(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Ljava/lang/String;

    .line 187
    move-result-object v3

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->e(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 191
    move-result-object v2

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->a()Lcom/google/common/collect/b0;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    :goto_6
    iget-object v3, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 198
    .line 199
    iget-object v3, v3, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v3, v6, v10, v2}, Landroidx/media3/exoplayer/dash/DashUtil;->a(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Landroidx/media3/datasource/DataSpec;

    .line 203
    move-result-object v4

    .line 204
    .line 205
    iget-wide v2, v5, Landroidx/media3/exoplayer/dash/manifest/Representation;->presentationTimeOffsetUs:J

    .line 206
    neg-long v2, v2

    .line 207
    .line 208
    move-wide/from16 v19, v2

    .line 209
    .line 210
    new-instance v26, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;

    .line 211
    .line 212
    move-object/from16 v2, v26

    .line 213
    .line 214
    iget-object v1, v1, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 215
    .line 216
    move-object/from16 v21, v1

    .line 217
    .line 218
    move-object/from16 v3, p2

    .line 219
    .line 220
    move-object/from16 v5, p4

    .line 221
    .line 222
    move/from16 v6, p5

    .line 223
    .line 224
    move-object/from16 v7, p6

    .line 225
    .line 226
    move-wide/from16 v10, v22

    .line 227
    move v1, v12

    .line 228
    .line 229
    move-wide/from16 v12, p10

    .line 230
    .line 231
    move-wide/from16 v14, v24

    .line 232
    .line 233
    move-wide/from16 v16, p7

    .line 234
    .line 235
    move/from16 v18, v1

    .line 236
    .line 237
    .line 238
    invoke-direct/range {v2 .. v21}, Landroidx/media3/exoplayer/source/chunk/ContainerMediaChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJJJIJLandroidx/media3/exoplayer/source/chunk/ChunkExtractor;)V

    .line 239
    return-object v26
.end method

.method public release()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    iget-object v3, v3, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;->release()V

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method
