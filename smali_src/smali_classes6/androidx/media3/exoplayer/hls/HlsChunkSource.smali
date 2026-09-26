.class Landroidx/media3/exoplayer/hls/HlsChunkSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;,
        Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;
    }
.end annotation


# static fields
.field public static final CHUNK_PUBLICATION_STATE_PRELOAD:I = 0x0

.field public static final CHUNK_PUBLICATION_STATE_PUBLISHED:I = 0x1

.field public static final CHUNK_PUBLICATION_STATE_REMOVED:I = 0x2

.field private static final KEY_CACHE_SIZE:I = 0x4


# instance fields
.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final encryptionDataSource:Landroidx/media3/datasource/DataSource;

.field private expectedPlaylistUrl:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field private fatalError:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private independentSegments:Z

.field private isPrimaryTimestampSource:Z

.field private final keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

.field private liveEdgeInPeriodTimeUs:J

.field private final mediaDataSource:Landroidx/media3/datasource/DataSource;

.field private final muxedCaptionFormats:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final playlistFormats:[Landroidx/media3/common/Format;

.field private final playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final playlistUrls:[Landroid/net/Uri;

.field private scratchSpace:[B

.field private seenExpectedPlaylistError:Z

.field private final timestampAdjusterInitializationTimeoutMs:J

.field private final timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

.field private final trackGroup:Landroidx/media3/common/TrackGroup;

.field private trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;[Landroid/net/Uri;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLjava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;)V
    .locals 0
    .param p6    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/media3/exoplayer/upstream/CmcdConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsExtractorFactory;",
            "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;",
            "[",
            "Landroid/net/Uri;",
            "[",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;",
            "Landroidx/media3/datasource/TransferListener;",
            "Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            "Landroidx/media3/exoplayer/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 10
    .line 11
    iput-object p4, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Landroidx/media3/common/Format;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 14
    .line 15
    iput-wide p8, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    .line 16
    .line 17
    iput-object p10, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 18
    .line 19
    iput-object p11, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 20
    .line 21
    iput-object p12, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 22
    .line 23
    new-instance p1, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 24
    const/4 p2, 0x4

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 30
    .line 31
    sget-object p1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 41
    const/4 p1, 0x1

    .line 42
    .line 43
    .line 44
    invoke-interface {p5, p1}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->a(I)Landroidx/media3/datasource/DataSource;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->mediaDataSource:Landroidx/media3/datasource/DataSource;

    .line 48
    .line 49
    if-eqz p6, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p6}, Landroidx/media3/datasource/DataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    .line 53
    :cond_0
    const/4 p1, 0x3

    .line 54
    .line 55
    .line 56
    invoke-interface {p5, p1}, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;->a(I)Landroidx/media3/datasource/DataSource;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media3/datasource/DataSource;

    .line 60
    .line 61
    new-instance p1, Landroidx/media3/common/TrackGroup;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p4}, Landroidx/media3/common/TrackGroup;-><init>([Landroidx/media3/common/Format;)V

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 67
    .line 68
    new-instance p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const/4 p2, 0x0

    .line 73
    :goto_0
    array-length p5, p3

    .line 74
    .line 75
    if-ge p2, p5, :cond_2

    .line 76
    .line 77
    aget-object p5, p4, p2

    .line 78
    .line 79
    iget p5, p5, Landroidx/media3/common/Format;->roleFlags:I

    .line 80
    .line 81
    and-int/lit16 p5, p5, 0x4000

    .line 82
    .line 83
    if-nez p5, :cond_1

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p5

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_2
    new-instance p2, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;

    .line 96
    .line 97
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p3, p1}, Landroidx/media3/exoplayer/hls/HlsChunkSource$InitializationTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    .line 105
    .line 106
    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 107
    return-void
.end method

.method private static d(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/media3/common/util/UriUtil;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackGroup;->c(I)Landroidx/media3/common/Format;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method private g(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;
    .locals 7
    .param p1    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/HlsMediaChunk;",
            "Z",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "JJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->f()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    new-instance p2, Landroid/util/Pair;

    .line 16
    .line 17
    iget p3, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    .line 18
    .line 19
    if-ne p3, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->e()J

    .line 23
    move-result-wide p3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-wide p3, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    iget p1, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    .line 33
    .line 34
    if-ne p1, v1, :cond_2

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_3
    new-instance p2, Landroid/util/Pair;

    .line 48
    .line 49
    iget-wide p3, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    .line 50
    .line 51
    .line 52
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    iget p1, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :goto_2
    return-object p2

    .line 64
    .line 65
    :cond_4
    :goto_3
    iget-wide v2, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 66
    add-long/2addr v2, p4

    .line 67
    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    iget-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    .line 71
    .line 72
    if-eqz p2, :cond_5

    .line 73
    goto :goto_4

    .line 74
    .line 75
    :cond_5
    iget-wide p6, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 76
    .line 77
    :cond_6
    :goto_4
    iget-boolean p2, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    .line 78
    .line 79
    if-nez p2, :cond_7

    .line 80
    .line 81
    cmp-long p2, p6, v2

    .line 82
    .line 83
    if-ltz p2, :cond_7

    .line 84
    .line 85
    new-instance p1, Landroid/util/Pair;

    .line 86
    .line 87
    iget-wide p4, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 88
    .line 89
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 90
    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 93
    move-result p2

    .line 94
    int-to-long p2, p2

    .line 95
    add-long/2addr p4, p2

    .line 96
    .line 97
    .line 98
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object p3

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    return-object p1

    .line 108
    :cond_7
    sub-long/2addr p6, p4

    .line 109
    .line 110
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 111
    .line 112
    .line 113
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    move-result-object p4

    .line 115
    .line 116
    iget-object p5, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 117
    .line 118
    .line 119
    invoke-interface {p5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i()Z

    .line 120
    move-result p5

    .line 121
    const/4 v2, 0x0

    .line 122
    .line 123
    if-eqz p5, :cond_9

    .line 124
    .line 125
    if-nez p1, :cond_8

    .line 126
    goto :goto_5

    .line 127
    :cond_8
    move p1, v2

    .line 128
    goto :goto_6

    .line 129
    :cond_9
    :goto_5
    move p1, v0

    .line 130
    .line 131
    .line 132
    :goto_6
    invoke-static {p2, p4, v0, p1}, Landroidx/media3/common/util/Util;->g(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 133
    move-result p1

    .line 134
    int-to-long p4, p1

    .line 135
    .line 136
    iget-wide v3, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 137
    add-long/2addr p4, v3

    .line 138
    .line 139
    if-ltz p1, :cond_d

    .line 140
    .line 141
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 142
    .line 143
    .line 144
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 148
    .line 149
    iget-wide v3, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 150
    .line 151
    iget-wide v5, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    .line 152
    add-long/2addr v3, v5

    .line 153
    .line 154
    cmp-long p2, p6, v3

    .line 155
    .line 156
    if-gez p2, :cond_a

    .line 157
    .line 158
    iget-object p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 159
    goto :goto_7

    .line 160
    .line 161
    :cond_a
    iget-object p1, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 162
    .line 163
    .line 164
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 165
    move-result p2

    .line 166
    .line 167
    if-ge v2, p2, :cond_d

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 174
    .line 175
    iget-wide v3, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 176
    .line 177
    iget-wide v5, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    .line 178
    add-long/2addr v3, v5

    .line 179
    .line 180
    cmp-long v0, p6, v3

    .line 181
    .line 182
    if-gez v0, :cond_c

    .line 183
    .line 184
    iget-boolean p2, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    .line 185
    .line 186
    if-eqz p2, :cond_d

    .line 187
    .line 188
    iget-object p2, p3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 189
    .line 190
    if-ne p1, p2, :cond_b

    .line 191
    .line 192
    const-wide/16 p1, 0x1

    .line 193
    goto :goto_8

    .line 194
    .line 195
    :cond_b
    const-wide/16 p1, 0x0

    .line 196
    :goto_8
    add-long/2addr p4, p1

    .line 197
    move v1, v2

    .line 198
    goto :goto_9

    .line 199
    .line 200
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 201
    goto :goto_7

    .line 202
    .line 203
    :cond_d
    :goto_9
    new-instance p1, Landroid/util/Pair;

    .line 204
    .line 205
    .line 206
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    move-result-object p2

    .line 208
    .line 209
    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object p3

    .line 212
    .line 213
    .line 214
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    return-object p1
.end method

.method private static h(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 3
    .line 4
    sub-long v0, p1, v0

    .line 5
    long-to-int v0, v0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    if-eq p3, v4, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p3, v3

    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ge p3, v0, :cond_1

    .line 29
    .line 30
    new-instance v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 42
    :cond_1
    return-object v2

    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 51
    .line 52
    if-ne p3, v4, :cond_3

    .line 53
    .line 54
    new-instance p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v1, p1, p2, v4}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 58
    return-object p0

    .line 59
    .line 60
    :cond_3
    iget-object v5, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 64
    move-result v5

    .line 65
    .line 66
    if-ge p3, v5, :cond_4

    .line 67
    .line 68
    new-instance p0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    .line 69
    .line 70
    iget-object v0, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 80
    return-object p0

    .line 81
    .line 82
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 88
    move-result p3

    .line 89
    .line 90
    const-wide/16 v5, 0x1

    .line 91
    .line 92
    if-ge v0, p3, :cond_5

    .line 93
    .line 94
    new-instance p3, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    .line 95
    .line 96
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 103
    add-long/2addr p1, v5

    .line 104
    .line 105
    .line 106
    invoke-direct {p3, p0, p1, p2, v4}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 107
    return-object p3

    .line 108
    .line 109
    :cond_5
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 110
    .line 111
    .line 112
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 113
    move-result p3

    .line 114
    .line 115
    if-nez p3, :cond_6

    .line 116
    .line 117
    new-instance p3, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    .line 118
    .line 119
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 120
    .line 121
    .line 122
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    check-cast p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 126
    add-long/2addr p1, v5

    .line 127
    .line 128
    .line 129
    invoke-direct {p3, p0, p1, p2, v3}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 130
    return-object p3

    .line 131
    :cond_6
    return-object v2
.end method

.method static j(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "JI)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    .line 6
    if-ltz p1, :cond_7

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result p2

    .line 13
    .line 14
    if-ge p2, p1, :cond_0

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, -0x1

    .line 29
    .line 30
    if-ge p1, v0, :cond_4

    .line 31
    .line 32
    if-eq p3, v2, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 41
    .line 42
    if-nez p3, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 49
    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 52
    move-result v3

    .line 53
    .line 54
    if-ge p3, v3, :cond_2

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, p3, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    :cond_2
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 70
    .line 71
    :cond_3
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 72
    .line 73
    .line 74
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-interface {p3, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    move p3, v1

    .line 84
    .line 85
    :cond_4
    iget-wide v3, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 91
    .line 92
    cmp-long p1, v3, v5

    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    if-ne p3, v2, :cond_5

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    move v1, p3

    .line 99
    .line 100
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 104
    move-result p1

    .line 105
    .line 106
    if-ge v1, p1, :cond_6

    .line 107
    .line 108
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 109
    .line 110
    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 112
    move-result p1

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 116
    move-result-object p0

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    .line 126
    .line 127
    :cond_7
    :goto_2
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 128
    move-result-object p0

    .line 129
    return-object p0
.end method

.method private m(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/source/chunk/Chunk;
    .locals 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
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
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->c(Landroid/net/Uri;)[B

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1, v1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->b(Landroid/net/Uri;[B)[B

    .line 18
    return-object v0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {}, Lcom/google/common/collect/b0;->m()Lcom/google/common/collect/b0;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz p4, :cond_3

    .line 25
    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    const-string p3, "i"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->e(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->a()Lcom/google/common/collect/b0;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    :cond_3
    new-instance p3, Landroidx/media3/datasource/DataSpec$Builder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p3}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Landroidx/media3/datasource/DataSpec$Builder;->i(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 44
    move-result-object p1

    .line 45
    const/4 p3, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroidx/media3/datasource/DataSpec$Builder;->b(I)Landroidx/media3/datasource/DataSpec$Builder;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/media3/datasource/DataSpec$Builder;->e(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    new-instance p1, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->encryptionDataSource:Landroidx/media3/datasource/DataSource;

    .line 62
    .line 63
    iget-object p3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Landroidx/media3/common/Format;

    .line 64
    .line 65
    aget-object v3, p3, p2

    .line 66
    .line 67
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    .line 71
    move-result v4

    .line 72
    .line 73
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 80
    move-object v0, p1

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;[B)V

    .line 84
    return-object p1
.end method

.method private t(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sub-long v2, v0, p1

    :cond_0
    return-wide v2
.end method

.method private x(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->d()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a()J

    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    .line 23
    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->liveEdgeInPeriodTimeUs:J

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/hls/HlsMediaChunk;J)[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    .locals 17
    .param p1    # Landroidx/media3/exoplayer/hls/HlsMediaChunk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    if-nez v9, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    :goto_0
    move v10, v0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 12
    .line 13
    iget-object v1, v9, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackGroup;->d(Landroidx/media3/common/Format;)I

    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :goto_1
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    .line 24
    move-result v11

    .line 25
    .line 26
    new-array v12, v11, [Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    .line 27
    const/4 v13, 0x0

    .line 28
    move v14, v13

    .line 29
    .line 30
    :goto_2
    if-ge v14, v11, :cond_3

    .line 31
    .line 32
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v14}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 39
    .line 40
    aget-object v1, v1, v0

    .line 41
    .line 42
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 43
    .line 44
    .line 45
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->h(Landroid/net/Uri;)Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    sget-object v0, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    .line 51
    .line 52
    aput-object v0, v12, v14

    .line 53
    .line 54
    move/from16 v16, v14

    .line 55
    goto :goto_4

    .line 56
    .line 57
    :cond_1
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v1, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->l(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 61
    move-result-object v15

    .line 62
    .line 63
    .line 64
    invoke-static {v15}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    iget-wide v1, v15, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 67
    .line 68
    iget-object v3, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 69
    .line 70
    .line 71
    invoke-interface {v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a()J

    .line 72
    move-result-wide v3

    .line 73
    .line 74
    sub-long v6, v1, v3

    .line 75
    .line 76
    if-eq v0, v10, :cond_2

    .line 77
    const/4 v0, 0x1

    .line 78
    move v2, v0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    move v2, v13

    .line 81
    .line 82
    :goto_3
    move-object/from16 v0, p0

    .line 83
    .line 84
    move-object/from16 v1, p1

    .line 85
    move-object v3, v15

    .line 86
    move-wide v4, v6

    .line 87
    .line 88
    move/from16 v16, v14

    .line 89
    move-wide v13, v6

    .line 90
    .line 91
    move-wide/from16 v6, p2

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v1, Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 103
    move-result-wide v1

    .line 104
    .line 105
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v0

    .line 112
    .line 113
    new-instance v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;

    .line 114
    .line 115
    iget-object v4, v15, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-static {v15, v1, v2, v0}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->j(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Ljava/util/List;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-direct {v3, v4, v13, v14, v0}, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 123
    .line 124
    aput-object v3, v12, v16

    .line 125
    .line 126
    :goto_4
    add-int/lit8 v14, v16, 0x1

    .line 127
    const/4 v13, 0x0

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    return-object v12
.end method

.method public b(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    if-ge v0, v2, :cond_0

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    .line 23
    move-result v2

    .line 24
    .line 25
    aget-object v1, v1, v2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->l(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .line 33
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_1
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a()J

    .line 54
    move-result-wide v4

    .line 55
    sub-long/2addr v1, v4

    .line 56
    .line 57
    sub-long v5, p1, v1

    .line 58
    .line 59
    iget-object p1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2, v3, v3}, Landroidx/media3/common/util/Util;->g(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 67
    move-result p1

    .line 68
    .line 69
    iget-object p2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 70
    .line 71
    .line 72
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 76
    .line 77
    iget-wide v7, p2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 78
    .line 79
    iget-object p2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 83
    move-result p2

    .line 84
    sub-int/2addr p2, v3

    .line 85
    .line 86
    if-eq p1, p2, :cond_2

    .line 87
    .line 88
    iget-object p2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 89
    add-int/2addr p1, v3

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 96
    .line 97
    iget-wide p1, p1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    .line 98
    move-wide v9, p1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move-wide v9, v7

    .line 101
    :goto_1
    move-object v4, p3

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/exoplayer/SeekParameters;->a(JJJ)J

    .line 105
    move-result-wide p1

    .line 106
    add-long/2addr p1, v1

    .line 107
    :cond_3
    :goto_2
    return-wide p1
.end method

.method public c(Landroidx/media3/exoplayer/hls/HlsMediaChunk;)I
    .locals 8

    .line 1
    .line 2
    iget v0, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return v2

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 12
    .line 13
    iget-object v3, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroidx/media3/common/TrackGroup;->d(Landroidx/media3/common/Format;)I

    .line 17
    move-result v1

    .line 18
    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->l(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 33
    .line 34
    iget-wide v4, p1, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    .line 35
    .line 36
    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 37
    sub-long/2addr v4, v6

    .line 38
    long-to-int v1, v4

    .line 39
    .line 40
    if-gez v1, :cond_1

    .line 41
    return v2

    .line 42
    .line 43
    :cond_1
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 47
    move-result v4

    .line 48
    .line 49
    if-ge v1, v4, :cond_2

    .line 50
    .line 51
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 63
    .line 64
    :goto_0
    iget v4, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    .line 65
    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 68
    move-result v5

    .line 69
    const/4 v6, 0x2

    .line 70
    .line 71
    if-lt v4, v5, :cond_3

    .line 72
    return v6

    .line 73
    .line 74
    :cond_3
    iget v4, p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 81
    .line 82
    iget-boolean v4, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    .line 83
    .line 84
    if-eqz v4, :cond_4

    .line 85
    return v3

    .line 86
    .line 87
    :cond_4
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iget-object p1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 100
    .line 101
    iget-object p1, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    move v2, v6

    .line 110
    :goto_1
    return v2
.end method

.method public f(JJLjava/util/List;ZLandroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/hls/HlsMediaChunk;",
            ">;Z",
            "Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-wide/from16 v9, p3

    .line 5
    .line 6
    move-object/from16 v11, p7

    .line 7
    .line 8
    .line 9
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v15, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/google/common/collect/h0;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    .line 21
    move-object v15, v0

    .line 22
    .line 23
    :goto_0
    if-nez v15, :cond_1

    .line 24
    const/4 v14, -0x1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 28
    .line 29
    iget-object v1, v15, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackGroup;->d(Landroidx/media3/common/Format;)I

    .line 33
    move-result v0

    .line 34
    move v14, v0

    .line 35
    .line 36
    :goto_1
    sub-long v0, v9, p1

    .line 37
    .line 38
    .line 39
    invoke-direct/range {p0 .. p2}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t(J)J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    if-eqz v15, :cond_2

    .line 43
    .line 44
    iget-boolean v4, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v15}, Landroidx/media3/exoplayer/source/chunk/Chunk;->b()J

    .line 50
    move-result-wide v4

    .line 51
    sub-long/2addr v0, v4

    .line 52
    .line 53
    const-wide/16 v6, 0x0

    .line 54
    .line 55
    .line 56
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 57
    move-result-wide v0

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    .line 64
    cmp-long v16, v2, v16

    .line 65
    .line 66
    if-eqz v16, :cond_2

    .line 67
    sub-long/2addr v2, v4

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 71
    move-result-wide v2

    .line 72
    .line 73
    :cond_2
    move-wide/from16 v25, v0

    .line 74
    .line 75
    move-wide/from16 v21, v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v15, v9, v10}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->a(Landroidx/media3/exoplayer/hls/HlsMediaChunk;J)[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    .line 79
    move-result-object v24

    .line 80
    .line 81
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 82
    .line 83
    move-object/from16 v16, v0

    .line 84
    .line 85
    move-wide/from16 v17, p1

    .line 86
    .line 87
    move-wide/from16 v19, v25

    .line 88
    .line 89
    move-object/from16 v23, p5

    .line 90
    .line 91
    .line 92
    invoke-interface/range {v16 .. v24}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->i(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    .line 93
    .line 94
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    .line 98
    move-result v6

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v4, 0x1

    .line 101
    .line 102
    if-eq v14, v6, :cond_3

    .line 103
    .line 104
    move/from16 v16, v4

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :cond_3
    move/from16 v16, v7

    .line 108
    .line 109
    :goto_2
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 110
    .line 111
    aget-object v5, v0, v6

    .line 112
    .line 113
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 114
    .line 115
    .line 116
    invoke-interface {v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->h(Landroid/net/Uri;)Z

    .line 117
    move-result v0

    .line 118
    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    iput-object v5, v11, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 122
    .line 123
    iget-boolean v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 124
    .line 125
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v1

    .line 130
    and-int/2addr v0, v1

    .line 131
    .line 132
    iput-boolean v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 133
    .line 134
    iput-object v5, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 135
    return-void

    .line 136
    .line 137
    :cond_4
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v5, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->l(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    .line 144
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    iget-boolean v0, v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    .line 147
    .line 148
    iput-boolean v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->independentSegments:Z

    .line 149
    .line 150
    .line 151
    invoke-direct {v8, v3}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->x(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    .line 152
    .line 153
    iget-wide v0, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 154
    .line 155
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 156
    .line 157
    .line 158
    invoke-interface {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a()J

    .line 159
    move-result-wide v17

    .line 160
    .line 161
    sub-long v17, v0, v17

    .line 162
    .line 163
    move-object/from16 v0, p0

    .line 164
    move-object v1, v15

    .line 165
    .line 166
    move/from16 v2, v16

    .line 167
    .line 168
    move-object/from16 p1, v3

    .line 169
    move v12, v4

    .line 170
    .line 171
    move-object/from16 v20, v5

    .line 172
    .line 173
    move-wide/from16 v4, v17

    .line 174
    .line 175
    move/from16 v21, v6

    .line 176
    .line 177
    move-wide/from16 v6, p3

    .line 178
    .line 179
    .line 180
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 189
    move-result-wide v1

    .line 190
    .line 191
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 197
    move-result v0

    .line 198
    .line 199
    iget-wide v4, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 200
    .line 201
    cmp-long v4, v1, v4

    .line 202
    .line 203
    if-gez v4, :cond_5

    .line 204
    .line 205
    if-eqz v15, :cond_5

    .line 206
    .line 207
    if-eqz v16, :cond_5

    .line 208
    .line 209
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 210
    .line 211
    aget-object v6, v0, v14

    .line 212
    .line 213
    iget-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 214
    .line 215
    .line 216
    invoke-interface {v0, v6, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->l(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 217
    move-result-object v7

    .line 218
    .line 219
    .line 220
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    iget-wide v0, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 223
    .line 224
    iget-object v2, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 225
    .line 226
    .line 227
    invoke-interface {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a()J

    .line 228
    move-result-wide v2

    .line 229
    .line 230
    sub-long v16, v0, v2

    .line 231
    const/4 v2, 0x0

    .line 232
    .line 233
    move-object/from16 v0, p0

    .line 234
    move-object v1, v15

    .line 235
    move-object v3, v7

    .line 236
    .line 237
    move-wide/from16 v4, v16

    .line 238
    .line 239
    move-object/from16 v18, v6

    .line 240
    .line 241
    move-object/from16 v20, v7

    .line 242
    .line 243
    move-wide/from16 v6, p3

    .line 244
    .line 245
    .line 246
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v1, Ljava/lang/Long;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 255
    move-result-wide v1

    .line 256
    .line 257
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 263
    move-result v0

    .line 264
    move v3, v14

    .line 265
    .line 266
    move-object/from16 v7, v18

    .line 267
    .line 268
    move-object/from16 v6, v20

    .line 269
    goto :goto_3

    .line 270
    :cond_5
    move-object v6, v3

    .line 271
    .line 272
    move-wide/from16 v4, v17

    .line 273
    .line 274
    move-object/from16 v7, v20

    .line 275
    .line 276
    move/from16 v3, v21

    .line 277
    .line 278
    :goto_3
    iget-wide v9, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 279
    .line 280
    cmp-long v9, v1, v9

    .line 281
    .line 282
    if-gez v9, :cond_6

    .line 283
    .line 284
    new-instance v0, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    .line 285
    .line 286
    .line 287
    invoke-direct {v0}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    .line 288
    .line 289
    iput-object v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 290
    return-void

    .line 291
    .line 292
    .line 293
    :cond_6
    invoke-static {v6, v1, v2, v0}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    if-nez v0, :cond_a

    .line 297
    .line 298
    iget-boolean v0, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    .line 299
    .line 300
    if-nez v0, :cond_7

    .line 301
    .line 302
    iput-object v7, v11, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    .line 303
    .line 304
    iget-boolean v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 305
    .line 306
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 310
    move-result v1

    .line 311
    and-int/2addr v0, v1

    .line 312
    .line 313
    iput-boolean v0, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 314
    .line 315
    iput-object v7, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 316
    return-void

    .line 317
    .line 318
    :cond_7
    if-nez p6, :cond_8

    .line 319
    .line 320
    iget-object v0, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 321
    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 324
    move-result v0

    .line 325
    .line 326
    if-eqz v0, :cond_9

    .line 327
    :cond_8
    move v0, v12

    .line 328
    goto :goto_4

    .line 329
    .line 330
    :cond_9
    new-instance v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    .line 331
    .line 332
    iget-object v1, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 333
    .line 334
    .line 335
    invoke-static {v1}, Lcom/google/common/collect/h0;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 336
    move-result-object v1

    .line 337
    .line 338
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 339
    .line 340
    iget-wide v9, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 341
    .line 342
    iget-object v2, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 343
    .line 344
    .line 345
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 346
    move-result v2

    .line 347
    int-to-long v12, v2

    .line 348
    add-long/2addr v9, v12

    .line 349
    .line 350
    const-wide/16 v12, 0x1

    .line 351
    sub-long/2addr v9, v12

    .line 352
    const/4 v2, -0x1

    .line 353
    .line 354
    .line 355
    invoke-direct {v0, v1, v9, v10, v2}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    .line 356
    :cond_a
    const/4 v1, 0x0

    .line 357
    goto :goto_5

    .line 358
    .line 359
    :goto_4
    iput-boolean v0, v11, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 360
    return-void

    .line 361
    .line 362
    :goto_5
    iput-boolean v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 363
    const/4 v2, 0x0

    .line 364
    .line 365
    iput-object v2, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 366
    .line 367
    iget-object v9, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 368
    .line 369
    if-nez v9, :cond_b

    .line 370
    move-object v12, v2

    .line 371
    goto :goto_7

    .line 372
    .line 373
    :cond_b
    new-instance v2, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 374
    .line 375
    iget-object v10, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 376
    .line 377
    const-string v21, "h"

    .line 378
    .line 379
    iget-boolean v12, v6, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    .line 380
    const/4 v13, 0x1

    .line 381
    .line 382
    xor-int/lit8 v22, v12, 0x1

    .line 383
    .line 384
    move-object/from16 v16, v2

    .line 385
    .line 386
    move-object/from16 v17, v9

    .line 387
    .line 388
    move-object/from16 v18, v10

    .line 389
    .line 390
    move-wide/from16 v19, v25

    .line 391
    .line 392
    .line 393
    invoke-direct/range {v16 .. v22}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;-><init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V

    .line 394
    .line 395
    .line 396
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e()Z

    .line 397
    move-result v9

    .line 398
    .line 399
    if-eqz v9, :cond_c

    .line 400
    .line 401
    const-string v9, "av"

    .line 402
    goto :goto_6

    .line 403
    .line 404
    :cond_c
    iget-object v9, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 405
    .line 406
    .line 407
    invoke-static {v9}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->c(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Ljava/lang/String;

    .line 408
    move-result-object v9

    .line 409
    .line 410
    .line 411
    :goto_6
    invoke-virtual {v2, v9}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->e(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;

    .line 412
    move-result-object v12

    .line 413
    .line 414
    :goto_7
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 415
    .line 416
    iget-object v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 417
    .line 418
    .line 419
    invoke-static {v6, v2}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->d(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    .line 420
    move-result-object v2

    .line 421
    const/4 v9, 0x1

    .line 422
    .line 423
    .line 424
    invoke-direct {v8, v2, v3, v9, v12}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->m(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 425
    move-result-object v9

    .line 426
    .line 427
    iput-object v9, v11, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 428
    .line 429
    if-eqz v9, :cond_d

    .line 430
    return-void

    .line 431
    .line 432
    :cond_d
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 433
    .line 434
    .line 435
    invoke-static {v6, v9}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->d(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;)Landroid/net/Uri;

    .line 436
    move-result-object v9

    .line 437
    .line 438
    .line 439
    invoke-direct {v8, v9, v3, v1, v12}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->m(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    iput-object v1, v11, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 443
    .line 444
    if-eqz v1, :cond_e

    .line 445
    return-void

    .line 446
    .line 447
    :cond_e
    move-object/from16 p1, v15

    .line 448
    .line 449
    move-object/from16 p2, v7

    .line 450
    .line 451
    move-object/from16 p3, v6

    .line 452
    .line 453
    move-object/from16 p4, v0

    .line 454
    .line 455
    move-wide/from16 p5, v4

    .line 456
    .line 457
    .line 458
    invoke-static/range {p1 .. p6}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->u(Landroidx/media3/exoplayer/hls/HlsMediaChunk;Landroid/net/Uri;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;J)Z

    .line 459
    move-result v31

    .line 460
    .line 461
    if-eqz v31, :cond_f

    .line 462
    .line 463
    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    .line 464
    .line 465
    if-eqz v1, :cond_f

    .line 466
    return-void

    .line 467
    .line 468
    :cond_f
    iget-object v13, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 469
    .line 470
    iget-object v14, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->mediaDataSource:Landroidx/media3/datasource/DataSource;

    .line 471
    .line 472
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistFormats:[Landroidx/media3/common/Format;

    .line 473
    .line 474
    aget-object v1, v1, v3

    .line 475
    move-object v3, v15

    .line 476
    move-object v15, v1

    .line 477
    .line 478
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->muxedCaptionFormats:Ljava/util/List;

    .line 479
    .line 480
    move-object/from16 v21, v1

    .line 481
    .line 482
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 483
    .line 484
    .line 485
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    .line 486
    move-result v22

    .line 487
    .line 488
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 489
    .line 490
    .line 491
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    .line 492
    move-result-object v23

    .line 493
    .line 494
    iget-boolean v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    .line 495
    .line 496
    move/from16 v24, v1

    .line 497
    .line 498
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterProvider:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    .line 499
    .line 500
    move-object/from16 v25, v1

    .line 501
    .line 502
    iget-wide v10, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->timestampAdjusterInitializationTimeoutMs:J

    .line 503
    .line 504
    move-wide/from16 v26, v10

    .line 505
    .line 506
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a(Landroid/net/Uri;)[B

    .line 510
    move-result-object v29

    .line 511
    .line 512
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a(Landroid/net/Uri;)[B

    .line 516
    move-result-object v30

    .line 517
    .line 518
    iget-object v1, v8, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 519
    .line 520
    move-object/from16 v32, v1

    .line 521
    .line 522
    move-wide/from16 v16, v4

    .line 523
    .line 524
    move-object/from16 v18, v6

    .line 525
    .line 526
    move-object/from16 v19, v0

    .line 527
    .line 528
    move-object/from16 v20, v7

    .line 529
    .line 530
    move-object/from16 v28, v3

    .line 531
    .line 532
    move-object/from16 v33, v12

    .line 533
    .line 534
    .line 535
    invoke-static/range {v13 .. v33}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->h(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/datasource/DataSource;Landroidx/media3/common/Format;JLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLandroidx/media3/exoplayer/hls/TimestampAdjusterProvider;JLandroidx/media3/exoplayer/hls/HlsMediaChunk;[B[BZLandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;)Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    .line 536
    move-result-object v0

    .line 537
    .line 538
    move-object/from16 v1, p7

    .line 539
    .line 540
    iput-object v0, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->chunk:Landroidx/media3/exoplayer/source/chunk/Chunk;

    .line 541
    return-void
.end method

.method public i(JLjava/util/List;)I
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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

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

.method public k()Landroidx/media3/common/TrackGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    return-object v0
.end method

.method public l()Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    return-object v0
.end method

.method public n(Landroidx/media3/exoplayer/source/chunk/Chunk;J)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackGroup:Landroidx/media3/common/TrackGroup;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->trackFormat:Landroidx/media3/common/Format;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroidx/media3/common/TrackGroup;->d(Landroidx/media3/common/Format;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->f(IJ)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->e(Landroid/net/Uri;)V

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    throw v0
.end method

.method public p(Landroid/net/Uri;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public q(Landroidx/media3/exoplayer/source/chunk/Chunk;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/chunk/DataChunk;->f()[B

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->scratchSpace:[B

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->keyCache:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    .line 15
    .line 16
    iget-object v1, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->h()[B

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, [B

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->b(Landroid/net/Uri;[B)[B

    .line 32
    :cond_0
    return-void
.end method

.method public r(Landroid/net/Uri;J)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistUrls:[Landroid/net/Uri;

    .line 5
    array-length v3, v2

    .line 6
    const/4 v4, -0x1

    .line 7
    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v4

    .line 22
    :goto_1
    const/4 v2, 0x1

    .line 23
    .line 24
    if-ne v1, v4, :cond_2

    .line 25
    return v2

    .line 26
    .line 27
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 28
    .line 29
    .line 30
    invoke-interface {v3, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    .line 31
    move-result v1

    .line 32
    .line 33
    if-ne v1, v4, :cond_3

    .line 34
    return v2

    .line 35
    .line 36
    :cond_3
    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->expectedPlaylistUrl:Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v4

    .line 43
    or-int/2addr v3, v4

    .line 44
    .line 45
    iput-boolean v3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->seenExpectedPlaylistError:Z

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 51
    .line 52
    cmp-long v3, p2, v3

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 57
    .line 58
    .line 59
    invoke-interface {v3, v1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->f(IJ)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->playlistTracker:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->j(Landroid/net/Uri;J)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    :cond_4
    move v0, v2

    .line 72
    :cond_5
    return v0
.end method

.method public s()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->isPrimaryTimestampSource:Z

    return-void
.end method

.method public v(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    return-void
.end method

.method public w(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->fatalError:Ljava/io/IOException;

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
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->g(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method
