.class public final Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ExoPreloadUtil"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mWeakHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    const-string v1, "exo-preload"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->startPreload$lambda$0(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V

    return-void
.end method

.method private final cancelAllPreload()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Runnable;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string v2, "ExoPreloadUtil"

    .line 33
    .line 34
    const-string v3, "cache: cancel"

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    return-void
.end method

.method private final determineCacheSize(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p1, Lcom/narvii/model/Media;->duration:J

    .line 3
    .line 4
    const-wide/16 v2, 0x1b58

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    .line 12
    move-result-wide p1

    .line 13
    return-wide p1

    .line 14
    .line 15
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "url"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->getContentLength(Ljava/lang/String;)J

    .line 24
    move-result-wide v0

    .line 25
    long-to-int p1, v0

    .line 26
    .line 27
    if-gtz p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    .line 31
    move-result-wide p1

    .line 32
    return-wide p1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    .line 36
    move-result-wide p1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 40
    move-result-wide p1

    .line 41
    return-wide p1
.end method

.method private final getContentLength(Ljava/lang/String;)J
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lokhttp3/Request$Builder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 51
    move-result-wide v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-wide v0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    .line 68
    :cond_0
    const-wide/16 v0, 0x0

    .line 69
    return-wide v0
.end method

.method private final prepareCatch(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V
    .locals 8
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    const-string v1, "http"

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "https"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v3, "cache: "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v5, " started"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const-string v5, "ExoPreloadUtil"

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCache()Landroidx/media3/datasource/cache/Cache;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-interface {v2, v0}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const-string v2, "exo_len"

    .line 70
    .line 71
    const-wide/16 v6, -0x1

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v2, v6, v7}, Landroidx/media3/datasource/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    .line 75
    move-result-wide v6

    .line 76
    long-to-int v0, v6

    .line 77
    const/4 v2, -0x1

    .line 78
    .line 79
    if-eq v0, v2, :cond_1

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p2, " finished"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_1
    new-instance v0, Landroidx/media3/datasource/DataSpec$Builder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v0}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DataSpec$Builder;->i(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    const-wide/16 v2, 0x0

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2, v3}, Landroidx/media3/datasource/DataSpec$Builder;->k(J)Landroidx/media3/datasource/DataSpec$Builder;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->determineCacheSize(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)J

    .line 123
    move-result-wide v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2, v3}, Landroidx/media3/datasource/DataSpec$Builder;->g(J)Landroidx/media3/datasource/DataSpec$Builder;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    const-string v0, "build(...)"

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->createCacheDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;->createDataSource()Landroidx/media3/datasource/cache/CacheDataSource;

    .line 144
    move-result-object p2

    .line 145
    .line 146
    const-string p3, "createDataSource(...)"

    .line 147
    .line 148
    .line 149
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    const/16 p3, 0x20

    .line 152
    .line 153
    :try_start_0
    new-instance v0, Landroidx/media3/datasource/cache/CacheWriter;

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, p2, p1, v4, v4}, Landroidx/media3/datasource/cache/CacheWriter;-><init>(Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/datasource/DataSpec;[BLandroidx/media3/datasource/cache/CacheWriter$ProgressListener;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheWriter;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    :goto_0
    invoke-virtual {p2}, Landroidx/media3/datasource/cache/CacheDataSource;->close()V

    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    goto :goto_3

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .line 168
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    const-string v3, "cache exception: "

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    .line 196
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    goto :goto_0

    .line 201
    .line 202
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    const-string v0, "cache success: "

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    .line 228
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    :goto_2
    return-void

    .line 230
    .line 231
    .line 232
    :goto_3
    invoke-virtual {p2}, Landroidx/media3/datasource/cache/CacheDataSource;->close()V

    .line 233
    throw p1
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

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->resetPreloadUrls(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private static final startPreload$lambda$0(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$media"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$player"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$context"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    return-void

    .line 34
    .line 35
    :cond_1
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->prepareCatch(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final getVideoPreloadDelegate()Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-object v0
.end method

.method public final isHighPreloadLevel()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->isHighPreloadLevel()Z

    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final preloadStrategyDebugInfo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->preloadStrategyDebugInfo()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    return-object v0
.end method

.method public final setVideoPreloadDelegate(Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;)V
    .locals 0
    .param p1    # Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-void
.end method

.method public final startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

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

    .line 1
    .line 2
    const-string v0, "medias"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "player"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "context"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->cancelAllPreload()V

    .line 21
    .line 22
    :cond_0
    sget-object p4, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->resetPreloadUrlsAccordingToStrategy(Ljava/util/List;)Ljava/util/List;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result p1

    .line 46
    const/4 p4, 0x0

    .line 47
    .line 48
    :goto_0
    if-ge p4, p1, :cond_3

    .line 49
    .line 50
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mediaList:Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v1, "get(...)"

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    check-cast v0, Lcom/narvii/model/Media;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 64
    .line 65
    const-string v2, "url"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 72
    move-result v1

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    return-void

    .line 76
    .line 77
    :cond_2
    new-instance v1, Lcom/narvii/nvplayer/exoplayer/a;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v0, p2, p3}, Lcom/narvii/nvplayer/exoplayer/a;-><init>(Lcom/narvii/model/Media;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;)V

    .line 81
    .line 82
    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    add-int/lit8 p4, p4, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_3
    return-void
.end method
