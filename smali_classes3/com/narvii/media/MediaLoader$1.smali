.class Lcom/narvii/media/MediaLoader$1;
.super Ljava/lang/Thread;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaLoader;-><init>(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaLoader;

.field final synthetic val$cacheDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaLoader;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iput-object p3, p0, Lcom/narvii/media/MediaLoader$1;->val$cacheDir:Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iget-object v0, v0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .line 74
    :try_start_1
    iget-object v4, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iget-object v5, p0, Lcom/narvii/media/MediaLoader$1;->val$cacheDir:Ljava/io/File;

    const/4 v6, 0x1

    invoke-static {v5, v6, v6}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    move-result-object v5

    iput-object v5, v4, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object v4, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iput-boolean v3, v4, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 79
    iget-object v3, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iget-object v3, v3, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "fail to init media lru cache"

    .line 76
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :try_start_4
    iget-object v4, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iput-boolean v3, v4, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 79
    iget-object v3, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iget-object v3, v3, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    goto :goto_0

    .line 81
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load audio cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 82
    monitor-exit v0

    return-void

    .line 78
    :goto_2
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iput-boolean v3, v2, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 79
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    iget-object v2, v2, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 80
    throw v1

    :catchall_1
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
