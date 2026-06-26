.class Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;
.super Ljava/lang/Thread;
.source "GifLoader.java"


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

    .line 638
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    const-string p1, "gif-download"

    .line 639
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 785
    new-instance v1, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;-><init>(Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;Ljava/net/HttpURLConnection;)V

    .line 793
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public abortAndStop()V
    .locals 1

    const/4 v0, 0x1

    .line 798
    iput-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->stoped:Z

    .line 799
    invoke-virtual {p0}, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->abort()V

    .line 800
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 13

    .line 644
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->stoped:Z

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v1, v1, Lcom/narvii/util/drawables/gif/GifLoader;->queue2:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    monitor-enter v2

    .line 653
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->workerDownloads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 654
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 658
    :cond_0
    iget-boolean v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 661
    :cond_1
    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "gif download canceled in queue"

    .line 663
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_2
    iput-object v1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    const/4 v2, -0x1

    .line 673
    :try_start_2
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    .line 674
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 675
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

    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 680
    iput v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 683
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 684
    iget-object v8, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-nez v8, :cond_5

    long-to-int v8, v4

    .line 685
    iput v8, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 686
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 687
    iget-object v8, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->drawable:Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-nez v8, :cond_5

    .line 688
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

    .line 693
    :cond_5
    iget-object v8, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v8, v8, Lcom/narvii/util/drawables/gif/GifLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v9, Ljava/net/URL;

    iget-object v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 694
    :try_start_3
    iput-object v8, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 695
    iget-boolean v9, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v9, :cond_8

    .line 760
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 761
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v8, :cond_6

    .line 764
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 768
    :catch_1
    :cond_6
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 769
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 772
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v9, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v9

    .line 773
    :try_start_5
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    .line 774
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_7
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 777
    :goto_3
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 776
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_8
    const/4 v9, 0x2

    cmp-long v10, v4, v6

    if-lez v10, :cond_b

    :try_start_7
    const-string v6, "Range"

    .line 699
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x1a0

    if-ne v6, v7, :cond_9

    const-string v3, "gif download range not satisfiable (416)"

    .line 703
    invoke-static {v3}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 705
    :try_start_8
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 708
    :catch_2
    :try_start_9
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 709
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 710
    :try_start_a
    iput-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v4, v0

    move-object v8, v3

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v4, v0

    move-object v8, v3

    move-object v3, v4

    goto/16 :goto_7

    :catch_3
    move-object v4, v0

    move-object v8, v3

    move-object v3, v4

    goto/16 :goto_6

    :cond_9
    :try_start_b
    const-string v6, "Content-Range"

    .line 713
    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    const-string v6, ""

    :cond_a
    const-string v7, "bytes (\\d+)-(\\d+)/(\\d+)"

    .line 716
    invoke-static {v7, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 718
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 719
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 720
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x3

    .line 721
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v10, v7

    cmp-long v12, v10, v4

    if-nez v12, :cond_b

    .line 723
    iput v6, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    .line 724
    iput v7, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 725
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_4

    :cond_b
    move-object v4, v0

    .line 730
    :goto_4
    :try_start_c
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    const/4 v5, 0x0

    if-nez v4, :cond_c

    .line 733
    :try_start_d
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    iput v6, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->contentLength:I

    .line 734
    iput v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 735
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    :cond_c
    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 739
    :goto_5
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v2, :cond_e

    .line 740
    iget-boolean v10, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->stoped:Z

    if-nez v10, :cond_d

    iget-boolean v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->aborted:Z

    if-nez v10, :cond_d

    .line 743
    invoke-virtual {v4, v6, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 744
    iget v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    add-int/2addr v10, v7

    iput v10, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->downloadedBytes:I

    .line 745
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    goto :goto_5

    .line 741
    :cond_d
    new-instance v5, Ljava/io/IOException;

    const-string v6, "abort"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 747
    :cond_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 749
    :try_start_e
    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->writingFile:Ljava/io/File;

    iget-object v5, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 750
    iput v9, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I

    .line 751
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 752
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 754
    :try_start_f
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 760
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 761
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 768
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 769
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 772
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v2

    .line 773
    :try_start_10
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_f

    .line 774
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_f
    monitor-exit v2

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0

    :catchall_4
    move-exception v2

    move-object v4, v0

    goto :goto_7

    :catch_4
    move-object v4, v0

    goto :goto_6

    :catchall_5
    move-exception v2

    move-object v3, v0

    goto :goto_7

    :catch_5
    move-object v3, v0

    goto :goto_6

    :catchall_6
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    goto :goto_7

    :catch_6
    move-object v3, v0

    move-object v4, v3

    goto :goto_6

    :catchall_7
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    move-object v8, v4

    goto :goto_7

    :catch_7
    move-object v3, v0

    move-object v4, v3

    move-object v8, v4

    .line 757
    :catch_8
    :goto_6
    :try_start_11
    iput v2, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->status:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 760
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 761
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v8, :cond_10

    .line 764
    :try_start_12
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 768
    :catch_9
    :cond_10
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 769
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 772
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v2, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v2

    .line 773
    :try_start_13
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_11

    .line 774
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_11
    monitor-exit v2

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v0

    :catchall_9
    move-exception v2

    .line 760
    :goto_7
    invoke-static {v4}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 761
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    if-eqz v8, :cond_12

    .line 764
    :try_start_14
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 768
    :catch_a
    :cond_12
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->connection:Ljava/net/HttpURLConnection;

    .line 769
    iput-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->session:Lcom/narvii/util/drawables/gif/GifLoader$Session;

    .line 772
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v0, v0, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 773
    :try_start_15
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_13

    .line 774
    iget-object v3, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->this$0:Lcom/narvii/util/drawables/gif/GifLoader;

    iget-object v3, v3, Lcom/narvii/util/drawables/gif/GifLoader;->map:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/narvii/util/drawables/gif/GifLoader$Session;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_13
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 777
    invoke-virtual {v1}, Lcom/narvii/util/drawables/gif/GifLoader$Session;->update()V

    .line 778
    throw v2

    :catchall_a
    move-exception v1

    .line 776
    :try_start_16
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    throw v1

    :cond_14
    return-void
.end method
