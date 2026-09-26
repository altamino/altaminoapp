.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowChunklessPreparation:Z

.field private cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

.field private elapsedRealTimeOffsetMs:J

.field private extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field private final hlsDataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private metadataType:I

.field private playlistParserFactory:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

.field private playlistTrackerFactory:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

.field private timestampAdjusterInitializationTimeoutMs:J

.field private useSessionKeys:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/hls/DefaultHlsDataSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 4
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 5
    new-instance p1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {p1}, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 6
    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

    .line 7
    sget-object p1, Landroidx/media3/exoplayer/hls/HlsExtractorFactory;->DEFAULT:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 8
    new-instance p1, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 9
    new-instance p1, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->metadataType:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/hls/HlsMediaSource;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/hls/HlsMediaSource;
    .locals 21

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    iget-object v1, v2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistParserFactory:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 14
    .line 15
    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v4

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    .line 27
    move-object v6, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v6, v1

    .line 30
    .line 31
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    :goto_1
    move-object/from16 v18, v1

    .line 37
    goto :goto_2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;->a(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 41
    move-result-object v1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :goto_2
    new-instance v19, Landroidx/media3/exoplayer/hls/HlsMediaSource;

    .line 45
    .line 46
    move-object/from16 v1, v19

    .line 47
    .line 48
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 49
    .line 50
    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    .line 51
    .line 52
    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 53
    .line 54
    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 55
    .line 56
    .line 57
    invoke-interface {v7, v2}, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;->a(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 58
    move-result-object v7

    .line 59
    .line 60
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 61
    move-object v8, v9

    .line 62
    .line 63
    iget-object v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

    .line 64
    .line 65
    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 66
    .line 67
    .line 68
    invoke-interface {v10, v11, v9, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;->a(Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 69
    move-result-object v9

    .line 70
    .line 71
    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    .line 72
    .line 73
    iget-boolean v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    .line 74
    .line 75
    iget v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->metadataType:I

    .line 76
    .line 77
    iget-boolean v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    .line 78
    .line 79
    move-object/from16 v20, v1

    .line 80
    .line 81
    iget-wide v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->timestampAdjusterInitializationTimeoutMs:J

    .line 82
    move-wide v15, v1

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    move-object/from16 v2, p1

    .line 87
    .line 88
    move-object/from16 v6, v18

    .line 89
    .line 90
    move-object/from16 v1, v20

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v1 .. v17}, Landroidx/media3/exoplayer/hls/HlsMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/hls/HlsDataSourceFactory;Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLandroidx/media3/exoplayer/hls/HlsMediaSource$1;)V

    .line 94
    return-object v19
.end method

.method public f(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 9
    return-object p0
.end method

.method public g(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 1

    .line 1
    .line 2
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 11
    return-object p0
.end method

.method public getSupportedTypes()[I
    .locals 1

    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public h(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 1

    .line 1
    .line 2
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 11
    return-object p0
.end method
