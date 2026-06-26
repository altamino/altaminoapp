.class Lcom/narvii/video/MediaPreloadService$PreloadTask;
.super Ljava/lang/Object;
.source "MediaPreloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/MediaPreloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadTask"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field filew:Ljava/io/File;

.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/video/MediaPreloadService;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 332
    iput-object p1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    .line 334
    iput-object p3, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->url:Ljava/lang/String;

    .line 335
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 336
    new-instance p3, Ljava/io/File;

    iget-object v0, p1, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    .line 337
    new-instance p3, Ljava/io/File;

    iget-object p1, p1, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    invoke-direct {p3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "ms: "

    const-string v1, "mediapreload"

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 345
    :try_start_0
    iget-object v6, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    invoke-static {v0}, Lcom/narvii/video/MediaPreloadService;->access$000(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    iget v1, v0, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v2, v0, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    return-void

    .line 348
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    iget-object v6, v6, Lcom/narvii/video/MediaPreloadService;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v7, Ljava/net/URL;

    iget-object v10, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->url:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v6

    const/16 v7, 0x2710

    .line 349
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 350
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const v7, 0xc7c00

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x5

    div-long/2addr v10, v12

    const-wide/16 v12, 0x800

    rem-long/2addr v10, v12

    long-to-int v11, v10

    add-int/2addr v11, v7

    const-string v7, "Range"

    .line 353
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes=0-"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v11, -0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v10, 0xc8

    if-ne v7, v10, :cond_1

    .line 356
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v10, 0xce

    if-ne v7, v10, :cond_5

    const-string v7, "Content-Range"

    .line 359
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x2f

    .line 360
    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 364
    :goto_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 365
    iget-object v12, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v14, v12, v8

    if-lez v14, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0x3c0

    new-array v8, v8, [B

    .line 370
    iget-object v9, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    iget-object v9, v9, Lcom/narvii/video/MediaPreloadService;->dir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 371
    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    :try_start_2
    iget-object v12, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {v12, v9, v7}, Lcom/narvii/video/MediaPreloadService;->writePreloadHeader(Ljava/io/OutputStream;I)V

    const/4 v7, 0x0

    .line 373
    :cond_3
    array-length v12, v8

    sub-int v13, v11, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v10, v8, v5, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 374
    invoke-virtual {v9, v8, v5, v12}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v7, v12

    if-lt v7, v11, :cond_3

    .line 380
    :cond_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    :try_start_3
    iget-object v7, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    iget-object v8, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->file:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 383
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 384
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "media preload finished in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v9

    goto :goto_4

    :catch_0
    move-exception v6

    move-object v4, v9

    goto :goto_2

    .line 362
    :cond_5
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v6

    .line 387
    :goto_2
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "media preload failed in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_6

    .line 391
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 394
    :catch_2
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 396
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    invoke-static {v0}, Lcom/narvii/video/MediaPreloadService;->access$000(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    iget v1, v0, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v2, v0, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    return-void

    :goto_4
    if-eqz v4, :cond_7

    .line 391
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 394
    :catch_3
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->filew:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 396
    :cond_7
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    invoke-static {v1}, Lcom/narvii/video/MediaPreloadService;->access$000(Lcom/narvii/video/MediaPreloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    iget-object v1, p0, Lcom/narvii/video/MediaPreloadService$PreloadTask;->this$0:Lcom/narvii/video/MediaPreloadService;

    iget v2, v1, Lcom/narvii/video/MediaPreloadService;->keep:I

    iget-wide v3, v1, Lcom/narvii/video/MediaPreloadService;->maxAge:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/narvii/video/MediaPreloadService;->clean(IJZ)V

    .line 398
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
