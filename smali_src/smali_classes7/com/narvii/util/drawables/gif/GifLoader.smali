.class public Lcom/narvii/util/drawables/gif/GifLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/drawables/gif/GifLoader$Session;,
        Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;,
        Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;,
        Lcom/narvii/util/drawables/gif/GifLoader$ListenerStub;
    }
.end annotation


# static fields
.field public static final STATE_LOADING:I = 0x2

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_QUEUEING:I = 0x1


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field dir:Ljava/io/File;

.field final diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

.field final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/drawables/gif/GifLoader$Session;",
            ">;"
        }
    .end annotation
.end field

.field final queue1:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/narvii/util/drawables/gif/GifLoader$Session;",
            ">;"
        }
    .end annotation
.end field

.field final queue2:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/narvii/util/drawables/gif/GifLoader$Session;",
            ">;"
        }
    .end annotation
.end field

.field final refs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/util/drawables/gif/NVGifDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field stack:Lcom/narvii/util/http/ProxyStack;

.field final workerDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;",
            ">;"
        }
    .end annotation
.end field

.field final workerLoads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    .line 50
    .line 51
    new-instance p1, Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 52
    .line 53
    const-string v0, "gif-diskd"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 59
    .line 60
    new-instance p1, Lcom/narvii/util/http/ProxyStack;

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p2}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 68
    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    iget-object p2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    const/4 p2, 0x1

    .line 32
    .line 33
    iput-boolean p2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 50
    move-result p2

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    if-nez p2, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_4

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 59
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 64
    monitor-enter p1

    .line 65
    .line 66
    :try_start_1
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

    .line 83
    .line 84
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 85
    .line 86
    if-ne v2, v1, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->abort()V

    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception p2

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    monitor-exit p1

    .line 94
    goto :goto_3

    .line 95
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    throw p2

    .line 97
    :cond_3
    :goto_3
    return-void

    .line 98
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p1
.end method

.method public abortAll()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 13
    monitor-enter v0

    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;

    .line 33
    .line 34
    iput-boolean v3, v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->stoped:Z

    .line 35
    .line 36
    iget-object v2, v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iput-boolean v3, v2, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_3

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 52
    monitor-enter v1

    .line 53
    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v2

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    check-cast v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->abortAndStop()V

    .line 74
    .line 75
    iget-object v2, v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iput-boolean v3, v2, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 91
    monitor-enter v0

    .line 92
    .line 93
    :try_start_2
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :catchall_2
    move-exception v1

    .line 100
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    throw v1

    .line 102
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    throw v0

    .line 104
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    throw v1
.end method

.method protected addWorkerDownload()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->maxWorkerDownloadCount()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;)V

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method

.method protected addWorkerLoad()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->maxWorkerLoadCount()I

    .line 13
    move-result v2

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;)V

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method

.method public clear()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->clear()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->abortAll()V

    .line 34
    return-void
.end method

.method public getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLoadingState(Ljava/lang/String;)I

    .line 7
    move-result p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    move-object p1, v0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 33
    .line 34
    :goto_0
    if-eqz p1, :cond_2

    .line 35
    .line 36
    new-instance p2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, p1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 40
    return-object p2

    .line 41
    :cond_2
    return-object v0
.end method

.method public getDiskCachedGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLoadingState(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    return-object v0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 24
    move-result-wide v2

    .line 25
    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    cmp-long v2, v2, v4

    .line 29
    .line 30
    if-lez v2, :cond_3

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    new-instance v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    .line 43
    move-result v0

    .line 44
    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    .line 49
    move-result v0

    .line 50
    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getNumberOfFrames()I

    .line 55
    move-result v0

    .line 56
    .line 57
    if-lez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v2}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 73
    return-object p1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :goto_0
    const-string v0, "OutOfMemory when open gif"

    .line 82
    .line 83
    .line 84
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :catch_1
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/drawables/DrawableUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
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
    :cond_0
    return-object p1
.end method

