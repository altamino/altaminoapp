.class public final Landroidx/media3/exoplayer/dash/offline/DashDownloader;
.super Landroidx/media3/exoplayer/offline/SegmentDownloader;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/offline/SegmentDownloader<",
        "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/offline/a;

    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7

    .line 2
    new-instance v2, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;

    invoke-direct {v2}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;-><init>()V

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            ">;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            ">;",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            "J)V"
        }
    .end annotation

    .line 4
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;J)V

    .line 5
    new-instance p1, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    invoke-direct {p1}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    return-void
.end method

.method private l(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;",
            "JJZ",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p2

    .line 5
    .line 6
    move/from16 v9, p7

    .line 7
    .line 8
    move-object/from16 v10, p8

    .line 9
    const/4 v0, 0x0

    .line 10
    move v11, v0

    .line 11
    .line 12
    :goto_0
    iget-object v0, v8, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ge v11, v0, :cond_6

    .line 19
    .line 20
    iget-object v0, v8, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/media3/exoplayer/dash/manifest/Representation;

    .line 27
    .line 28
    :try_start_0
    iget v1, v8, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;->type:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 29
    .line 30
    move-object/from16 v12, p1

    .line 31
    .line 32
    .line 33
    :try_start_1
    invoke-direct {v7, v12, v1, v0, v9}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->n(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;Z)Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 34
    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    if-eqz v13, :cond_3

    .line 37
    .line 38
    move-wide/from16 v14, p5

    .line 39
    .line 40
    .line 41
    invoke-interface {v13, v14, v15}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->e(J)J

    .line 42
    move-result-wide v16

    .line 43
    .line 44
    const-wide/16 v1, -0x1

    .line 45
    .line 46
    cmp-long v1, v16, v1

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, v7, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->baseUrlExclusionList:Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 51
    .line 52
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/a0;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/dash/BaseUrlExclusionList;->j(Ljava/util/List;)Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    check-cast v1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;

    .line 63
    .line 64
    iget-object v6, v1, Landroidx/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/Representation;->m()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 68
    move-result-object v18

    .line 69
    .line 70
    if-eqz v18, :cond_0

    .line 71
    .line 72
    move-object/from16 v1, p0

    .line 73
    move-object v2, v0

    .line 74
    move-object v3, v6

    .line 75
    .line 76
    move-wide/from16 v4, p3

    .line 77
    .line 78
    move-object/from16 v19, v6

    .line 79
    .line 80
    move-object/from16 v6, v18

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->m(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;JLandroidx/media3/exoplayer/dash/manifest/RangedUri;)Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_0
    move-object/from16 v19, v6

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/manifest/Representation;->l()Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    if-eqz v6, :cond_1

    .line 97
    .line 98
    move-object/from16 v1, p0

    .line 99
    move-object v2, v0

    .line 100
    .line 101
    move-object/from16 v3, v19

    .line 102
    .line 103
    move-wide/from16 v4, p3

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->m(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;JLandroidx/media3/exoplayer/dash/manifest/RangedUri;)Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :cond_1
    invoke-interface {v13}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->f()J

    .line 114
    move-result-wide v1

    .line 115
    .line 116
    add-long v16, v1, v16

    .line 117
    .line 118
    const-wide/16 v20, 0x1

    .line 119
    .line 120
    sub-long v16, v16, v20

    .line 121
    move-wide v4, v1

    .line 122
    .line 123
    :goto_2
    cmp-long v1, v4, v16

    .line 124
    .line 125
    if-gtz v1, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-interface {v13, v4, v5}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    .line 129
    move-result-wide v1

    .line 130
    .line 131
    add-long v22, p3, v1

    .line 132
    .line 133
    .line 134
    invoke-interface {v13, v4, v5}, Landroidx/media3/exoplayer/dash/DashSegmentIndex;->g(J)Landroidx/media3/exoplayer/dash/manifest/RangedUri;

    .line 135
    move-result-object v6

    .line 136
    .line 137
    move-object/from16 v1, p0

    .line 138
    move-object v2, v0

    .line 139
    .line 140
    move-object/from16 v3, v19

    .line 141
    .line 142
    move-wide/from16 v24, v4

    .line 143
    .line 144
    move-wide/from16 v4, v22

    .line 145
    .line 146
    .line 147
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->m(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;JLandroidx/media3/exoplayer/dash/manifest/RangedUri;)Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    add-long v4, v24, v20

    .line 154
    goto :goto_2

    .line 155
    .line 156
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadException;

    .line 157
    .line 158
    const-string v1, "Unbounded segment index"

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadException;-><init>(Ljava/lang/String;)V

    .line 162
    throw v0

    .line 163
    .line 164
    :cond_3
    move-wide/from16 v14, p5

    .line 165
    .line 166
    :try_start_2
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadException;

    .line 167
    .line 168
    const-string v1, "Missing segment index"

    .line 169
    .line 170
    .line 171
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadException;-><init>(Ljava/lang/String;)V

    .line 172
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    goto :goto_4

    .line 175
    :catch_1
    move-exception v0

    .line 176
    .line 177
    :goto_3
    move-wide/from16 v14, p5

    .line 178
    goto :goto_4

    .line 179
    :catch_2
    move-exception v0

    .line 180
    .line 181
    move-object/from16 v12, p1

    .line 182
    goto :goto_3

    .line 183
    .line 184
    :goto_4
    if-eqz v9, :cond_5

    .line 185
    .line 186
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    :cond_5
    throw v0

    .line 190
    :cond_6
    return-void
.end method

.method private m(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;JLandroidx/media3/exoplayer/dash/manifest/RangedUri;)Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, p5, v0, v1}, Landroidx/media3/exoplayer/dash/DashUtil;->a(Landroidx/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Landroidx/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Landroidx/media3/datasource/DataSpec;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    new-instance p2, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p3, p4, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;-><init>(JLandroidx/media3/datasource/DataSpec;)V

    .line 15
    return-object p2
.end method

.method private n(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;Z)Landroidx/media3/exoplayer/dash/DashSegmentIndex;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroidx/media3/exoplayer/dash/manifest/Representation;->k()Landroidx/media3/exoplayer/dash/DashSegmentIndex;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/dash/offline/DashDownloader$1;-><init>(Landroidx/media3/exoplayer/dash/offline/DashDownloader;Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/dash/manifest/Representation;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, p4}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->e(Landroidx/media3/common/util/RunnableFutureTask;Z)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Landroidx/media3/extractor/ChunkIndex;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    new-instance p2, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;

    .line 25
    .line 26
    iget-wide p3, p3, Landroidx/media3/exoplayer/dash/manifest/Representation;->presentationTimeOffsetUs:J

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1, p3, p4}, Landroidx/media3/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Landroidx/media3/extractor/ChunkIndex;J)V

    .line 30
    move-object p1, p2

    .line 31
    :goto_0
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic h(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/offline/FilterableManifest;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p2, Landroidx/media3/exoplayer/dash/manifest/DashManifest;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->o(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Z)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected o(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Z)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    new-instance v10, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const/4 v11, 0x0

    .line 9
    move v12, v11

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->d()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-ge v12, v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->c(I)Landroidx/media3/exoplayer/dash/manifest/Period;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget-wide v2, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->startMs:J

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 25
    move-result-wide v13

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/dash/manifest/DashManifest;->f(I)J

    .line 29
    move-result-wide v15

    .line 30
    .line 31
    iget-object v9, v1, Landroidx/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 32
    move v8, v11

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 36
    move-result v1

    .line 37
    .line 38
    if-ge v8, v1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    move-object v3, v1

    .line 44
    .line 45
    check-cast v3, Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 46
    .line 47
    move-object/from16 v1, p0

    .line 48
    .line 49
    move-object/from16 v2, p1

    .line 50
    move-wide v4, v13

    .line 51
    move-wide v6, v15

    .line 52
    .line 53
    move/from16 v17, v8

    .line 54
    .line 55
    move/from16 v8, p3

    .line 56
    .line 57
    move-object/from16 v18, v9

    .line 58
    move-object v9, v10

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/dash/offline/DashDownloader;->l(Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V

    .line 62
    .line 63
    add-int/lit8 v8, v17, 0x1

    .line 64
    .line 65
    move-object/from16 v9, v18

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-object v10
.end method
