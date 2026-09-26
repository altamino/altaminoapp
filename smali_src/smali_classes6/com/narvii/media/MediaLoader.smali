.class public Lcom/narvii/media/MediaLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/MediaLoader$LoadWorker;,
        Lcom/narvii/media/MediaLoader$OnMediaLoadListener;
    }
.end annotation


# static fields
.field public static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field volatile cache:Lcom/narvii/util/disklrucache/DiskLruCache;

.field context:Landroid/content/Context;

.field dir:Ljava/io/File;

.field final mDiskCacheLock:Ljava/lang/Object;

.field mDiskCacheStarting:Z

.field final runningSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/media/MediaLoader$LoadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Lcom/narvii/util/http/ProxyStack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    const-string v1, "media-loader"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/media/MediaLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/media/MediaLoader;->context:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/media/MediaLoader;->dir:Ljava/io/File;

    .line 22
    const/4 p1, 0x1

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 25
    .line 26
    new-instance p1, Lcom/narvii/media/MediaLoader$1;

    .line 27
    .line 28
    const-string v0, "audio lru cache load"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0, v0, p2}, Lcom/narvii/media/MediaLoader$1;-><init>(Lcom/narvii/media/MediaLoader;Ljava/lang/String;Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 35
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/MediaLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x3f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method


# virtual methods
.method public cacheLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "file"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/io/File;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/media/MediaLoader$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/narvii/media/MediaLoader$2;-><init>(Lcom/narvii/media/MediaLoader;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void

    .line 58
    .line 59
    :cond_1
    if-eqz p3, :cond_2

    .line 60
    .line 61
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 65
    :cond_2
    return-void

    .line 66
    .line 67
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 68
    .line 69
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 73
    :cond_4
    return-void
.end method

.method public clear()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    :try_start_1
    iget-object v2, p0, Lcom/narvii/media/MediaLoader;->dir:Ljava/io/File;

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v3}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iput-object v2, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    :try_start_2
    iput-boolean v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_2

    .line 36
    :catchall_1
    move-exception v2

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 44
    throw v2

    .line 45
    .line 46
    :catch_1
    iput-boolean v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    monitor-exit v0

    .line 51
    goto :goto_3

    .line 52
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw v1

    .line 54
    :cond_0
    :goto_3
    return-void
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/media/MediaLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 15
    return-object v0
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/media/MediaLoader$LoadWorker;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public loadMedia(Ljava/lang/String;Lcom/narvii/media/MediaLoader$OnMediaLoadListener;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    const-string v2, "file"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 35
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    :catch_0
    if-eqz v2, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-interface {p2, p1, v2}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onError(Ljava/lang/String;)V

    .line 45
    :cond_2
    :goto_0
    return-void

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    const-string v0, "cache is null"

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 59
    .line 60
    if-eqz p2, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onError(Ljava/lang/String;)V

    .line 64
    return-void

    .line 65
    .line 66
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    const/4 v1, 0x0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    .line 89
    .line 90
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 91
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-object v0, v2

    .line 94
    .line 95
    :goto_1
    if-eqz p2, :cond_5

    .line 96
    .line 97
    .line 98
    :try_start_3
    invoke-interface {p2, p1, v0}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 99
    :cond_5
    return-void

    .line 100
    .line 101
    :catch_2
    :cond_6
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    check-cast v0, Lcom/narvii/media/MediaLoader$LoadWorker;

    .line 108
    .line 109
    if-eqz v0, :cond_8

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    iget-object v0, v0, Lcom/narvii/media/MediaLoader$LoadWorker;->listeners:Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLoading(Ljava/lang/String;)V

    .line 120
    :cond_7
    return-void

    .line 121
    .line 122
    :cond_8
    new-instance v0, Lcom/narvii/media/MediaLoader$LoadWorker;

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, p0, v2}, Lcom/narvii/media/MediaLoader$LoadWorker;-><init>(Lcom/narvii/media/MediaLoader;Lcom/narvii/media/b;)V

    .line 126
    .line 127
    iget-object v1, v0, Lcom/narvii/media/MediaLoader$LoadWorker;->listeners:Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    sget-object v1, Lcom/narvii/media/MediaLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 138
    .line 139
    .line 140
    filled-new-array {p1}, [Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    .line 146
    if-eqz p2, :cond_9

    .line 147
    .line 148
    .line 149
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLoading(Ljava/lang/String;)V

    .line 150
    :cond_9
    return-void
.end method

.method public size()J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->dir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    array-length v3, v0

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v4, v3, :cond_0

    .line 15
    .line 16
    aget-object v5, v0, v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 20
    move-result-wide v5

    .line 21
    add-long/2addr v1, v5

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v1
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/disklrucache/DiskLruCache;->trimAndFlush(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    return-void
.end method
