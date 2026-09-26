.class Lcom/narvii/media/MediaLoader$1;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/media/MediaLoader$1;->val$cacheDir:Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    :try_start_1
    iget-object v4, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/narvii/media/MediaLoader$1;->val$cacheDir:Ljava/io/File;

    .line 15
    const/4 v6, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {v5, v6, v6}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    iput-object v5, v4, Lcom/narvii/media/MediaLoader;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    :try_start_2
    iget-object v4, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    .line 24
    .line 25
    iput-boolean v3, v4, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 26
    .line 27
    iget-object v3, v4, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_3

    .line 34
    :catchall_1
    move-exception v1

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception v4

    .line 37
    .line 38
    :try_start_3
    const-string v5, "fail to init media lru cache"

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    :try_start_4
    iget-object v4, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    .line 44
    .line 45
    iput-boolean v3, v4, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 46
    .line 47
    iget-object v3, v4, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v4, "load audio cache for "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v4

    .line 63
    sub-long/2addr v4, v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v1, " ms"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    .line 82
    :goto_2
    iget-object v2, p0, Lcom/narvii/media/MediaLoader$1;->this$0:Lcom/narvii/media/MediaLoader;

    .line 83
    .line 84
    iput-boolean v3, v2, Lcom/narvii/media/MediaLoader;->mDiskCacheStarting:Z

    .line 85
    .line 86
    iget-object v2, v2, Lcom/narvii/media/MediaLoader;->mDiskCacheLock:Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 90
    throw v1

    .line 91
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    throw v1
.end method
