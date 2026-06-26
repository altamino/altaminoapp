.class final Lcom/tonyodev/fetch/FetchRunnable;
.super Ljava/lang/Object;
.source "FetchRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ACTION_DONE:Ljava/lang/String; = "com.tonyodev.fetch.action_done"

.field private static final EXTRA_ID:Ljava/lang/String; = "com.tonyodev.fetch.extra_id"


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final context:Landroid/content/Context;

.field private final databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

.field private downloadedBytes:J

.field private final filePath:Ljava/lang/String;

.field private fileSize:J

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;"
        }
    .end annotation
.end field

.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private final id:J

.field private input:Ljava/io/BufferedInputStream;

.field private volatile interrupted:Z

.field private final loggingEnabled:Z

.field private final onUpdateInterval:J

.field private output:Ljava/io/RandomAccessFile;

.field private progress:I

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;JZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tonyodev/fetch/request/Header;",
            ">;JZJ)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->interrupted:Z

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-nez p6, :cond_0

    .line 90
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/tonyodev/fetch/FetchRunnable;->headers:Ljava/util/List;

    goto :goto_0

    .line 92
    :cond_0
    iput-object p6, p0, Lcom/tonyodev/fetch/FetchRunnable;->headers:Ljava/util/List;

    .line 95
    :goto_0
    iput-wide p2, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    .line 96
    iput-object p4, p0, Lcom/tonyodev/fetch/FetchRunnable;->url:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    .line 98
    iput-wide p7, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    .line 100
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 101
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/tonyodev/fetch/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/tonyodev/fetch/DatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    .line 102
    iput-boolean p9, p0, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    .line 103
    iput-wide p10, p0, Lcom/tonyodev/fetch/FetchRunnable;->onUpdateInterval:J

    .line 104
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    invoke-virtual {p1, p9}, Lcom/tonyodev/fetch/DatabaseHelper;->setLoggingEnabled(Z)V

    return-void

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "FilePath cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Url cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private broadcastDone()V
    .locals 4

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tonyodev.fetch.action_done"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    iget-wide v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const-string v3, "com.tonyodev.fetch.extra_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private canRetry(I)Z
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tonyodev/fetch/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, -0x76

    if-eq p1, v0, :cond_1

    const/16 v0, -0x68

    if-eq p1, v0, :cond_1

    const/16 v0, -0x67

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method static getDoneFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.tonyodev.fetch.action_done"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getIdFromIntent(Landroid/content/Intent;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "com.tonyodev.fetch.extra_id"

    .line 349
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isInterrupted()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->interrupted:Z

    return v0
.end method

