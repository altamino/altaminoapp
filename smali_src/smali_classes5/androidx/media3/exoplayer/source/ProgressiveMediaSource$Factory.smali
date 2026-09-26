.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V
    .locals 6

    .line 3
    new-instance v3, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v4, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1

    .line 2
    new-instance v0, Landroidx/media3/exoplayer/source/z;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/z;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->g(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    .line 6
    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->h(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->i(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic c(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/o;->a(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;->a(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 17
    move-result-object v5

    .line 18
    .line 19
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 20
    .line 21
    iget v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v1, v0

    .line 24
    move-object v2, p1

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ILandroidx/media3/exoplayer/source/ProgressiveMediaSource$1;)V

    .line 28
    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 1

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public h(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
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
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 11
    return-object p0
.end method

.method public i(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
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
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 11
    return-object p0
.end method
