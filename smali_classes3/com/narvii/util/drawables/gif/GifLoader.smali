.class public Lcom/narvii/util/drawables/gif/GifLoader;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;,
        Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;,
        Lcom/narvii/util/drawables/gif/GifLoader$Session;,
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

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    .line 183
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    .line 184
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    .line 185
    new-instance p1, Lcom/narvii/util/fileloader/DiskDaemonHelper;

    const-string v0, "gif-diskd"

    invoke-direct {p1, p2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 186
    new-instance p1, Lcom/narvii/util/http/ProxyStack;

    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 3

    .line 422
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 424
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    if-eqz v1, :cond_0

    .line 427
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 428
    iget-object p2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 429
    iput-boolean p2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    .line 430
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 432
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 439
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 442
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    monitor-enter p1

    .line 443
    :try_start_1
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

    .line 444
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    if-ne v2, v1, :cond_1

    .line 445
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->abort()V

    goto :goto_1

    .line 448
    :cond_2
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 439
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public abortAll()V
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 521
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 522
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;

    .line 524
    iput-boolean v3, v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->stoped:Z

    .line 525
    iget-object v2, v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    if-eqz v2, :cond_0

    .line 527
    iput-boolean v3, v2, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    goto :goto_0

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 531
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 532
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    monitor-enter v1

    .line 533
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

    .line 534
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->abortAndStop()V

    .line 535
    iget-object v2, v2, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    if-eqz v2, :cond_2

    .line 537
    iput-boolean v3, v2, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    goto :goto_1

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 541
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 542
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 543
    :try_start_2
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 544
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 541
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 531
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method protected addWorkerDownload()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    monitor-enter v0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->maxWorkerDownloadCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 465
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

    invoke-direct {v1, p0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;)V

    .line 466
    iget-object v2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 469
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected addWorkerLoad()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->maxWorkerLoadCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 455
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;

    invoke-direct {v1, p0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerLoad;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;)V

    .line 456
    iget-object v2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->workerLoads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 459
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 554
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 558
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->clear()V

    .line 559
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->abortAll()V

    return-void
.end method

.method public getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 254
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLoadingState(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    :goto_0
    if-eqz p1, :cond_2

    .line 261
    new-instance p2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-direct {p2, p1}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-object p2

    :cond_2
    return-object v0
.end method

.method public getDiskCachedGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;
    .locals 7

    .line 290
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLoadingState(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 297
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v2, v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    .line 302
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 303
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 304
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getNumberOfFrames()I

    move-result v0

    if-lez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-direct {p1, v2}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    return-object p1

    .line 308
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "OutOfMemory when open gif"

    .line 312
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 961
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 962
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-static {p1}, Lcom/narvii/util/drawables/DrawableUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3f

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getLoadingProgress(Ljava/lang/String;)I
    .locals 2

    .line 218
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 225
    :cond_0
    iget v0, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    if-lez v0, :cond_1

    .line 226
    iget p1, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    mul-int/lit8 p1, p1, 0x64

    div-int/2addr p1, v0

    return p1

    :cond_1
    const/4 p1, -0x2

    return p1

    :catchall_0
    move-exception p1

    .line 222
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    .line 200
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    if-nez v2, :cond_0

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    :cond_0
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2

    :catchall_0
    move-exception v1

    .line 206
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getLoadingState(Ljava/lang/String;)I
    .locals 3

    .line 233
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 241
    :cond_0
    iget v1, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 244
    :cond_1
    iget-object p1, p1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    if-ne v1, v2, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    .line 237
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;
    .locals 4

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "assets://"

    .line 328
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 330
    new-instance v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "photo://"

    .line 333
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    const-string v2, "photo"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 335
    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "mediastore://"

    .line 336
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "file://"

    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 341
    :goto_0
    new-instance v2, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    invoke-direct {v2, v1}, Lcom/narvii/util/drawables/gif/NVGifDrawable;-><init>(Ljava/io/File;)V

    .line 343
    :goto_1
    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v2}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->getNumberOfFrames()I

    move-result v1

    if-lez v1, :cond_5

    .line 344
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 345
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance p1, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-direct {p1, v2}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "OutOfMemory when open local gif"

    .line 350
    invoke-static {v1, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :cond_5
    return-object v0
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 272
    invoke-virtual {p0, p1, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    .line 276
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    return v1

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

    const-string v0, "assets://"

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 360
    invoke-interface {p2, p1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_0
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    iget-object v9, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v9

    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {v2, p1, p2}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    goto/16 :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 373
    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    .line 375
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-nez v3, :cond_3

    .line 377
    iget-object v4, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v10, v3

    if-eqz v10, :cond_5

    const-string v3, "photo://"

    .line 380
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "mediastore://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 381
    :cond_4
    new-instance v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-direct {v0, v10}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_2

    :cond_5
    const-string v3, "photo://"

    .line 383
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->context:Lcom/narvii/app/NVContext;

    const-string v2, "photo"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/photos/PhotoManager;

    .line 385
    invoke-virtual {v1, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 386
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    goto/16 :goto_1

    :cond_6
    const-string v3, "mediastore://"

    .line 387
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 388
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 389
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    goto :goto_1

    :cond_7
    const-string v3, "file://"

    .line 390
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 391
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    goto :goto_1

    .line 394
    :cond_8
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v10, :cond_9

    .line 395
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-lez v5, :cond_9

    .line 396
    new-instance v3, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-direct {v3, v10}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    invoke-interface {p2, p1, v3, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    move-object v1, v2

    goto :goto_1

    .line 398
    :cond_9
    invoke-static {v6}, Lcom/narvii/util/drawables/DrawableUtils;->getWritingFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 399
    new-instance v11, Lcom/narvii/util/drawables/gif/GifLoader$Session;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/drawables/gif/GifLoader$Session;-><init>(Lcom/narvii/util/drawables/gif/GifLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    if-eqz v10, :cond_a

    .line 401
    iput-object v10, v11, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 402
    new-instance v2, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-direct {v2, v10}, Lcom/narvii/util/drawables/gif/WrapGifDrawable;-><init>(Lcom/narvii/util/drawables/gif/NVGifDrawable;)V

    invoke-interface {p2, p1, v2, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_a
    move-object v1, v11

    :goto_1
    if-eqz v1, :cond_c

    .line 407
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object p1, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-nez p1, :cond_b

    .line 409
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue1:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerLoad()V

    goto :goto_2

    .line 412
    :cond_b
    iget-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader;->addWorkerDownload()V

    .line 418
    :cond_c
    :goto_2
    monitor-exit v9

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()J
    .locals 7

    .line 482
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 484
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 485
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public touch(Ljava/io/File;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touch(Ljava/io/File;)V

    return-void
.end method

.method public touch(Ljava/lang/String;)V
    .locals 0

    .line 502
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->touch(Ljava/io/File;)V

    return-void
.end method

.method public trimAndFlush(IJ)V
    .locals 2

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 508
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 510
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 511
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader;->diskDaemonHelper:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->trimAndFlush(IJ)V

    return-void
.end method
