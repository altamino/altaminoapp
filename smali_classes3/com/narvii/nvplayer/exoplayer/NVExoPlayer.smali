.class public Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
.super Ljava/lang/Object;
.source "NVExoPlayer.java"

# interfaces
.implements Lcom/narvii/nvplayer/INVPlayer;
.implements Lcom/google/android/exoplayer2/video/VideoListener;
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# static fields
.field private static final BETTER_PERFORMANCE_CACHE_SIZE:J = 0x6400000L

.field private static final DEFAULT_CACHE_SIZE:J = 0x2800000L

.field private static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final LOW_RES:Ljava/lang/String; = "360p"

.field private static nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

.field private static referenceCount:I


# instance fields
.field public cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

.field private concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

.field private concatenatingVideoCached:Z

.field private curBitRate:I

.field private curWindowIndex:I

.field private firstFrameFlag:Z

.field private isYoutubeVideo:Z

.field private lastPlayState:I

.field public loadLowResVideo:Z

.field private lockMute:Z

.field private mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private mCacheFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private mIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSurface:Landroid/view/Surface;

.field private mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

.field private mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

.field priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private settingBeginTime:J

.field private settingFlag:Z

.field private videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

.field private videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

.field private windowIndexChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/nvplayer/WindowIndexChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private youtubeVideoList:Lcom/narvii/youtube/YoutubeVideoList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mPositionMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    const/4 v0, -0x1

    .line 107
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    .line 109
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    const-wide/16 v1, 0x0

    .line 110
    iput-wide v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    .line 112
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    .line 114
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 849
    new-instance v1, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$6;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$6;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    .line 126
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    .line 127
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    .line 128
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v7

    .line 129
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;

    invoke-direct {v2, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    invoke-interface {v7, v1, v2}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 140
    new-instance v1, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 141
    sget-object v1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    invoke-virtual {v1, v2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->setVideoPreloadDelegate(Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;)V

    .line 142
    new-instance v1, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;-><init>()V

    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 143
    new-instance v1, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v8, 0x1

    const/high16 v3, 0x10000

    invoke-direct {v2, v8, v3}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setAllocator(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v5

    .line 144
    new-instance v3, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 145
    new-instance v1, Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-direct {v1, p1, p0}, Lcom/narvii/nvplayer/VideoLogHelper;-><init>(Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V

    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 146
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v1, :cond_4

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_1

    .line 151
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x1

    :goto_1
    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x5

    if-eqz v1, :cond_2

    .line 155
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v9

    mul-long v9, v9, v5

    div-long/2addr v9, v3

    goto :goto_2

    .line 157
    :cond_2
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableExternalMemorySize()J

    move-result-wide v9

    mul-long v9, v9, v5

    div-long/2addr v9, v3

    .line 159
    :goto_2
    const/4 v0, 0x1

    if-eqz v0, :cond_3

    const-wide/32 v0, 0x6400000

    goto :goto_3

    :cond_3
    const-wide/32 v0, 0x2800000

    .line 160
    :goto_3
    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 161
    new-instance p1, Ljava/io/File;

    const-string v3, "exo-cache"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    .line 162
    new-instance p1, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    new-instance v0, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v2, v3, v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 164
    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 165
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 166
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setForegroundMode(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isCurrentYtvUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Lcom/narvii/youtube/YoutubeVideoList;)Lcom/narvii/youtube/YoutubeVideoList;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->youtubeVideoList:Lcom/narvii/youtube/YoutubeVideoList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoMediaSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Lcom/google/android/exoplayer2/source/MediaSource;Landroid/view/Surface;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    return p0
.end method

.method static synthetic access$902(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    return p1
.end method

.method private buildMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    .line 938
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p3, 0x2

    if-eq v0, p3, :cond_1

    const/4 p3, 0x3

    if-ne v0, p3, :cond_0

    .line 953
    new-instance p3, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 954
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->setExtractorsFactory(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p2

    .line 955
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1

    .line 957
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 951
    :cond_1
    new-instance p3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    .line 941
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v3, p3, v1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 944
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    .line 946
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v3, p3, v1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 949
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private getDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 6

    .line 925
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asset"

    .line 926
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 929
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x1

    const-string v1, "ExoPlayer"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    goto :goto_1

    .line 927
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    const-string v0, "ExoPlayer"

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private getExoMediaSource(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 779
    iget-object v1, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    invoke-static {v1}, Lcom/narvii/model/MediaHelper;->getVideoUrlsFromMediaList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-virtual {p2}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    move-result v2

    if-nez v2, :cond_3

    .line 784
    invoke-direct {p0, p1, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 788
    :cond_1
    iget-boolean p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object p1, p2

    :cond_2
    return-object p1

    :cond_3
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 790
    aget-object v1, v1, v0

    aput-object v1, p2, v0

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getExoMediaSource(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 761
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 765
    :cond_0
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-boolean p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method private getExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 770
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 774
    :cond_0
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-boolean p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/exoplayer2/source/LoopingMediaSource;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method private getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 822
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    .line 823
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->getNotCache()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 826
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->createCacheDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->buildMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 824
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->buildMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method private getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    if-eqz p2, :cond_5

    .line 796
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 799
    :cond_0
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_1

    .line 800
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v1}, Lcom/narvii/nvplayer/NVMediaSource;->isVideoSupportLowRes()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSupportLowResVideo(Z)V

    .line 802
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 807
    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 808
    :goto_0
    array-length v1, p2

    if-ge v2, v1, :cond_4

    .line 809
    aget-object v1, p2, v2

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 810
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    if-eqz v0, :cond_2

    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    aget-object v3, p2, v2

    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 813
    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInnerExoMediaSource(ZLcom/narvii/model/Media;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1

    .line 519
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
    .locals 1

    .line 170
    sget v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    .line 171
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    invoke-direct {v0, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 174
    :cond_0
    sget-object p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    return-object p0
.end method

.method private isCurrentYtvUrl(Ljava/lang/String;)Z
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 701
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private prepare(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/view/Surface;)V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 578
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    if-eqz p2, :cond_0

    .line 580
    invoke-virtual {p0, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private removeVideoCacheWhenError()V
    .locals 4

    .line 967
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    .line 968
    :goto_0
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 969
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 970
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    .line 971
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->remove(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 731
    :try_start_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteContents(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 736
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->release()V

    return-void
.end method

.method public clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 430
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    :cond_0
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    return-void
.end method

.method public concatenatingQuickSetting(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/narvii/nvplayer/NvVideoClip;",
            ">;)V"
        }
    .end annotation

    .line 586
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 588
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 589
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/nvplayer/NvVideoClip;

    if-eqz v4, :cond_2

    .line 590
    iget-object v5, v4, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 593
    :cond_0
    new-instance v5, Lcom/narvii/model/Media;

    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    .line 594
    iget-object v6, v4, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x67

    goto :goto_1

    :cond_1
    const/16 v6, 0x66

    :goto_1
    iput v6, v5, Lcom/narvii/model/Media;->type:I

    .line 595
    iget-object v4, v4, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    iput-object v4, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 596
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 598
    :cond_3
    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 599
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 601
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    new-array v1, v2, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 602
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 603
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayer/NvVideoClip;

    if-eqz v1, :cond_5

    .line 604
    iget-object v3, v1, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 607
    :cond_4
    iget-object v3, v1, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 608
    invoke-direct {p0, p1, v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v5

    .line 609
    new-instance v3, Lcom/google/android/exoplayer2/source/ClippingMediaSource;

    iget-wide v6, v1, Lcom/narvii/nvplayer/NvVideoClip;->startPositionUs:J

    iget-wide v8, v1, Lcom/narvii/nvplayer/NvVideoClip;->endPositionUs:J

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;JJ)V

    .line 610
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 612
    invoke-direct {p0, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/view/Surface;)V

    return-void
.end method

.method public createCacheDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;
    .locals 8

    .line 830
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    .line 831
    new-instance p1, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;

    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    const-wide/32 v5, 0x200000

    invoke-direct {v4, p2, v5, v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    new-instance v6, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;

    invoke-direct {v6, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    iget-object v7, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    const/4 v5, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSink$Factory;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;)V

    return-object p1
.end method

.method public getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method public getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlayingUrl()Ljava/lang/String;
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 399
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 403
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 404
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    invoke-virtual {v0}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getPreCachedSize()J
    .locals 2

    .line 915
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7d000

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x100000

    :goto_0
    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalDuration()J
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 382
    :goto_0
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v3, v3, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 383
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v3, v3, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Media;

    iget-wide v3, v3, Lcom/narvii/model/Media;->duration:J

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    return-object v0
.end method

.method public getVideoPreloadDelegate()Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isCached(Ljava/lang/String;JJ)Z
    .locals 6

    .line 325
    invoke-static {p1}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object p1

    const-wide/16 v2, -0x1

    const-string v0, "exo_len"

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->isCached(Ljava/lang/String;JJ)Z

    move-result p1

    return p1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->isCached(Ljava/lang/String;JJ)Z

    move-result p1

    return p1
.end method

.method public synthetic isError()Z
    .locals 1

    invoke-static {p0}, Lcom/narvii/nvplayer/INVPlayer$-CC;->$default$isError(Lcom/narvii/nvplayer/INVPlayer;)Z

    move-result v0

    return v0
.end method

.method public isLoadLowResVideo()Z
    .locals 1

    .line 910
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lockMute(Z)V
    .locals 0

    .line 746
    iput-boolean p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lockMute:Z

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x2

    if-eqz p1, :cond_7

    .line 527
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 528
    iget v5, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const-string v6, "ExoPlayer error: "

    if-eqz v5, :cond_4

    if-eq v5, v2, :cond_2

    if-eq v5, v0, :cond_0

    goto/16 :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_8

    .line 560
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v2, :cond_1

    .line 561
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    new-instance v1, Lcom/narvii/nvplayer/NVVideoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v5, 0x0

    aget-object p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    goto/16 :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    new-instance v1, Lcom/narvii/nvplayer/NVVideoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    goto/16 :goto_0

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v1, :cond_3

    .line 554
    new-instance v2, Lcom/narvii/nvplayer/NVVideoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_5

    .line 531
    new-instance v3, Lcom/narvii/nvplayer/NVVideoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 534
    :cond_5
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->removeVideoCacheWhenError()V

    .line 537
    iget-boolean p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->youtubeVideoList:Lcom/narvii/youtube/YoutubeVideoList;

    if-eqz p1, :cond_6

    .line 538
    iget-object v0, p1, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    const-string v3, "360p"

    invoke-virtual {p1, v0, v3, v1}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 539
    iget-object v0, p1, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 540
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 541
    new-instance v1, Lcom/narvii/nvplayer/NVMediaSource;

    invoke-direct {v1}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 542
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 543
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    .line 544
    iget-object p1, p1, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    iput-object p1, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/16 p1, 0x66

    .line 545
    iput p1, v3, Lcom/narvii/model/Media;->type:I

    .line 546
    iget-object p1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v1, v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 548
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    move-object v4, v1

    .line 572
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {p1, v3, v4}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayError(ILjava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->removeVideoCacheWhenError()V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {v0, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 468
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 469
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    if-eqz v0, :cond_0

    .line 471
    iput-boolean v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 482
    :cond_1
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lastPlayState:I

    if-eq v0, p1, :cond_6

    const-string p1, "INVPlayer"

    const-string v0, "ended!!!"

    .line 483
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 485
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result p1

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 486
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object p1, p1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    if-eqz p1, :cond_6

    .line 488
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 489
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-direct {p0, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(ZLcom/narvii/model/Media;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;

    invoke-direct {v2, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result p1

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_6

    .line 500
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/narvii/nvplayer/IVideoListener;->shouldPauseForPageAboveVideo(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 501
    :cond_3
    invoke-virtual {p0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekToWindow(I)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 505
    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVMediaSource;->isLoop()Z

    move-result p1

    if-nez p1, :cond_6

    .line 506
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz p1, :cond_5

    .line 507
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/IVideoListener;->shouldPauseForPageAboveVideo(I)Z

    goto :goto_0

    .line 509
    :cond_5
    invoke-virtual {p0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekToWindow(I)V

    .line 510
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 514
    :cond_6
    :goto_0
    iput p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lastPlayState:I

    .line 515
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    invoke-virtual {p1, p2}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/IVideoListener;->onPositionDiscontinuity(I)V

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 713
    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 714
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    .line 715
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayer/WindowIndexChangeListener;

    .line 716
    iget v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    invoke-interface {v1, v3}, Lcom/narvii/nvplayer/WindowIndexChangeListener;->onWindowIndexChanged(I)V

    goto :goto_0

    .line 718
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPositionDiscontinuity(I)V

    if-nez p1, :cond_3

    .line 722
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result p1

    if-le p1, v2, :cond_3

    .line 723
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onPositionDiscontinuity()V

    :cond_3
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 5

    .line 451
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_1

    .line 452
    invoke-interface {v0}, Lcom/narvii/nvplayer/IVideoListener;->onRenderedFirstFrame()V

    .line 453
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/narvii/nvplayer/IVideoListener;->onRenderFirstFrameInterval(J)V

    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 457
    :cond_0
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kbps, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    invoke-virtual {v2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->preloadStrategyDebugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPreloadStrategyChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_0

    .line 445
    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onSurfaceSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_0

    .line 437
    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSizeChanged(II)V

    .line 438
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSizeChanged(IIIF)V

    :cond_0
    return-void
.end method

.method public preload(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p0, p1, v1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V

    return-void
.end method

.method public quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
    .locals 12

    .line 617
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->clearVideoSurface()V

    .line 618
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->reset()V

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    .line 621
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    .line 623
    iput-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    const/4 v1, 0x0

    .line 624
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 625
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 626
    invoke-interface {v2, v3, v0}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    :cond_0
    const/4 v2, -0x1

    .line 628
    iput v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    .line 629
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 630
    iget-object v4, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v4, "photo"

    .line 634
    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/photos/PhotoManager;

    .line 636
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 637
    iget-object v7, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Media;

    .line 638
    invoke-virtual {v8}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 639
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_3
    iget-object v9, v8, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 642
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 643
    invoke-virtual {v5, v9}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 644
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_0

    .line 648
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 649
    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/Media;

    iget-object v5, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/nvplayer/NVMediaSource;->setVideoSupportLowRes(Z)V

    .line 651
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 652
    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 655
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 656
    :goto_1
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->youtubeVideoList:Lcom/narvii/youtube/YoutubeVideoList;

    if-eqz v4, :cond_9

    .line 658
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    .line 659
    iget-object v5, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 660
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    .line 661
    iget-object p2, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v0, "youtube"

    .line 662
    invoke-interface {v2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/youtube/YoutubeService;

    .line 663
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 664
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;Landroid/content/Context;Landroid/view/Surface;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    goto :goto_2

    .line 687
    :cond_8
    iput-boolean v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    .line 688
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoMediaSource(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/view/Surface;)V

    goto :goto_2

    .line 691
    :cond_9
    iput-boolean v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    .line 692
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoMediaSource(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/view/Surface;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public release()V
    .locals 1

    .line 345
    sget v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    .line 346
    sget v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 348
    sput-object v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 349
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->release()V

    :cond_0
    return-void
.end method

.method public removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 340
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    return-void
.end method

.method public retry()V
    .locals 3

    .line 920
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 234
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    return-void
.end method

.method public seekTo(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 242
    iget-object p3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    :goto_0
    return-void
.end method

.method public seekToWindow(I)V
    .locals 9

    .line 250
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_9

    if-ltz p1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto/16 :goto_2

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    invoke-virtual {v0, p1, v2}, Lcom/narvii/nvplayer/NVMediaSource;->getVideoUrlWithRes(IZ)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 254
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    const-wide/16 v5, 0x0

    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    move-result-wide v7

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isCached(Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iput-boolean v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v6, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;Z)V

    .line 260
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    invoke-virtual {v0, v4}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 261
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    goto/16 :goto_2

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_4

    .line 263
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 264
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    .line 265
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-direct {p0, v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(ZLcom/narvii/model/Media;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;

    invoke-direct {v3, p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;I)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_9

    .line 279
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    if-nez p1, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-virtual {v0, v6, v5}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;Z)V

    .line 280
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    invoke-virtual {v0, v4}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 281
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    .line 282
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    add-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V

    goto :goto_2

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lt p1, v0, :cond_7

    return-void

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v6, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;Z)V

    .line 290
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    invoke-virtual {v0, v4}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 291
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(ZZ)V

    return-void
.end method

.method public setPlayWhenReady(ZZ)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-nez p1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    if-eqz p2, :cond_4

    .line 206
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result p1

    if-ltz p1, :cond_4

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    iget-object p2, p2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 208
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 214
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 217
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 218
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(IJ)V

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 184
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    .line 185
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lockMute:Z

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public updatePreloadLevel()V
    .locals 3

    .line 896
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "kbps, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    invoke-virtual {v2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->preloadStrategyDebugInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPreloadStrategyChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public videoResDowngrade()V
    .locals 5

    const/4 v0, 0x1

    .line 879
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 880
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_1

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 884
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    .line 886
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    add-int/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v1, v2, :cond_1

    .line 889
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v4, v4, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public videoResUpgrade()V
    .locals 5

    const/4 v0, 0x0

    .line 862
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 863
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    .line 867
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    .line 869
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    add-int/2addr v0, v1

    invoke-virtual {v3, v0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V

    .line 870
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v2, :cond_1

    .line 872
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    iget-object v4, v4, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Media;

    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSources(Ljava/util/Collection;)V

    :cond_2
    :goto_1
    return-void
.end method