.method private isResponseOk(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xca

    if-eq p1, v0, :cond_0

    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private release()V
    .locals 2

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 304
    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 310
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 315
    iget-boolean v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 320
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void
.end method

.method private setContentLength()V
    .locals 4

    .line 244
    :try_start_0
    iget-wide v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    .line 246
    iput-wide v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    :goto_0
    return-void
.end method

.method private setHttpConnectionPrefs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/tonyodev/fetch/FetchRunnable;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 217
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 219
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 220
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 221
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 222
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 223
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 225
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tonyodev/fetch/request/Header;

    .line 226
    iget-object v2, p0, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Lcom/tonyodev/fetch/request/Header;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tonyodev/fetch/request/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeToFileAndPost()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 257
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 259
    :cond_0
    :goto_0
    iget-object v5, v0, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 260
    iget-object v7, v0, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v2, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 261
    iget-wide v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    .line 263
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 265
    iget-wide v9, v0, Lcom/tonyodev/fetch/FetchRunnable;->onUpdateInterval:J

    move-wide v5, v3

    invoke-static/range {v5 .. v10}, Lcom/tonyodev/fetch/Utils;->hasIntervalElapsed(JJJ)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    iget-wide v3, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v5, v0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v3, v4, v5, v6}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v3

    iput v3, v0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 269
    iget-object v4, v0, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-wide v5, v0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v7, 0x385

    iget v8, v0, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    iget-wide v9, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v11, v0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const/4 v13, -0x1

    invoke-static/range {v4 .. v13}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    .line 272
    iget-object v14, v0, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v3, v0, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v5, v0, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v7, v0, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    invoke-virtual/range {v14 .. v20}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 274
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized getId()J
    .locals 2

    monitor-enter p0

    .line 340
    :try_start_0
    iget-wide v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized interrupt()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 336
    :try_start_0
    iput-boolean v0, p0, Lcom/tonyodev/fetch/FetchRunnable;->interrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, -0x1

    .line 112
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->setHttpConnectionPrefs()V

    .line 113
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tonyodev/fetch/Utils;->createFileOrThrow(Ljava/lang/String;)V

    .line 115
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tonyodev/fetch/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    .line 116
    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v3, v4, v5, v6}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v0

    iput v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 117
    iget-object v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v4, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v6, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v8, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v3 .. v9}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 119
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, -0x76

    const-string v4, "DIE"

    if-nez v0, :cond_6

    .line 125
    :try_start_1
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 128
    invoke-direct {v1, v0}, Lcom/tonyodev/fetch/FetchRunnable;->isResponseOk(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 134
    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const-wide/16 v7, 0x1

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->setContentLength()V

    .line 136
    iget-object v10, v1, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v11, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v13, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    move-wide v15, v5

    invoke-virtual/range {v10 .. v16}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 137
    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v9, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v5, v6, v9, v10}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v5

    iput v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 140
    :cond_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, v1, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    const-string v9, "rw"

    invoke-direct {v5, v6, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    const/16 v5, 0xce

    if-ne v0, v5, :cond_1

    .line 142
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->output:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 147
    :goto_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->input:Ljava/io/BufferedInputStream;

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->writeToFileAndPost()V

    .line 150
    iget-object v9, v1, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v10, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v12, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v14, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v9 .. v15}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_9

    .line 157
    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_2

    .line 158
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/tonyodev/fetch/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    .line 159
    iget-object v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v6, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    iget-wide v8, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v10, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-virtual/range {v5 .. v11}, Lcom/tonyodev/fetch/DatabaseHelper;->updateFileBytes(JJJ)Z

    .line 160
    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v3, v4, v5, v6}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v0

    iput v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    goto :goto_1

    .line 162
    :cond_2
    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v5, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static {v3, v4, v5, v6}, Lcom/tonyodev/fetch/Utils;->getProgress(JJ)I

    move-result v0

    iput v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    .line 165
    :goto_1
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v5, 0x387

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/tonyodev/fetch/DatabaseHelper;->updateStatus(JII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    iget-object v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-wide v4, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v6, 0x387

    iget v7, v1, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    iget-wide v8, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v10, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const/4 v12, -0x1

    invoke-static/range {v3 .. v12}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    goto/16 :goto_2

    .line 153
    :cond_3
    new-instance v0, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;

    invoke-direct {v0, v4, v3}, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 131
    :cond_4
    new-instance v0, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;

    invoke-direct {v0, v4, v3}, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 176
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSRV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_6
    new-instance v0, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;

    invoke-direct {v0, v4, v3}, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 181
    :try_start_2
    iget-boolean v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->loggingEnabled:Z

    if-eqz v3, :cond_7

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tonyodev/fetch/ErrorUtils;->getCode(Ljava/lang/String;)I

    move-result v12

    .line 187
    invoke-direct {v1, v12}, Lcom/tonyodev/fetch/FetchRunnable;->canRetry(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 189
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v5, 0x384

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/tonyodev/fetch/DatabaseHelper;->updateStatus(JII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    iget-object v2, v1, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-wide v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v5, 0x384

    iget v6, v1, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    iget-wide v7, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v9, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    const/4 v11, -0x1

    invoke-static/range {v2 .. v11}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V

    goto :goto_2

    .line 199
    :cond_8
    iget-object v0, v1, Lcom/tonyodev/fetch/FetchRunnable;->databaseHelper:Lcom/tonyodev/fetch/DatabaseHelper;

    iget-wide v2, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v4, 0x388

    invoke-virtual {v0, v2, v3, v4, v12}, Lcom/tonyodev/fetch/DatabaseHelper;->updateStatus(JII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    iget-object v3, v1, Lcom/tonyodev/fetch/FetchRunnable;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-wide v4, v1, Lcom/tonyodev/fetch/FetchRunnable;->id:J

    const/16 v6, 0x388

    iget v7, v1, Lcom/tonyodev/fetch/FetchRunnable;->progress:I

    iget-wide v8, v1, Lcom/tonyodev/fetch/FetchRunnable;->downloadedBytes:J

    iget-wide v10, v1, Lcom/tonyodev/fetch/FetchRunnable;->fileSize:J

    invoke-static/range {v3 .. v12}, Lcom/tonyodev/fetch/Utils;->sendEventUpdate(Landroid/support/v4/content/LocalBroadcastManager;JIIJJI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    :cond_9
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->release()V

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->broadcastDone()V

    return-void

    .line 208
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->release()V

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/tonyodev/fetch/FetchRunnable;->broadcastDone()V

    throw v0
.end method
