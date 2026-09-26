.class Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/drawables/gif/GifLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerDownload"
.end annotation


# instance fields
.field connection:Ljava/net/HttpURLConnection;

.field session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

.field stoped:Z

.field final synthetic this$0:Lcom/narvii/util/drawables/gif/GifLoader;


# direct methods
.method public constructor <init>(Lcom/narvii/util/drawables/gif/GifLoader;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 3
    .line 4
    const-string p1, "gif-download"

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, v0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;-><init>(Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;Ljava/net/HttpURLConnection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 13
    :cond_0
    return-void
.end method

.method public abortAndStop()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->stoped:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->abort()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 10
    return-void
.end method

.method public run()V
    .locals 12

    :goto_0
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->stoped:Z

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 1
    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 2
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 3
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5
    :cond_0
    iget-boolean v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "gif download canceled in queue"

    .line 7
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    const/4 v2, -0x1

    :try_start_2
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 8
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 9
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gif cache dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v5, v5, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    move-object v8, v4

    goto/16 :goto_f

    :catch_1
    move-object v3, v0

    move-object v4, v3

    move-object v8, v4

    goto/16 :goto_c

    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 11
    iput v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 12
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 13
    iget-object v8, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-nez v8, :cond_5

    long-to-int v8, v4

    .line 14
    iput v8, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 15
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 16
    iget-object v8, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-nez v8, :cond_5

    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gif download not resumed (len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    move-wide v4, v6

    :cond_5
    iget-object v8, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 18
    iget-object v8, v8, Lcom/narvii/util/drawables/gif/GifLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v9, Ljava/net/URL;

    iget-object v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v8, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 19
    iget-boolean v9, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v9, :cond_8

    .line 20
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 21
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v8, :cond_6

    .line 22
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 23
    iget-object v9, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_5
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 24
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 25
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 26
    :cond_7
    :goto_3
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 27
    :goto_4
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    goto/16 :goto_0

    .line 28
    :goto_5
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_8
    cmp-long v6, v4, v6

    const/4 v7, 0x2

    if-lez v6, :cond_9

    :try_start_7
    const-string v6, "Range"

    .line 29
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v9, 0x1a0

    if-ne v6, v9, :cond_a

    const-string v3, "gif download range not satisfiable (416)"

    .line 31
    invoke-static {v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 32
    :try_start_8
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    goto/16 :goto_f

    :catch_3
    :goto_6
    :try_start_9
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 33
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8

    iput-object v8, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    :cond_9
    move-object v4, v0

    goto :goto_7

    :catch_4
    move-object v3, v0

    move-object v4, v3

    goto/16 :goto_c

    :cond_a
    const-string v6, "Content-Range"

    .line 34
    invoke-virtual {v8, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    const-string v6, ""

    :cond_b
    const-string v9, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 35
    invoke-static {v9, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 36
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 37
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 38
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    .line 39
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v10, v9

    cmp-long v4, v10, v4

    if-nez v4, :cond_9

    .line 40
    iput v6, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    .line 41
    iput v9, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 42
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 43
    :goto_7
    :try_start_a
    invoke-static {v8}, Lcom/narvii/volley/util/HurlConnectionHelper;->getInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    const/4 v5, 0x0

    if-nez v4, :cond_c

    .line 44
    :try_start_b
    invoke-virtual {v8}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    iput v6, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    .line 45
    iput v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 46
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    goto :goto_8

    :catchall_4
    move-exception v2

    goto/16 :goto_f

    :cond_c
    :goto_8
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 47
    :goto_9
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eq v9, v2, :cond_e

    iget-boolean v10, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->stoped:Z

    if-nez v10, :cond_d

    .line 48
    iget-boolean v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-nez v10, :cond_d

    .line 49
    invoke-virtual {v4, v6, v5, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    iget v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 51
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    goto :goto_9

    .line 52
    :cond_d
    new-instance v5, Ljava/io/IOException;

    const-string v6, "abort"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    :cond_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 54
    :try_start_c
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    iget-object v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 55
    iput v7, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 56
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 57
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 58
    :try_start_d
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 59
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 60
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 61
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_e
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 62
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 63
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_b

    .line 64
    :cond_f
    :goto_a
    monitor-exit v2

    goto/16 :goto_4

    :goto_b
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :catchall_6
    move-exception v2

    move-object v4, v0

    goto :goto_f

    :catch_5
    move-object v4, v0

    goto :goto_c

    :catchall_7
    move-exception v2

    move-object v3, v0

    goto :goto_f

    :catch_6
    move-object v3, v0

    .line 65
    :catch_7
    :goto_c
    :try_start_f
    iput v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 66
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 67
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v8, :cond_10

    .line 68
    :try_start_10
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    :catch_8
    :cond_10
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 69
    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_11
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 70
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 71
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :catchall_8
    move-exception v0

    goto :goto_e

    .line 72
    :cond_11
    :goto_d
    monitor-exit v2

    goto/16 :goto_4

    :goto_e
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v0

    .line 73
    :goto_f
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 74
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v8, :cond_12

    .line 75
    :try_start_12
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    :catch_9
    :cond_12
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 76
    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_13
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 77
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_13

    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 78
    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :catchall_9
    move-exception v1

    goto :goto_11

    .line 79
    :cond_13
    :goto_10
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 80
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 81
    throw v2

    .line 82
    :goto_11
    :try_start_14
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v1

    :cond_14
    return-void
.end method
