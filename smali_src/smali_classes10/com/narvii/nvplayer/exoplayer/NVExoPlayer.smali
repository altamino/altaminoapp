.class public Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nvplayer/INVPlayer;
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final BETTER_PERFORMANCE_CACHE_SIZE:J = 0x6400000L

.field private static final DEFAULT_CACHE_SIZE:J = 0x2800000L

.field private static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final LOW_RES:Ljava/lang/String; = "360p"

.field private static nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

.field private static referenceCount:I


# instance fields
.field public cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

.field private concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

.field private concatenatingVideoCached:Z

.field private curBitRate:I

.field private curWindowIndex:I

.field private firstFrameFlag:Z

.field private isYoutubeVideo:Z

.field private lastPlayState:I

.field public loadLowResVideo:Z

.field private lockMute:Z

.field private mCache:Landroidx/media3/datasource/cache/Cache;

.field private mCacheFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

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
    .locals 9
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mPositionMap:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    .line 25
    const/4 v0, -0x1

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    iput-wide v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 41
    .line 42
    new-instance v1, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$5;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    new-instance v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, p1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->a()Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    sget-object v3, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance v4, Lcom/narvii/nvplayer/exoplayer/b;

    .line 68
    .line 69
    .line 70
    invoke-direct {v4, p0}, Lcom/narvii/nvplayer/exoplayer/b;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->c(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 74
    .line 75
    new-instance v3, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, p0}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    .line 79
    .line 80
    iput-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 81
    .line 82
    sget-object v4, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->setVideoPreloadDelegate(Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;)V

    .line 86
    .line 87
    new-instance v3, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v3}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;-><init>()V

    .line 91
    .line 92
    new-instance v4, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 93
    .line 94
    const/high16 v5, 0x10000

    .line 95
    const/4 v6, 0x1

    .line 96
    .line 97
    .line 98
    invoke-direct {v4, v6, v5}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->b(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->a()Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 109
    .line 110
    new-instance v5, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    .line 111
    .line 112
    .line 113
    invoke-direct {v5, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v4, p1, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->P(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->O(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->N(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->t()Landroidx/media3/exoplayer/ExoPlayer;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 135
    .line 136
    new-instance v1, Lcom/narvii/nvplayer/VideoLogHelper;

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, p1, p0}, Lcom/narvii/nvplayer/VideoLogHelper;-><init>(Landroid/content/Context;Lcom/narvii/nvplayer/INVPlayer;)V

    .line 140
    .line 141
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 144
    .line 145
    if-nez v1, :cond_4

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 149
    move-result-object v1

    .line 150
    .line 151
    if-eqz v1, :cond_0

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 155
    move-result v2

    .line 156
    .line 157
    if-eqz v2, :cond_1

    .line 158
    .line 159
    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 161
    move-result-object v1

    .line 162
    move v0, v6

    .line 163
    .line 164
    :cond_1
    const-wide/16 v2, 0x64

    .line 165
    .line 166
    const-wide/16 v4, 0x5

    .line 167
    .line 168
    if-eqz v0, :cond_2

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    .line 172
    move-result-wide v7

    .line 173
    mul-long/2addr v7, v4

    .line 174
    div-long/2addr v7, v2

    .line 175
    goto :goto_0

    .line 176
    .line 177
    .line 178
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/StorageUtils;->getAvailableExternalMemorySize(Landroid/content/Context;)J

    .line 179
    move-result-wide v7

    .line 180
    mul-long/2addr v7, v4

    .line 181
    div-long/2addr v7, v2

    .line 182
    .line 183
    .line 184
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, La2/b;->d(Landroid/content/Context;)I

    .line 189
    move-result p1

    .line 190
    .line 191
    const/16 v0, 0x7dd

    .line 192
    .line 193
    if-le p1, v0, :cond_3

    .line 194
    .line 195
    .line 196
    const-wide/32 v2, 0x6400000

    .line 197
    goto :goto_1

    .line 198
    .line 199
    .line 200
    :cond_3
    const-wide/32 v2, 0x2800000

    .line 201
    .line 202
    .line 203
    :goto_1
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 204
    move-result-wide v2

    .line 205
    .line 206
    new-instance p1, Ljava/io/File;

    .line 207
    .line 208
    const-string v0, "exo-cache"

    .line 209
    .line 210
    .line 211
    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .line 213
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    .line 214
    .line 215
    new-instance p1, Landroidx/media3/datasource/cache/SimpleCache;

    .line 216
    .line 217
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    .line 218
    .line 219
    new-instance v1, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;

    .line 220
    .line 221
    .line 222
    invoke-direct {v1, v2, v3}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    .line 223
    .line 224
    new-instance v2, Landroidx/media3/database/ExoDatabaseProvider;

    .line 225
    .line 226
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    invoke-direct {v2, v3}, Landroidx/media3/database/ExoDatabaseProvider;-><init>(Landroid/content/Context;)V

    .line 230
    .line 231
    .line 232
    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/database/DatabaseProvider;)V

    .line 233
    .line 234
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 235
    .line 236
    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 237
    .line 238
    .line 239
    invoke-interface {p1, p0}, Landroidx/media3/common/Player;->L(Landroidx/media3/common/Player$Listener;)V

    .line 240
    .line 241
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v6}, Landroidx/media3/exoplayer/ExoPlayer;->H(Z)V

    .line 245
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isCurrentYtvUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic B(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroidx/media3/exoplayer/source/MediaSource;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Landroidx/media3/exoplayer/source/MediaSource;Landroid/view/Surface;)V

    return-void
.end method

.method private buildMediaSource(Landroid/net/Uri;Landroidx/media3/datasource/DataSource$Factory;Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Util;->v0(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    const/4 p3, 0x2

    .line 16
    .line 17
    if-eq v0, p3, :cond_1

    .line 18
    const/4 p3, 0x4

    .line 19
    .line 20
    if-ne v0, p3, :cond_0

    .line 21
    .line 22
    new-instance p3, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    .line 23
    .line 24
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, p2, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->f(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string p3, "Unsupported type: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    .line 64
    :cond_1
    new-instance p3, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 65
    .line 66
    .line 67
    invoke-direct {p3, p2}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/hls/HlsMediaSource;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    .line 78
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;

    .line 79
    .line 80
    new-instance v2, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, p2}, Landroidx/media3/exoplayer/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 84
    .line 85
    new-instance v3, Landroidx/media3/datasource/DefaultDataSourceFactory;

    .line 86
    .line 87
    .line 88
    invoke-direct {v3, p3, v1, p2}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/TransferListener;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/smoothstreaming/SsChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource;

    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    .line 102
    :cond_3
    new-instance v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 103
    .line 104
    new-instance v2, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, p2}, Landroidx/media3/exoplayer/dash/DefaultDashChunkSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    .line 108
    .line 109
    new-instance v3, Landroidx/media3/datasource/DefaultDataSourceFactory;

    .line 110
    .line 111
    .line 112
    invoke-direct {v3, p3, v1, p2}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/TransferListener;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/dash/DashChunkSource$Factory;Landroidx/media3/datasource/DataSource$Factory;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Landroidx/media3/common/MediaItem;->d(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/dash/DashMediaSource;

    .line 123
    move-result-object p1

    .line 124
    return-object p1
.end method

.method private getCauseString(Landroidx/media3/common/PlaybackException;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->stackTraceIsNotEmpty(Landroidx/media3/common/PlaybackException;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    aget-object p1, p1, v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private getDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Landroidx/media3/datasource/DataSource$Factory;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "asset"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    const-string v1, "ExoPlayer"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "file"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance p1, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->e(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    const/16 p2, 0x1f40

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->c(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->d(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->b(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/datasource/DefaultDataSourceFactory;

    .line 51
    .line 52
    .line 53
    invoke-direct {p1, p2, v1}, Landroidx/media3/datasource/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    :goto_1
    return-object p1
.end method

.method private getExoMediaSource(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 5
    iget-object v1, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Lcom/narvii/model/MediaHelper;->getVideoUrlsFromMediaList(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    invoke-direct {p0, p1, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 9
    :cond_1
    iget-boolean p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    if-eqz p2, :cond_2

    new-instance p2, Landroidx/media3/exoplayer/source/LoopingMediaSource;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/LoopingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    move-object p1, p2

    :cond_2
    return-object p1

    :cond_3
    const/4 p2, 0x0

    .line 10
    aget-object p2, v1, p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getExoMediaSource(Landroid/content/Context;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 2
    iget-boolean p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    if-eqz p2, :cond_1

    new-instance p2, Landroidx/media3/exoplayer/source/LoopingMediaSource;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/LoopingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method private getExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 4
    iget-boolean p2, p2, Lcom/narvii/nvplayer/NVMediaSource;->loop:Z

    if-eqz p2, :cond_1

    new-instance p2, Landroidx/media3/exoplayer/source/LoopingMediaSource;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/LoopingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method private getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    .line 10
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

    .line 11
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->createCacheDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->buildMediaSource(Landroid/net/Uri;Landroidx/media3/datasource/DataSource$Factory;Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->buildMediaSource(Landroid/net/Uri;Landroidx/media3/datasource/DataSource$Factory;Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method private getInnerExoMediaSource(Landroid/content/Context;[Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p2, :cond_5

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 4
    invoke-virtual {v1}, Lcom/narvii/nvplayer/NVMediaSource;->isVideoSupportLowRes()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSupportLowResVideo(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 5
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    const/4 v2, 0x0

    new-array v3, v2, [Landroidx/media3/exoplayer/source/MediaSource;

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 6
    :goto_0
    array-length v1, p2

    if-ge v2, v1, :cond_4

    .line 7
    aget-object v1, p2, v2

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    if-eqz v0, :cond_2

    .line 8
    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    aget-object v3, p2, v2

    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->y0(Landroidx/media3/exoplayer/source/MediaSource;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInnerExoMediaSource(ZLcom/narvii/model/Media;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 1

    .line 1
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

    invoke-direct {p0, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    sput v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    .line 7
    .line 8
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    sput-object v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 18
    .line 19
    :cond_0
    sget-object p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 20
    return-object p0
.end method

.method private isCurrentYtvUrl(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/model/Media;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    return v1

    .line 34
    :cond_1
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic j(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;IJJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lambda$new$0(IJJ)V

    return-void
.end method

.method private synthetic lambda$new$0(IJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-wide/16 p1, 0x3e8

    .line 9
    div-long/2addr p4, p1

    .line 10
    long-to-int p1, p4

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    iget p3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p3, "kbps, "

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    sget-object p3, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->preloadStrategyDebugInfo()Ljava/lang/String;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPreloadStrategyChanged(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method private prepare(Landroidx/media3/exoplayer/source/MediaSource;Landroid/view/Surface;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->O(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/media3/common/Player;->prepare()V

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 22
    :cond_0
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/IVideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    return p0
.end method

.method private removeCache(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p2}, Landroidx/media3/datasource/cache/Cache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/media3/datasource/cache/CacheSpan;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroidx/media3/datasource/cache/Cache;->a(Landroidx/media3/datasource/cache/CacheSpan;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private removeVideoCacheWhenError()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ge v1, v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    move-result v1

    .line 26
    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/model/Media;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v3, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->removeCache(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;)V

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v2, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->removeCache(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;)V

    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method static bridge synthetic s(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    return-object p0
.end method

.method private sendCauseToListener(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/nvplayer/NVVideoException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, "ExoPlayer error: "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCauseString(Landroidx/media3/common/PlaybackException;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 36
    :cond_0
    return-void
.end method

.method private sendErrorToListener(Landroidx/media3/common/PlaybackException;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/nvplayer/NVVideoException;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v3, "ExoPlayer error: "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 34
    :cond_0
    return-void
.end method

.method private stackTraceIsNotEmpty(Landroidx/media3/common/PlaybackException;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 4
    move-result-object p1

    .line 5
    array-length p1, p1

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method static bridge synthetic w(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->youtubeVideoList:Lcom/narvii/youtube/YoutubeVideoList;

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoMediaSource(Landroid/content/Context;Ljava/lang/String;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteContents(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->release()V

    .line 16
    return-void
.end method

.method public clearVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    :cond_0
    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->clearVideoSurface()V

    .line 6
    return-void
.end method

.method public concatenatingQuickSetting(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/narvii/nvplayer/NvVideoClip;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayer/NVMediaSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    move-result v4

    .line 17
    .line 18
    if-ge v3, v4, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    check-cast v4, Lcom/narvii/nvplayer/NvVideoClip;

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    iget-object v5, v4, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v5

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    goto :goto_2

    .line 36
    .line 37
    :cond_0
    new-instance v5, Lcom/narvii/model/Media;

    .line 38
    .line 39
    .line 40
    invoke-direct {v5}, Lcom/narvii/model/Media;-><init>()V

    .line 41
    .line 42
    iget-object v6, v4, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v6}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 46
    move-result v6

    .line 47
    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    const/16 v6, 0x67

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    const/16 v6, 0x66

    .line 54
    .line 55
    :goto_1
    iput v6, v5, Lcom/narvii/model/Media;->type:I

    .line 56
    .line 57
    iget-object v4, v4, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v4, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    iput-object v1, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 70
    .line 71
    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 72
    .line 73
    new-array v1, v2, [Landroidx/media3/exoplayer/source/MediaSource;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 77
    .line 78
    .line 79
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 80
    move-result v1

    .line 81
    .line 82
    if-ge v2, v1, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    check-cast v1, Lcom/narvii/nvplayer/NvVideoClip;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    iget-object v3, v1, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v3

    .line 97
    .line 98
    if-eqz v3, :cond_4

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_4
    iget-object v3, v1, Lcom/narvii/nvplayer/NvVideoClip;->url:Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1, v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    new-instance v3, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    .line 112
    .line 113
    iget-wide v6, v1, Lcom/narvii/nvplayer/NvVideoClip;->startPositionUs:J

    .line 114
    .line 115
    iget-wide v8, v1, Lcom/narvii/nvplayer/NvVideoClip;->endPositionUs:J

    .line 116
    move-object v4, v3

    .line 117
    .line 118
    .line 119
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->y0(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 123
    .line 124
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    const/4 p1, 0x0

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Landroidx/media3/exoplayer/source/MediaSource;Landroid/view/Surface;)V

    .line 130
    return-void
.end method

.method public createCacheDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getDataSourceFactory(Landroid/net/Uri;Landroid/content/Context;)Landroidx/media3/datasource/DataSource$Factory;

    .line 4
    move-result-object v2

    .line 5
    .line 6
    new-instance v3, Landroidx/media3/datasource/FileDataSource$Factory;

    .line 7
    .line 8
    .line 9
    invoke-direct {v3}, Landroidx/media3/datasource/FileDataSource$Factory;-><init>()V

    .line 10
    .line 11
    new-instance p1, Landroidx/media3/datasource/cache/CacheDataSink$Factory;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroidx/media3/datasource/cache/CacheDataSink$Factory;-><init>()V

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/media3/datasource/cache/CacheDataSink$Factory;->a(Landroidx/media3/datasource/cache/Cache;)Landroidx/media3/datasource/cache/CacheDataSink$Factory;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    const-wide/32 v0, 0x200000

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroidx/media3/datasource/cache/CacheDataSink$Factory;->b(J)Landroidx/media3/datasource/cache/CacheDataSink$Factory;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    new-instance v6, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;

    .line 30
    .line 31
    .line 32
    invoke-direct {v6, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$4;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    .line 33
    .line 34
    new-instance p1, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 37
    const/4 v5, 0x2

    .line 38
    .line 39
    iget-object v7, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->cacheKeyFactory:Landroidx/media3/datasource/cache/CacheKeyFactory;

    .line 40
    move-object v0, p1

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v0 .. v7}, Lcom/narvii/nvplayer/exoplayer/NVCacheDataSourceFactory;-><init>(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/DataSink$Factory;ILandroidx/media3/datasource/cache/CacheDataSource$EventListener;Landroidx/media3/datasource/cache/CacheKeyFactory;)V

    .line 44
    return-object p1
.end method

.method public getCache()Landroidx/media3/datasource/cache/Cache;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getExoPlayer()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPlayingUrl()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-ge v0, v2, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Lcom/narvii/model/Media;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/model/Media;->getMediaUrl()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getPreCachedSize()J
    .locals 2

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getTotalDuration()J
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    :goto_0
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-ge v2, v3, :cond_0

    .line 22
    .line 23
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Lcom/narvii/model/Media;

    .line 32
    .line 33
    iget-wide v3, v3, Lcom/narvii/model/Media;->duration:J

    .line 34
    add-long/2addr v0, v3

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-wide v0

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    .line 44
    move-result-wide v0

    .line 45
    return-wide v0
.end method

.method public getVideoLogHelper()Lcom/narvii/nvplayer/VideoLogHelper;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    return-object v0
.end method

.method public getVideoPreloadDelegate()Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    return-object v0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isCached(Ljava/lang/String;JJ)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getUrlWithoutQuery(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "exo_len"

    .line 13
    .line 14
    const-wide/16 v2, -0x1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0, v2, v3}, Landroidx/media3/datasource/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    .line 18
    move-result-wide v4

    .line 19
    .line 20
    cmp-long p1, v4, v2

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 25
    move-wide v2, p2

    .line 26
    move-wide v4, p4

    .line 27
    .line 28
    .line 29
    invoke-interface/range {v0 .. v5}, Landroidx/media3/datasource/cache/Cache;->isCached(Ljava/lang/String;JJ)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 37
    move-result-wide v4

    .line 38
    move-wide v2, p2

    .line 39
    .line 40
    .line 41
    invoke-interface/range {v0 .. v5}, Landroidx/media3/datasource/cache/Cache;->isCached(Ljava/lang/String;JJ)Z

    .line 42
    move-result p1

    .line 43
    return p1
.end method

.method public synthetic isError()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/narvii/nvplayer/a;->b(Lcom/narvii/nvplayer/INVPlayer;)Z

    move-result v0

    return v0
.end method

.method public isLoadLowResVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x3

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public lockMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lockMute:Z

    return-void
.end method

.method public bridge synthetic onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->a(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public bridge synthetic onAudioSessionIdChanged(I)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->b(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->c(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public bridge synthetic onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->d(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public bridge synthetic onCues(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->e(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->f(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public bridge synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->g(Landroidx/media3/common/Player$Listener;IZ)V

    return-void
.end method

.method public bridge synthetic onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->h(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public bridge synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->i(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->j(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onLoadingChanged(Z)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->k(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->l(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0
    .param p1    # Landroidx/media3/common/MediaItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->m(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public bridge synthetic onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->n(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public bridge synthetic onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->o(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public bridge synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->p(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public bridge synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->q(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public bridge synthetic onPlaybackStateChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->r(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->s(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    .line 7
    .line 8
    const/16 v2, 0x1389

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/16 v2, 0x138a

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    packed-switch v1, :pswitch_data_1

    .line 21
    .line 22
    .line 23
    packed-switch v1, :pswitch_data_2

    .line 24
    .line 25
    .line 26
    packed-switch v1, :pswitch_data_3

    .line 27
    .line 28
    .line 29
    packed-switch v1, :pswitch_data_4

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->sendErrorToListener(Landroidx/media3/common/PlaybackException;)V

    .line 34
    const/4 p1, 0x2

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->sendCauseToListener(Landroidx/media3/common/PlaybackException;)V

    .line 39
    :goto_0
    const/4 p1, -0x2

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_0
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->sendCauseToListener(Landroidx/media3/common/PlaybackException;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->removeVideoCacheWhenError()V

    .line 47
    .line 48
    iget-boolean p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->youtubeVideoList:Lcom/narvii/youtube/YoutubeVideoList;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object v1, p1, Lcom/narvii/youtube/YoutubeVideoList;->list:Ljava/util/List;

    .line 57
    .line 58
    const-string v2, "360p"

    .line 59
    const/4 v3, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1, v2, v3}, Lcom/narvii/youtube/YoutubeVideoList;->findVideoInTargetList(Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)Lcom/narvii/youtube/YoutubeVideo;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object v1, p1, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 76
    .line 77
    new-instance v2, Lcom/narvii/nvplayer/NVMediaSource;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2}, Lcom/narvii/nvplayer/NVMediaSource;-><init>()V

    .line 81
    .line 82
    new-instance v3, Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    iput-object v3, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 88
    .line 89
    new-instance v3, Lcom/narvii/model/Media;

    .line 90
    .line 91
    .line 92
    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    .line 93
    .line 94
    iget-object p1, p1, Lcom/narvii/youtube/YoutubeVideo;->url:Ljava/lang/String;

    .line 95
    .line 96
    iput-object p1, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 97
    .line 98
    const/16 p1, 0x66

    .line 99
    .line 100
    iput p1, v3, Lcom/narvii/model/Media;->type:I

    .line 101
    .line 102
    iget-object p1, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1, v2, v3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 115
    .line 116
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 117
    :cond_1
    const/4 p1, 0x1

    .line 118
    .line 119
    :goto_1
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1, v0}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayError(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->removeVideoCacheWhenError()V

    .line 126
    return-void

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    :pswitch_data_2
    .packed-switch 0xbb9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    :pswitch_data_3
    .packed-switch 0xfa1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    :pswitch_data_4
    .packed-switch 0x1770
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0
    .param p1    # Landroidx/media3/common/PlaybackException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->u(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    if-ne p2, v2, :cond_0

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 26
    .line 27
    if-eqz p1, :cond_6

    .line 28
    const/4 p1, 0x4

    .line 29
    .line 30
    if-ne p2, p1, :cond_6

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lastPlayState:I

    .line 33
    .line 34
    if-eq v0, p1, :cond_6

    .line 35
    .line 36
    const-string p1, "INVPlayer"

    .line 37
    .line 38
    const-string v0, "ended!!!"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    .line 47
    move-result p1

    .line 48
    const/4 v0, 0x1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 56
    move-result p1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 64
    move-result v2

    .line 65
    .line 66
    if-ge p1, v2, :cond_2

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    check-cast p1, Lcom/narvii/model/Media;

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(ZLcom/narvii/model/Media;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 95
    .line 96
    new-instance v2, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2, p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$2;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1, v0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->z0(Landroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_2
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 109
    move-result p1

    .line 110
    .line 111
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 112
    .line 113
    iget-object v2, v2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 114
    .line 115
    .line 116
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 117
    move-result v2

    .line 118
    .line 119
    if-ne p1, v2, :cond_6

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 122
    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 126
    .line 127
    .line 128
    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 129
    move-result v2

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v2}, Lcom/narvii/nvplayer/IVideoListener;->shouldPauseForPageAboveVideo(I)Z

    .line 133
    move-result p1

    .line 134
    .line 135
    if-nez p1, :cond_6

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-virtual {p0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekToWindow(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 142
    goto :goto_0

    .line 143
    .line 144
    :cond_4
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/narvii/nvplayer/NVMediaSource;->isLoop()Z

    .line 148
    move-result p1

    .line 149
    .line 150
    if-nez p1, :cond_6

    .line 151
    .line 152
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 153
    .line 154
    if-eqz p1, :cond_5

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 157
    .line 158
    .line 159
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 160
    move-result v0

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/IVideoListener;->shouldPauseForPageAboveVideo(I)Z

    .line 164
    goto :goto_0

    .line 165
    .line 166
    .line 167
    :cond_5
    invoke-virtual {p0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekToWindow(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(Z)V

    .line 171
    .line 172
    :cond_6
    :goto_0
    iput p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lastPlayState:I

    .line 173
    .line 174
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 178
    return-void
.end method

.method public bridge synthetic onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->w(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/narvii/nvplayer/IVideoListener;->onPositionDiscontinuity(I)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    move-result v0

    iget v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayer/WindowIndexChangeListener;

    iget v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    .line 5
    invoke-interface {v1, v3}, Lcom/narvii/nvplayer/WindowIndexChangeListener;->onWindowIndexChanged(I)V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    :cond_2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/nvplayer/VideoLogHelper;->onPositionDiscontinuity(I)V

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPlayerState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    move-result p1

    if-le p1, v2, :cond_3

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onPositionDiscontinuity()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/c0;->y(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/nvplayer/IVideoListener;->onRenderedFirstFrame()V

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    iget-wide v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    .line 20
    sub-long/2addr v1, v3

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Lcom/narvii/nvplayer/IVideoListener;->onRenderFirstFrameInterval(J)V

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    iget v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "kbps, "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->preloadStrategyDebugInfo()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPreloadStrategyChanged(Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method

.method public bridge synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->A(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public bridge synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->B(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->C(Landroidx/media3/common/Player$Listener;J)V

    return-void
.end method

.method public bridge synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->D(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public bridge synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->E(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onSurfaceSizeChanged(II)V

    .line 8
    :cond_0
    return-void
.end method

.method public bridge synthetic onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/common/c0;->G(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public bridge synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->H(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public bridge synthetic onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->I(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    .line 7
    .line 8
    iget v2, p1, Landroidx/media3/common/VideoSize;->height:I

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSizeChanged(II)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 14
    .line 15
    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    .line 16
    .line 17
    iget v2, p1, Landroidx/media3/common/VideoSize;->height:I

    .line 18
    .line 19
    iget v3, p1, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    .line 20
    .line 21
    iget p1, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/narvii/nvplayer/IVideoListener;->onVideoSizeChanged(IIIF)V

    .line 25
    :cond_0
    return-void
.end method

.method public bridge synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/common/c0;->K(Landroidx/media3/common/Player$Listener;F)V

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

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2, p0, p1, v1}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->startPreload(Ljava/util/List;Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Landroid/content/Context;Z)V

    .line 15
    return-void
.end method

.method public quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->clearVideoSurface()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->reset()V

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingFlag:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->firstFrameFlag:Z

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->settingBeginTime:J

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3, v0}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerStateChanged(ZI)V

    .line 31
    :cond_0
    const/4 v2, -0x1

    .line 32
    .line 33
    iput v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curWindowIndex:I

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    if-eqz v2, :cond_a

    .line 40
    .line 41
    iget-object v4, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v4, :cond_a

    .line 44
    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 47
    move-result v4

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_1
    const-string v4, "photo"

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    check-cast v5, Lcom/narvii/photos/PhotoManager;

    .line 60
    .line 61
    new-instance v6, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    iget-object v7, p2, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v7

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v8

    .line 75
    .line 76
    if-eqz v8, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v8

    .line 81
    .line 82
    check-cast v8, Lcom/narvii/model/Media;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Lcom/narvii/model/Media;->isVideo()Z

    .line 86
    move-result v9

    .line 87
    .line 88
    if-eqz v9, :cond_3

    .line 89
    .line 90
    .line 91
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    :cond_3
    iget-object v9, v8, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    move-result-object v10

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 101
    move-result-object v10

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v10

    .line 106
    .line 107
    if-eqz v10, :cond_2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v9}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 111
    move-result-object v9

    .line 112
    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    const-string v11, "file://"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 125
    move-result-object v9

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v9

    .line 133
    .line 134
    iput-object v9, v8, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 135
    goto :goto_0

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 139
    move-result v4

    .line 140
    .line 141
    if-lez v4, :cond_5

    .line 142
    .line 143
    .line 144
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v4

    .line 146
    .line 147
    check-cast v4, Lcom/narvii/model/Media;

    .line 148
    .line 149
    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 150
    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 154
    .line 155
    .line 156
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    move-result-object v5

    .line 158
    .line 159
    check-cast v5, Lcom/narvii/model/Media;

    .line 160
    .line 161
    iget-object v5, v5, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    invoke-static {v5}, Lcom/narvii/util/Utils;->videoSupportLowBitrate(Ljava/lang/String;)Z

    .line 165
    move-result v5

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v5}, Lcom/narvii/nvplayer/NVMediaSource;->setVideoSupportLowRes(Z)V

    .line 169
    .line 170
    .line 171
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 172
    move-result-object v4

    .line 173
    .line 174
    if-eqz v4, :cond_6

    .line 175
    .line 176
    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getMediaSource()Lcom/narvii/nvplayer/NVMediaSource;

    .line 180
    move-result-object v5

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v5}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 187
    move-result v4

    .line 188
    .line 189
    if-ne v4, v0, :cond_7

    .line 190
    move v4, v0

    .line 191
    goto :goto_1

    .line 192
    :cond_7
    move v4, v3

    .line 193
    .line 194
    :goto_1
    iput-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->youtubeVideoList:Lcom/narvii/youtube/YoutubeVideoList;

    .line 195
    .line 196
    if-eqz v4, :cond_9

    .line 197
    .line 198
    .line 199
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v4

    .line 201
    .line 202
    check-cast v4, Lcom/narvii/model/Media;

    .line 203
    .line 204
    iget-object v5, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    invoke-static {v5}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    .line 208
    move-result v5

    .line 209
    .line 210
    if-eqz v5, :cond_8

    .line 211
    .line 212
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    .line 213
    .line 214
    iget-object p2, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 215
    .line 216
    const-string v0, "youtube"

    .line 217
    .line 218
    .line 219
    invoke-interface {v2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    check-cast v0, Lcom/narvii/youtube/YoutubeService;

    .line 223
    .line 224
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 225
    const/4 v3, 0x2

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v3}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayerStateChanged(I)V

    .line 229
    .line 230
    .line 231
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    new-instance v3, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;

    .line 235
    .line 236
    .line 237
    invoke-direct {v3, p0, p2, p1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$3;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;Ljava/lang/String;Landroid/content/Context;Landroid/view/Surface;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    .line 241
    goto :goto_2

    .line 242
    .line 243
    :cond_8
    iput-boolean v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    .line 244
    .line 245
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoMediaSource(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 247
    move-result-object p1

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Landroidx/media3/exoplayer/source/MediaSource;Landroid/view/Surface;)V

    .line 251
    goto :goto_2

    .line 252
    .line 253
    :cond_9
    iput-boolean v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isYoutubeVideo:Z

    .line 254
    .line 255
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getExoMediaSource(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 257
    move-result-object p1

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, p1, p3}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->prepare(Landroidx/media3/exoplayer/source/MediaSource;Landroid/view/Surface;)V

    .line 261
    :cond_a
    :goto_2
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    sput v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->referenceCount:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->nvExoPlayer:Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCache:Landroidx/media3/datasource/cache/Cache;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Landroidx/media3/datasource/cache/Cache;->release()V

    .line 22
    :cond_0
    return-void
.end method

.method public removeWindowIndexChangeListener(Lcom/narvii/nvplayer/WindowIndexChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->windowIndexChangeListeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/media3/common/Player;->G()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    .line 14
    return-void
.end method

.method public retry()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->quickSetting(Landroid/content/Context;Lcom/narvii/nvplayer/NVMediaSource;Landroid/view/Surface;)V

    .line 12
    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    invoke-interface {v0, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    return-void
.end method

.method public seekTo(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 3
    invoke-interface {p3, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(J)V

    :goto_0
    return-void
.end method

.method public seekToWindow(I)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    if-ltz p1, :cond_6

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    .line 18
    if-le p1, v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, v2}, Lcom/narvii/nvplayer/NVMediaSource;->getVideoUrlWithRes(IZ)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    move-result v0

    .line 39
    .line 40
    if-le v0, p1, :cond_1

    .line 41
    .line 42
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getPreCachedSize()J

    .line 46
    move-result-wide v7

    .line 47
    move-object v3, p0

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->isCached(Ljava/lang/String;JJ)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iput-boolean v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingVideoCached:Z

    .line 56
    .line 57
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/nvplayer/NVMediaSource;->isPollOrQuiz()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    const-wide/16 v2, 0x0

    .line 64
    const/4 v4, 0x2

    .line 65
    const/4 v5, 0x0

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 73
    move-result v0

    .line 74
    sub-int/2addr v0, v1

    .line 75
    .line 76
    if-ne p1, v0, :cond_2

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, p1, v2, v3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 98
    move-result v0

    .line 99
    sub-int/2addr v0, v1

    .line 100
    .line 101
    if-le p1, v0, :cond_3

    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    check-cast v1, Lcom/narvii/model/Media;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(ZLcom/narvii/model/Media;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 122
    .line 123
    new-instance v3, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;

    .line 124
    .line 125
    .line 126
    invoke-direct {v3, p0, p1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer$1;-><init>(Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v0, v1, v3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->z0(Landroidx/media3/exoplayer/source/MediaSource;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 130
    goto :goto_0

    .line 131
    .line 132
    :cond_3
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 136
    move-result v0

    .line 137
    sub-int/2addr v0, v1

    .line 138
    .line 139
    if-ge p1, v0, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v5}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 145
    .line 146
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v4}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 150
    .line 151
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 152
    .line 153
    .line 154
    invoke-interface {v0, p1, v2, v3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 157
    add-int/2addr p1, v1

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 161
    move-result v1

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->V0(II)V

    .line 165
    goto :goto_0

    .line 166
    .line 167
    :cond_4
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 168
    .line 169
    .line 170
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 175
    move-result v1

    .line 176
    .line 177
    if-nez v1, :cond_5

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->t()I

    .line 181
    move-result v0

    .line 182
    .line 183
    if-lt p1, v0, :cond_5

    .line 184
    return-void

    .line 185
    .line 186
    :cond_5
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoLogHelper:Lcom/narvii/nvplayer/VideoLogHelper;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v5}, Lcom/narvii/nvplayer/VideoLogHelper;->playAnotherVideo(Lcom/narvii/nvplayer/NVMediaSource;)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->videoPreloadDelegate:Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v4}, Lcom/narvii/nvplayer/exoplayer/VideoPreloadDelegate;->onStateChanged(I)V

    .line 195
    .line 196
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, p1, v2, v3}, Landroidx/media3/common/Player;->seekTo(IJ)V

    .line 200
    :cond_6
    :goto_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->setPlayWhenReady(ZZ)V

    return-void
.end method

.method public setPlayWhenReady(ZZ)V
    .locals 4
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    move-result p1

    if-ltz p1, :cond_4

    .line 6
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

    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mPositionMap:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    .line 8
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

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mIndexMap:Ljava/util/Map;

    .line 10
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

    .line 11
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

    iget-object p2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mPositionMap:Ljava/util/Map;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->seekTo(IJ)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 p2, 0x1

    .line 14
    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setVideoListener(Lcom/narvii/nvplayer/IVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    .line 8
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->lockMute:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    .line 11
    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mCacheFile:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public updatePreloadLevel()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/nvplayerview/NVVideoView;->isDebug()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mVideoListener:Lcom/narvii/nvplayer/IVideoListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    iget v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->curBitRate:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "kbps, "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    sget-object v2, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->INSTANCE:Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/nvplayer/exoplayer/ExoPreloadUtil;->preloadStrategyDebugInfo()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lcom/narvii/nvplayer/IVideoListener;->onPreloadStrategyChanged(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public videoResDowngrade()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, v1, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-ge v1, v0, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 28
    move-result v1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 34
    move-result v2

    .line 35
    .line 36
    add-int/lit8 v3, v2, -0x1

    .line 37
    .line 38
    if-ge v1, v3, :cond_2

    .line 39
    .line 40
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 41
    add-int/2addr v1, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->V0(II)V

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    :goto_0
    if-ge v1, v2, :cond_1

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 56
    .line 57
    iget-object v4, v4, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    check-cast v4, Lcom/narvii/model/Media;

    .line 64
    .line 65
    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Lcom/narvii/util/Utils;->getLowResVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v3, v4}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_1
    iget-object v1, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->B0(Ljava/util/Collection;)V

    .line 89
    :cond_2
    :goto_1
    return-void
.end method

.method public videoResUpgrade()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->loadLowResVideo:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    if-ge v0, v1, :cond_0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mExoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentWindowIndex()I

    .line 29
    move-result v0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->O0()I

    .line 35
    move-result v2

    .line 36
    .line 37
    add-int/lit8 v3, v2, -0x1

    .line 38
    .line 39
    if-ge v0, v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->V0(II)V

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    :goto_0
    if-ge v0, v2, :cond_1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->mediaSource:Lcom/narvii/nvplayer/NVMediaSource;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/narvii/nvplayer/NVMediaSource;->mediaList:Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    check-cast v4, Lcom/narvii/model/Media;

    .line 65
    .line 66
    iget-object v4, v4, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v3, v4}, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->getInnerExoMediaSource(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/exoplayer/NVExoPlayer;->concatenatingMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->B0(Ljava/util/Collection;)V

    .line 86
    :cond_2
    :goto_1
    return-void
.end method
