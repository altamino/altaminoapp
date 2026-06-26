.class public Lcom/narvii/media/MediaLoader;
.super Ljava/lang/Object;
.source "MediaLoader.java"


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

    const/4 v0, 0x2

    const-string v1, "media-loader"

    .line 43
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/narvii/media/MediaLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/narvii/media/MediaLoader;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/narvii/media/MediaLoader;->dir:Ljava/io/File;

    .line 67
    iput-boolean v0, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 68
    new-instance p1, Lcom/narvii/media/MediaLoader$1;

    const-string v0, "audio lru cache load"

    invoke-direct {p1, p0, v0, p2}, Lcom/narvii/media/MediaLoader$1;-><init>(Lcom/narvii/media/MediaLoader;Ljava/lang/String;Ljava/io/File;)V

    .line 84
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/media/MediaLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3f

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cacheLocalFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 3
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

    .line 206
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 214
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Lcom/narvii/media/MediaLoader$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/narvii/media/MediaLoader$2;-><init>(Lcom/narvii/media/MediaLoader;Ljava/lang/String;Lcom/narvii/util/Callback;Landroid/net/Uri;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 264
    invoke-interface {p3, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 208
    invoke-interface {p3, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public clear()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 94
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 96
    :try_start_1
    iget-object v2, p0, Lcom/narvii/media/MediaLoader;->dir:Ljava/io/File;

    const/4 v3, 0x1

    invoke-static {v2, v3, v3}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    iput-boolean v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 100
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 99
    iput-boolean v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 100
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 101
    throw v2

    .line 99
    :catch_1
    iput-boolean v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 100
    iget-object v1, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    goto :goto_0

    .line 102
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/media/MediaLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    return-object v0
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaLoader$LoadWorker;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadMedia(Ljava/lang/String;Lcom/narvii/media/MediaLoader$OnMediaLoadListener;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v2, :cond_1

    .line 136
    invoke-interface {p2, p1, v2}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onError(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    if-nez v0, :cond_4

    const-string v0, "cache is null"

    .line 146
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 148
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onError(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 155
    :try_start_1
    invoke-direct {p0, p1}, Lcom/narvii/media/MediaLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v3, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v3, v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 158
    invoke-virtual {v0, v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 162
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-object v0, v2

    :goto_2
    if-eqz p2, :cond_5

    .line 166
    :try_start_3
    invoke-interface {p2, p1, v0}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    return-void

    :catch_2
    nop

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/media/MediaLoader$LoadWorker;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    .line 177
    iget-object v0, v0, Lcom/narvii/media/MediaLoader$LoadWorker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLoading(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 183
    :cond_8
    new-instance v0, Lcom/narvii/media/MediaLoader$LoadWorker;

    invoke-direct {v0, p0, v2}, Lcom/narvii/media/MediaLoader$LoadWorker;-><init>(Lcom/narvii/media/MediaLoader;Lcom/narvii/media/MediaLoader$1;)V

    .line 184
    iget-object v2, v0, Lcom/narvii/media/MediaLoader$LoadWorker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v2, p0, Lcom/narvii/media/MediaLoader;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v2, Lcom/narvii/media/MediaLoader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-eqz p2, :cond_9

    .line 188
    invoke-interface {p2, p1}, Lcom/narvii/media/MediaLoader$OnMediaLoadListener;->onLoading(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public size()J
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 111
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/disklrucache/DiskLruCache;->trimAndFlush(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
