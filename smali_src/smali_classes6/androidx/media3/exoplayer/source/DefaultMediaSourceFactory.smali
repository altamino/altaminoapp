.class public final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;,
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;,
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$AdsLoaderProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DMediaSourceFactory"


# instance fields
.field private adViewProvider:Landroidx/media3/common/AdViewProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adsLoaderProvider:Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field private liveMaxOffsetMs:J

.field private liveMaxSpeed:F

.field private liveMinOffsetMs:J

.field private liveMinSpeed:F

.field private liveTargetOffsetMs:J

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private serverSideAdInsertionMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useProgressiveMediaSourceForSubtitles:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 2
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 3
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 5
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 6
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->p(Landroidx/media3/datasource/DataSource$Factory;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-void
.end method

.method public static synthetic e(Landroidx/media3/common/Format;)[Landroidx/media3/extractor/Extractor;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->h(Landroidx/media3/common/Format;)[Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->k(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic g(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->l(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic h(Landroidx/media3/common/Format;)[Landroidx/media3/extractor/Extractor;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 4
    .line 5
    sget-object v1, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a(Landroidx/media3/common/Format;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Landroidx/media3/extractor/text/SubtitleExtractor;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->b(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v1, p0}, Landroidx/media3/extractor/text/SubtitleExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleDecoder;Landroidx/media3/common/Format;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;-><init>(Landroidx/media3/common/Format;)V

    .line 27
    :goto_0
    const/4 p0, 0x0

    .line 28
    .line 29
    aput-object v2, v0, p0

    .line 30
    return-object v0
.end method

.method private static i(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 3
    .line 4
    iget-wide v1, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-wide v1, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 13
    .line 14
    const-wide/high16 v3, -0x8000000000000000L

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 28
    .line 29
    iget-wide v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 33
    move-result-wide v3

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 36
    .line 37
    iget-wide v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->K0(J)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 44
    .line 45
    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    .line 46
    .line 47
    xor-int/lit8 v7, v1, 0x1

    .line 48
    .line 49
    iget-boolean v8, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    .line 50
    .line 51
    iget-boolean v9, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    .line 52
    move-object v1, v0

    .line 53
    move-object v2, p1

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V

    .line 57
    return-object v0
.end method

.method private j(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
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
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-object p2

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adsLoaderProvider:Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;

    .line 15
    .line 16
    iget-object v8, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    .line 17
    .line 18
    const-string v2, "DMediaSourceFactory"

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    if-nez v8, :cond_1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;->a(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    if-nez v7, :cond_2

    .line 30
    .line 31
    const-string p1, "Playing media without ads, as no AdsLoader was provided."

    .line 32
    .line 33
    .line 34
    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object p2

    .line 36
    .line 37
    :cond_2
    new-instance v1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    .line 38
    .line 39
    new-instance v4, Landroidx/media3/datasource/DataSpec;

    .line 40
    .line 41
    iget-object v2, v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v2}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 45
    .line 46
    iget-object v2, v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    move-object v5, v2

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 55
    .line 56
    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    invoke-static {v2, p1, v0}, Lcom/google/common/collect/a0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 62
    move-result-object p1

    .line 63
    move-object v5, p1

    .line 64
    :goto_0
    move-object v2, v1

    .line 65
    move-object v3, p2

    .line 66
    move-object v6, p0

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/source/ads/AdsLoader;Landroidx/media3/common/AdViewProvider;)V

    .line 70
    return-object v1

    .line 71
    .line 72
    :cond_4
    :goto_1
    const-string p1, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    .line 73
    .line 74
    .line 75
    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object p2
.end method

.method private static k(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;)",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    throw v0
.end method

.method private static l(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Landroidx/media3/datasource/DataSource$Factory;",
            ")",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    .line 5
    const-class v2, Landroidx/media3/datasource/DataSource$Factory;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    aput-object v2, v1, v3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object p1, v0, v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->n(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->o(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->m(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 8
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "ssai"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->d(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    .line 39
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v0}, Landroidx/media3/common/util/Util;->x0(Landroid/net/Uri;Ljava/lang/String;)I

    .line 47
    move-result v0

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->g(I)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v3, "No suitable media source factory found for content type: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration;->b()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 82
    .line 83
    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    cmp-long v2, v2, v4

    .line 91
    .line 92
    if-nez v2, :cond_1

    .line 93
    .line 94
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->k(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 98
    .line 99
    :cond_1
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 100
    .line 101
    iget v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 102
    .line 103
    .line 104
    const v3, -0x800001

    .line 105
    .line 106
    cmpl-float v2, v2, v3

    .line 107
    .line 108
    if-nez v2, :cond_2

    .line 109
    .line 110
    iget v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->j(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 114
    .line 115
    :cond_2
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 116
    .line 117
    iget v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    .line 118
    .line 119
    cmpl-float v2, v2, v3

    .line 120
    .line 121
    if-nez v2, :cond_3

    .line 122
    .line 123
    iget v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->h(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 127
    .line 128
    :cond_3
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 129
    .line 130
    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 131
    .line 132
    cmp-long v2, v2, v4

    .line 133
    .line 134
    if-nez v2, :cond_4

    .line 135
    .line 136
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->i(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 140
    .line 141
    :cond_4
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 142
    .line 143
    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 144
    .line 145
    cmp-long v2, v2, v4

    .line 146
    .line 147
    if-nez v2, :cond_5

    .line 148
    .line 149
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->g(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->f()Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v2

    .line 163
    .line 164
    if-nez v2, :cond_6

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->b()Landroidx/media3/common/MediaItem$Builder;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->d(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    :cond_6
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->d(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    iget-object v1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 183
    .line 184
    .line 185
    invoke-static {v1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 189
    .line 190
    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 191
    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 194
    move-result v2

    .line 195
    .line 196
    if-nez v2, :cond_b

    .line 197
    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 200
    move-result v2

    .line 201
    .line 202
    add-int/lit8 v2, v2, 0x1

    .line 203
    .line 204
    new-array v2, v2, [Landroidx/media3/exoplayer/source/MediaSource;

    .line 205
    const/4 v3, 0x0

    .line 206
    .line 207
    aput-object v0, v2, v3

    .line 208
    .line 209
    .line 210
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 211
    move-result v0

    .line 212
    .line 213
    if-ge v3, v0, :cond_a

    .line 214
    .line 215
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->useProgressiveMediaSourceForSubtitles:Z

    .line 216
    .line 217
    if-eqz v0, :cond_8

    .line 218
    .line 219
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 220
    .line 221
    .line 222
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v6

    .line 227
    .line 228
    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 229
    .line 230
    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    .line 237
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 238
    move-result-object v6

    .line 239
    .line 240
    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 241
    .line 242
    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    .line 249
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    move-result-object v6

    .line 251
    .line 252
    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 253
    .line 254
    iget v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    .line 261
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v6

    .line 263
    .line 264
    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 265
    .line 266
    iget v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    .line 273
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    move-result-object v6

    .line 275
    .line 276
    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 277
    .line 278
    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    .line 285
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v6

    .line 287
    .line 288
    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 289
    .line 290
    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 298
    move-result-object v0

    .line 299
    .line 300
    new-instance v6, Landroidx/media3/exoplayer/source/d;

    .line 301
    .line 302
    .line 303
    invoke-direct {v6, v0}, Landroidx/media3/exoplayer/source/d;-><init>(Landroidx/media3/common/Format;)V

    .line 304
    .line 305
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 306
    .line 307
    iget-object v7, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 308
    .line 309
    .line 310
    invoke-direct {v0, v7, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    .line 311
    .line 312
    iget-object v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 313
    .line 314
    if-eqz v6, :cond_7

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->i(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 318
    .line 319
    :cond_7
    add-int/lit8 v6, v3, 0x1

    .line 320
    .line 321
    .line 322
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 323
    move-result-object v7

    .line 324
    .line 325
    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 326
    .line 327
    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 331
    move-result-object v7

    .line 332
    .line 333
    .line 334
    invoke-static {v7}, Landroidx/media3/common/MediaItem;->e(Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    .line 335
    move-result-object v7

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 339
    move-result-object v0

    .line 340
    .line 341
    aput-object v0, v2, v6

    .line 342
    goto :goto_1

    .line 343
    .line 344
    :cond_8
    new-instance v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    .line 345
    .line 346
    iget-object v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 347
    .line 348
    .line 349
    invoke-direct {v0, v6}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 350
    .line 351
    iget-object v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 352
    .line 353
    if-eqz v6, :cond_9

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->b(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    .line 357
    .line 358
    :cond_9
    add-int/lit8 v6, v3, 0x1

    .line 359
    .line 360
    .line 361
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 362
    move-result-object v7

    .line 363
    .line 364
    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v7, v4, v5}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->a(Landroidx/media3/common/MediaItem$SubtitleConfiguration;J)Landroidx/media3/exoplayer/source/SingleSampleMediaSource;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    aput-object v0, v2, v6

    .line 371
    .line 372
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_a
    new-instance v0, Landroidx/media3/exoplayer/source/MergingMediaSource;

    .line 377
    .line 378
    .line 379
    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 380
    .line 381
    .line 382
    :cond_b
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->i(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 383
    move-result-object v0

    .line 384
    .line 385
    .line 386
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->j(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 387
    move-result-object p1

    .line 388
    return-object p1
.end method

.method public getSupportedTypes()[I
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->h()[I

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public m(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->o(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V

    .line 12
    return-object p0
.end method

.method public n(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 3
    .line 4
    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v1}, Landroidx/media3/common/util/Assertions;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->q(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)V

    .line 14
    return-object p0
.end method

.method public o(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->r(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)V

    .line 16
    return-object p0
.end method
