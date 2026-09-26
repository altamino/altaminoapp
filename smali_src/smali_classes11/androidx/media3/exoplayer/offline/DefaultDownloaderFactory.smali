.class public Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloaderFactory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final CONSTRUCTORS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/exoplayer/offline/Downloader;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->c()Landroid/util/SparseArray;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->CONSTRUCTORS:Landroid/util/SparseArray;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/CacheDataSource$Factory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/offline/a;

    invoke-direct {v0}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;-><init>(Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 4
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private b(Landroidx/media3/exoplayer/offline/DownloadRequest;I)Landroidx/media3/exoplayer/offline/Downloader;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->CONSTRUCTORS:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 16
    .line 17
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->j(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->g(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    .line 37
    move-result-object p1

    .line 38
    const/4 v1, 0x3

    .line 39
    .line 40
    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    aput-object p1, v1, v2

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 46
    const/4 v2, 0x1

    .line 47
    .line 48
    aput-object p1, v1, v2

    .line 49
    .line 50
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    .line 51
    const/4 v2, 0x2

    .line 52
    .line 53
    aput-object p1, v1, v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Landroidx/media3/exoplayer/offline/Downloader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Failed to instantiate downloader for content type "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    throw v0

    .line 85
    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    const-string v1, "Module missing for content type "

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1
.end method

.method private static c()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/exoplayer/offline/Downloader;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    .line 7
    :try_start_0
    const-class v1, Landroidx/media3/exoplayer/dash/offline/DashDownloader;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    :try_start_1
    const-class v1, Landroidx/media3/exoplayer/hls/offline/HlsDownloader;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    .line 27
    :catch_1
    :try_start_2
    const-class v1, Landroidx/media3/exoplayer/smoothstreaming/offline/SsDownloader;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 36
    :catch_2
    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/exoplayer/offline/Downloader;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-class v0, Landroidx/media3/exoplayer/offline/Downloader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v1, Landroidx/media3/common/MediaItem;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    aput-object v1, v0, v2

    .line 15
    .line 16
    const-class v1, Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    const-class v1, Ljava/util/concurrent/Executor;

    .line 22
    const/4 v2, 0x2

    .line 23
    .line 24
    aput-object v1, v0, v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "Downloader constructor missing"

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    throw v0
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/Downloader;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->x0(Landroid/net/Uri;Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x4

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroidx/media3/exoplayer/offline/ProgressiveDownloader;

    .line 22
    .line 23
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 27
    .line 28
    iget-object v2, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->j(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$Builder;->b(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->executor:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/exoplayer/offline/ProgressiveDownloader;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 50
    return-object v0

    .line 51
    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v2, "Unsupported type: "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p1

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DefaultDownloaderFactory;->b(Landroidx/media3/exoplayer/offline/DownloadRequest;I)Landroidx/media3/exoplayer/offline/Downloader;

    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method
