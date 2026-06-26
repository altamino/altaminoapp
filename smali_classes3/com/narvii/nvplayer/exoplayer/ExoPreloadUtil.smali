.class public final Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;
.super Ljava/lang/Object;
.source "ExoPreloadUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExoPreloadUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExoPreloadUtil.kt\ncom/narvii/nvplayer/exoplayer/ExoPreloadUtil\n*L\n1#1,143:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

.field public static final TAG:Ljava/lang/String; = "ExoPreloadUtil"

.field private static mWeakHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final mediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private static threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    invoke-direct {v0}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;-><init>()V

    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    const/4 v0, 0x3

    const-string v1, "exo-preload"

    .line 26
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$prepareCatch(Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->prepareCatch(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V

    return-void
.end method

.method private final cancelAllPreload()V
    .locals 4

    .line 31
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const-string v2, "ExoPreloadUtil"

    const-string v3, "cache: cancel"

    .line 33
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 38
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final determineCacheSize(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)J
    .locals 5

    .line 133
    iget-wide v0, p1, Lcom/narvii/model/Media;->duration:J

    const/16 v2, 0x1b58

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    move-result-wide p1

    return-wide p1

    .line 136
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v0, "media.url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->getContentLength(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    if-gtz p1, :cond_1

    .line 138
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    move-result-wide p1

    return-wide p1

    .line 140
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final getContentLength(Ljava/lang/String;)J
    .locals 4

    .line 117
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 118
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 120
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 123
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-wide v2

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    .line 122
    :cond_1
    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    throw v1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final prepareCatch(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V
    .locals 10

    .line 72
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v1, "url"

    .line 73
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "http"

    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https"

    invoke-static {v0, v4, v3, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " started"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "ExoPreloadUtil"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v2

    invoke-static {v0}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    const/4 v2, -0x1

    int-to-long v4, v2

    const-string v6, "exo_len"

    invoke-interface {v0, v6, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v4

    long-to-int v0, v4

    if-eq v0, v2, :cond_1

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " finished"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 80
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->determineCacheSize(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 81
    invoke-virtual {p2, v1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->createCacheDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->createDataSource()Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    const/16 p3, 0x20

    .line 83
    :try_start_0
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v3

    iget-object v4, p2, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->cacheKeyFactory:Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->cache(Lcom/google/android/exoplayer2/upstream/DataSpec;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheKeyFactory;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/cache/CacheUtil$ProgressListener;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 85
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cache success: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide p2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    .line 88
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->close()V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method private final resetPreloadUrlsAccordingToStrategy(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->resetPreloadUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 99
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getVideoPreloadDelegate()Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
    .locals 1

    .line 24
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-object v0
.end method

.method public final isHighPreloadLevel()Z
    .locals 1

    .line 110
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->isHighPreloadLevel()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final preloadStrategyDebugInfo()Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadStrategyDebugInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final setVideoPreloadDelegate(Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;)V
    .locals 0

    .line 24
    sput-object p1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-void
.end method

.method public final startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Media;",
            ">;",
            "Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    const-string v0, "medias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->cancelAllPreload()V

    .line 45
    :cond_0
    sget-object p4, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 46
    sget-object p4, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->resetPreloadUrlsAccordingToStrategy(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    sget-object p1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 50
    :cond_1
    sget-object p1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    .line 51
    sget-object v1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mediaList[i]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/Media;

    .line 52
    iget-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const-string v3, "media.url"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    return-void

    .line 55
    :cond_3
    new-instance v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;

    invoke-direct {v2, v1, p2, p3}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil$startPreload$runnable$1;-><init>(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V

    .line 66
    sget-object v3, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
