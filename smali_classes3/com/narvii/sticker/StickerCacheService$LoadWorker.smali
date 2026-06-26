.class Lcom/narvii/sticker/StickerCacheService$LoadWorker;
.super Landroid/os/AsyncTask;
.source "StickerCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/sticker/StickerCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field collectionId:Ljava/lang/String;

.field private conn:Ljava/net/HttpURLConnection;

.field current:I

.field downloadId:Ljava/lang/String;

.field listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/narvii/sticker/StickerCacheService$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/narvii/sticker/StickerCacheService;

.field total:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 369
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 359
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    .line 370
    iput-object p3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    .line 371
    iput-object p2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    .line 372
    invoke-static {p1, p2, p3}, Lcom/narvii/sticker/StickerCacheService;->access$000(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    return-void
.end method

.method private check()Z
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-object v0, v0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getProgress(II)F
    .locals 1

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float p1, p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    :goto_0
    return p1
.end method

.method private notifyStatusChanged()V
    .locals 4

    .line 507
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

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

    check-cast v1, Lcom/narvii/sticker/StickerCacheService$DownloadListener;

    .line 510
    iget-object v2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/narvii/sticker/StickerCacheService$DownloadListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 357
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 382
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    invoke-static {v2, p1, v1}, Lcom/narvii/sticker/StickerCacheService;->access$100(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 389
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-boolean v1, v1, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-object v1, v1, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :catch_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-boolean v4, v4, Lcom/narvii/sticker/StickerCacheService;->migrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 393
    :try_start_1
    iget-object v4, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-object v4, v4, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 398
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    .line 399
    monitor-exit v1

    return-object v0

    .line 401
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 404
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z

    if-eqz v1, :cond_4

    return-object v0

    .line 409
    :cond_4
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 410
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 412
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-object v1, v1, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 413
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-object v4, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/narvii/sticker/StickerCacheService;->access$200(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 414
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    :try_start_3
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v5}, Lcom/narvii/sticker/StickerCacheService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 421
    invoke-direct {p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->check()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v4, :cond_6

    .line 479
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_5

    .line 483
    :try_start_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_5
    return-object v0

    .line 424
    :cond_6
    :try_start_5
    iget-object v4, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 426
    :try_start_6
    invoke-direct {p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->check()Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v5, :cond_8

    .line 479
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_7

    .line 483
    :try_start_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_7
    return-object v0

    .line 429
    :cond_8
    :try_start_8
    iget-boolean v5, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v5, :cond_a

    .line 479
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_9

    .line 483
    :try_start_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_9
    return-object v0

    .line 433
    :cond_a
    :try_start_a
    iget-object v5, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    const/4 v6, 0x0

    if-nez v5, :cond_b

    .line 435
    iget-object v5, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    iput v5, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    .line 436
    iput v6, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    .line 437
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    :cond_b
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 442
    :cond_c
    :goto_2
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v7, v8, :cond_11

    .line 443
    iget-object v8, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v8, :cond_e

    .line 479
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_d

    .line 483
    :try_start_b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    :cond_d
    return-object v0

    .line 446
    :cond_e
    :try_start_c
    iget-boolean v8, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v8, :cond_10

    .line 479
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_f

    .line 483
    :try_start_d
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :catch_5
    :cond_f
    return-object v0

    .line 449
    :cond_10
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 450
    iget-object v8, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-virtual {v8, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 451
    iget v8, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    const-wide/16 v7, 0x14

    add-long/2addr v7, v2

    cmp-long v13, v11, v7

    if-lez v13, :cond_c

    new-array v2, v10, [Ljava/lang/Integer;

    .line 453
    iget v3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-wide v2, v11

    goto :goto_2

    .line 457
    :cond_11
    iget-object v2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 458
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 459
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 461
    :try_start_f
    iget-object v2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 462
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    new-array v2, v10, [Ljava/lang/Integer;

    .line 463
    iget v3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 465
    iget-boolean v2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v2, :cond_13

    .line 479
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_12

    .line 483
    :try_start_10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    :catch_6
    :cond_12
    return-object v0

    .line 468
    :cond_13
    :try_start_11
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "Fail to download sticker"

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to download sticker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_3

    :cond_14
    move-object p1, v0

    .line 479
    :goto_3
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_17

    .line 483
    :try_start_12
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v0, v4

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v0, v4

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_6

    :catch_8
    move-exception p1

    .line 473
    :goto_4
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "Fail to download sticker "

    .line 477
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to download sticker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 479
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_16

    .line 483
    :try_start_14
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    :catch_9
    :cond_16
    move-object p1, v1

    :catch_a
    :cond_17
    :goto_5
    return-object p1

    .line 479
    :goto_6
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 480
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 481
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_18

    .line 483
    :try_start_15
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 487
    :catch_b
    :cond_18
    throw p1

    :cond_19
    :goto_7
    return-object v0
.end method

.method public getProgress()F
    .locals 2

    .line 493
    iget v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    iget v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    invoke-direct {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->getProgress(II)F

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 357
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-object v0, v0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    invoke-static {p1}, Lcom/narvii/sticker/StickerCacheService;->access$300(Lcom/narvii/sticker/StickerCacheService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    invoke-static {v0}, Lcom/narvii/sticker/StickerCacheService;->access$300(Lcom/narvii/sticker/StickerCacheService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :goto_0
    invoke-direct {p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->notifyStatusChanged()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .line 502
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 503
    invoke-direct {p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->notifyStatusChanged()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 357
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
