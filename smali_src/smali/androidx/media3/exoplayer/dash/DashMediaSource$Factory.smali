.class public final Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

.field private cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

.field private compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

.field private fallbackTargetLiveOffsetMs:J

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Landroidx/media3/exoplayer/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private minLiveStartPositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0
    .param p2    # Landroidx/media3/datasource/DataSource$Factory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

    iput-object p2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 4
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 5
    new-instance p1, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    const-wide/32 p1, 0x4c4b40

    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->minLiveStartPositionUs:J

    .line 6
    new-instance p1, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->h(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/dash/DashMediaSource;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/dash/DashMediaSource;
    .locals 17

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
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Landroidx/media3/exoplayer/dash/manifest/DashManifestParser;-><init>()V

    .line 19
    .line 20
    :cond_0
    iget-object v3, v2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 21
    .line 22
    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    new-instance v4, Landroidx/media3/exoplayer/offline/FilteringManifestParser;

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v1, v3}, Landroidx/media3/exoplayer/offline/FilteringManifestParser;-><init>(Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    .line 34
    move-object v5, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v5, v1

    .line 37
    .line 38
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_1
    move-object v8, v1

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;->a(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :goto_2
    new-instance v16, Landroidx/media3/exoplayer/dash/DashMediaSource;

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 54
    .line 55
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->chunkSourceFactory:Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;

    .line 56
    .line 57
    iget-object v7, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 58
    .line 59
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;->a(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 63
    move-result-object v9

    .line 64
    .line 65
    iget-object v10, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 66
    .line 67
    iget-wide v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    .line 68
    .line 69
    iget-wide v13, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->minLiveStartPositionUs:J

    .line 70
    const/4 v15, 0x0

    .line 71
    .line 72
    move-object/from16 v1, v16

    .line 73
    .line 74
    move-object/from16 v2, p1

    .line 75
    .line 76
    .line 77
    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/dash/DashMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/dash/manifest/DashManifest;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJLandroidx/media3/exoplayer/dash/DashMediaSource$1;)V

    .line 78
    return-object v16
.end method

.method public f(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
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
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->cmcdConfigurationFactory:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 9
    return-object p0
.end method

.method public g(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
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
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 11
    return-object p0
.end method

.method public getSupportedTypes()[I
    .locals 1

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public h(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
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
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 11
    return-object p0
.end method
