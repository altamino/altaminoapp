.class Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;
.super Ljava/lang/Thread;
.source "LinkPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/blog/post/LinkPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadTask"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field fileD:Ljava/io/File;

.field saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;)V
    .locals 0

    .line 413
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x1

    .line 420
    invoke-static {v0}, Lcom/narvii/util/Utils;->createTmpFile(Z)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 422
    :try_start_0
    new-instance v4, Lcom/narvii/util/http/ProxyStack;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 423
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ProxyStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 424
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 425
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x1000

    new-array v6, v6, [B

    .line 428
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 429
    invoke-virtual {v5, v6, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 432
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 433
    iget-object v4, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->file:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    iget-object v4, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->fileD:Ljava/io/File;

    iget-object v5, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 442
    sget-object v1, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    if-ne v1, p0, :cond_2

    .line 443
    sput-object v2, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    if-eqz v1, :cond_4

    .line 447
    new-instance v1, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;Z)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 438
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to download background image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 442
    sget-object v0, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    if-ne v0, p0, :cond_3

    .line 443
    sput-object v2, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    if-eqz v0, :cond_4

    .line 447
    new-instance v0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;

    invoke-direct {v0, p0, v3}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;Z)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void

    .line 441
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 442
    sget-object v1, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    if-ne v1, p0, :cond_5

    .line 443
    sput-object v2, Lcom/narvii/blog/post/LinkPostActivity;->runningTask:Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;

    .line 445
    :cond_5
    iget-object v1, p0, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;->saveImageCallBack:Lcom/narvii/blog/post/LinkPostActivity$SaveImageCallBack;

    if-eqz v1, :cond_6

    .line 447
    new-instance v1, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;

    invoke-direct {v1, p0, v3}, Lcom/narvii/blog/post/LinkPostActivity$DownloadTask$1;-><init>(Lcom/narvii/blog/post/LinkPostActivity$DownloadTask;Z)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 458
    :cond_6
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
