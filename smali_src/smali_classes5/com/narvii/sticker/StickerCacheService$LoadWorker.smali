.class Lcom/narvii/sticker/StickerCacheService$LoadWorker;
.super Landroid/os/AsyncTask;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, p3}, Lcom/narvii/sticker/StickerCacheService;->c(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private check()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-ne v0, p0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private getProgress(II)F
    .locals 1

    .line 1
    if-gtz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    :goto_0
    return p1
.end method

.method private notifyStatusChanged()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/sticker/StickerCacheService$DownloadListener;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2, v3}, Lcom/narvii/sticker/StickerCacheService$DownloadListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget-object v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v4, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 2
    invoke-static {v4, v0, v3}, Lcom/narvii/sticker/StickerCacheService;->b(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 3
    iget-boolean v3, v3, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 4
    iget-object v3, v3, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    monitor-enter v3

    :catch_0
    :goto_0
    :try_start_0
    iget-object v6, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 5
    iget-boolean v6, v6, Lcom/narvii/sticker/StickerCacheService;->migrating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v6, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 6
    iget-object v6, v6, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-eqz v6, :cond_2

    .line 8
    monitor-exit v3

    return-object v2

    .line 9
    :cond_2
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-boolean v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z

    if-eqz v3, :cond_4

    return-object v2

    :cond_4
    iput-object v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    iput-object v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    iget-object v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 10
    iget-object v3, v3, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    iget-object v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    iget-object v6, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->collectionId:Ljava/lang/String;

    .line 11
    invoke-static {v3, v6}, Lcom/narvii/sticker/StickerCacheService;->d(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 12
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    :try_start_3
    new-instance v6, Ljava/net/URL;

    iget-object v7, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 14
    invoke-virtual {v7}, Lcom/narvii/sticker/StickerCacheService;->getStack()Lcom/narvii/util/http/ProxyStack;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v6

    iput-object v6, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->check()Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v6, :cond_6

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 16
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 17
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_5

    .line 18
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_5
    return-object v2

    :cond_6
    :try_start_5
    iget-object v6, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 19
    invoke-static {v6}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->check()Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v7, :cond_8

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 21
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 22
    invoke-static {v6}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 23
    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_7
    return-object v2

    :cond_8
    :try_start_8
    iget-boolean v7, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v7, :cond_a

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 24
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 25
    invoke-static {v6}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 26
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_9
    return-object v2

    :cond_a
    :try_start_a
    iget-object v7, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    const/4 v8, 0x0

    if-nez v7, :cond_b

    iget-object v7, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 27
    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    iput v7, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    iput v8, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    .line 28
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v2, v6

    goto/16 :goto_6

    :cond_b
    :goto_3
    const/16 v7, 0x1000

    new-array v7, v7, [B

    .line 29
    :cond_c
    :goto_4
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eq v9, v10, :cond_11

    iget-object v10, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v10, :cond_e

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 30
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 31
    invoke-static {v6}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_d

    .line 32
    :try_start_b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    :cond_d
    return-object v2

    :cond_e
    :try_start_c
    iget-boolean v10, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v10, :cond_10

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 33
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 34
    invoke-static {v6}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    .line 35
    :try_start_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :catch_6
    :cond_f
    return-object v2

    .line 36
    :cond_10
    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-object v10, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 37
    invoke-virtual {v10, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    iget v10, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    const-wide/16 v15, 0x14

    add-long/2addr v15, v4

    cmp-long v9, v13, v15

    if-lez v9, :cond_c

    new-array v4, v12, [Ljava/lang/Integer;

    .line 38
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    move-wide v4, v13

    goto :goto_4

    :cond_11
    iget-object v4, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 39
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    iput-object v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 40
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    iget-object v4, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    .line 41
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    new-array v4, v12, [Ljava/lang/Integer;

    iget v5, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget v5, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    iget-boolean v4, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v4, :cond_13

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 43
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 44
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_12

    .line 45
    :try_start_10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :catch_7
    :cond_12
    return-object v2

    .line 46
    :cond_13
    :try_start_11
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "Fail to download sticker"

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to download sticker"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_6

    :cond_14
    move-object v0, v2

    :goto_5
    iget-object v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 48
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 49
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_17

    .line 50
    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_7

    .line 51
    :goto_6
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    const-string v3, "Fail to download sticker "

    .line 52
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to download sticker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 53
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 54
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v0, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_16

    .line 55
    :try_start_14
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    :catch_9
    :cond_16
    move-object v0, v3

    :catch_a
    :cond_17
    :goto_7
    return-object v0

    :goto_8
    iget-object v3, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->os:Ljava/io/OutputStream;

    .line 56
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 57
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iget-object v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->conn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_18

    .line 58
    :try_start_15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 59
    :catch_b
    :cond_18
    throw v0

    :cond_19
    :goto_9
    return-object v2
.end method

.method public getProgress()F
    .locals 2

    iget v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->current:I

    iget v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->total:I

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->getProgress(II)F

    move-result v0

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 2
    iget-object v0, v0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 3
    invoke-static {p1}, Lcom/narvii/sticker/StickerCacheService;->a(Lcom/narvii/sticker/StickerCacheService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 4
    invoke-static {v0}, Lcom/narvii/sticker/StickerCacheService;->a(Lcom/narvii/sticker/StickerCacheService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->notifyStatusChanged()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->notifyStatusChanged()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