.method public getLoadingProgress(Ljava/lang/String;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    const/4 p1, -0x1

    .line 20
    return p1

    .line 21
    .line 22
    :cond_0
    iget v0, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget p1, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 27
    .line 28
    mul-int/lit8 p1, p1, 0x64

    .line 29
    div-int/2addr p1, v0

    .line 30
    return p1

    .line 31
    :cond_1
    const/4 p1, -0x2

    .line 32
    return p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method public getLoadingRequests()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    check-cast v3, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_0
    :goto_1
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_2
    return-object v2

    .line 52
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v1
.end method

.method public getLoadingState(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    return v0

    .line 21
    .line 22
    :cond_0
    iget v1, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    return v2

    .line 27
    .line 28
    :cond_1
    iget-object p1, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    const/4 p1, 0x3

    .line 32
    return p1

    .line 33
    .line 34
    :cond_2
    if-ne v1, v2, :cond_3

    .line 35
    const/4 p1, 0x2

    .line 36
    return p1

    .line 37
    :cond_3
    return v0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p1
.end method

.method public getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    :try_start_0
    const-string v1, "assets://"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 30
    .line 31
    const/16 v3, 0x9

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v1, v3}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_1
    const-string v1, "photo://"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    const-string v2, "photo"

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 63
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    const-string v1, "mediastore://"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    .line 76
    move-result-object v1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_3
    const-string v1, "file://"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    move-result v1

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    new-instance v1, Ljava/io/File;

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    move-object v1, v0

    .line 101
    .line 102
    :goto_0
    new-instance v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 103
    .line 104
    .line 105
    invoke-direct {v2, v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    .line 109
    move-result v1

    .line 110
    .line 111
    if-lez v1, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    .line 115
    move-result v1

    .line 116
    .line 117
    if-lez v1, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getNumberOfFrames()I

    .line 121
    move-result v1

    .line 122
    .line 123
    if-lez v1, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    .line 131
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v2}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-object p1

    .line 144
    .line 145
    :goto_2
    const-string v1, "OutOfMemory when open local gif"

    .line 146
    .line 147
    .line 148
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :catch_1
    :cond_5
    return-object v0
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 26
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    cmp-long p1, v2, v4

    .line 31
    .line 32
    if-lez p1, :cond_2

    .line 33
    return v1

    .line 34
    :catch_0
    :cond_2
    return v0
.end method

.method protected maxWorkerDownloadCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected maxWorkerLoadCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 12

    .line 1
    .line 2
    const-string v0, "assets://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 23
    :goto_0
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget-object v9, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 30
    monitor-enter v9

    .line 31
    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1, p2}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_2
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_3
    :goto_1
    move-object v10, v3

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/4 v3, 0x0

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :goto_2
    if-eqz v10, :cond_6

    .line 78
    .line 79
    const-string v3, "photo://"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-nez v3, :cond_5

    .line 86
    .line 87
    const-string v3, "mediastore://"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-nez v3, :cond_5

    .line 94
    .line 95
    const-string v3, "file://"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    move-result v3

    .line 100
    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    :cond_5
    new-instance v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v10}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 110
    .line 111
    goto/16 :goto_5

    .line 112
    .line 113
    :cond_6
    const-string v3, "photo://"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    move-result v3

    .line 118
    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    .line 122
    .line 123
    const-string v2, "photo"

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 136
    const/4 v7, 0x0

    .line 137
    move-object v2, v1

    .line 138
    move-object v3, p0

    .line 139
    move-object v4, v0

    .line 140
    move-object v5, p1

    .line 141
    move-object v8, p2

    .line 142
    .line 143
    .line 144
    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 145
    :goto_3
    move-object v2, v1

    .line 146
    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_7
    const-string v3, "mediastore://"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    move-result v3

    .line 154
    .line 155
    if-eqz v3, :cond_8

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    .line 159
    move-result-object v6

    .line 160
    .line 161
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 162
    const/4 v7, 0x0

    .line 163
    move-object v2, v1

    .line 164
    move-object v3, p0

    .line 165
    move-object v4, v0

    .line 166
    move-object v5, p1

    .line 167
    move-object v8, p2

    .line 168
    .line 169
    .line 170
    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 171
    goto :goto_3

    .line 172
    .line 173
    :cond_8
    const-string v3, "file://"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    move-result v3

    .line 178
    .line 179
    if-eqz v3, :cond_9

    .line 180
    .line 181
    new-instance v6, Ljava/io/File;

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    .line 192
    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 195
    const/4 v7, 0x0

    .line 196
    move-object v2, v1

    .line 197
    move-object v3, p0

    .line 198
    move-object v4, v0

    .line 199
    move-object v5, p1

    .line 200
    move-object v8, p2

    .line 201
    .line 202
    .line 203
    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 204
    goto :goto_3

    .line 205
    .line 206
    .line 207
    :cond_9
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 208
    move-result-object v6

    .line 209
    .line 210
    if-eqz v10, :cond_a

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 214
    move-result-wide v3

    .line 215
    .line 216
    const-wide/16 v7, 0x0

    .line 217
    .line 218
    cmp-long v3, v3, v7

    .line 219
    .line 220
    if-lez v3, :cond_a

    .line 221
    .line 222
    new-instance v3, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 223
    .line 224
    .line 225
    invoke-direct {v3, v10}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p2, p1, v3, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 229
    goto :goto_4

    .line 230
    .line 231
    .line 232
    :cond_a
    invoke-static {v6}, Lcom/narvii/util/drawables/DrawableUtils;->getWritingFile(Ljava/io/File;)Ljava/io/File;

    .line 233
    move-result-object v7

    .line 234
    .line 235
    new-instance v11, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 236
    move-object v2, v11

    .line 237
    move-object v3, p0

    .line 238
    move-object v4, v0

    .line 239
    move-object v5, p1

    .line 240
    move-object v8, p2

    .line 241
    .line 242
    .line 243
    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 244
    .line 245
    if-eqz v10, :cond_b

    .line 246
    .line 247
    iput-object v10, v11, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 248
    .line 249
    new-instance v2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 250
    .line 251
    .line 252
    invoke-direct {v2, v10}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    .line 253
    .line 254
    .line 255
    invoke-interface {p2, p1, v2, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 256
    :cond_b
    move-object v2, v11

    .line 257
    .line 258
    :goto_4
    if-eqz v2, :cond_d

    .line 259
    .line 260
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    iget-object p1, v2, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 266
    .line 267
    if-nez p1, :cond_c

    .line 268
    .line 269
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerLoad()V

    .line 276
    goto :goto_5

    .line 277
    .line 278
    :cond_c
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerDownload()V

    .line 285
    :cond_d
    :goto_5
    monitor-exit v9

    .line 286
    return-void

    .line 287
    :goto_6
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    throw p1
.end method

.method public size()J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

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

.method public touch(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 1
    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    return-void
.end method

.method public touch(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->touch(Ljava/io/File;)V

    return-void
.end method

.method public trimAndFlush(IJ)V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

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
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->trimAndFlush(IJ)V

    .line 44
    return-void
.end method
