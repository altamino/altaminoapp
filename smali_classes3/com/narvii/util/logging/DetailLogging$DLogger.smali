.class Lcom/narvii/util/logging/DetailLogging$DLogger;
.super Ljava/lang/Thread;
.source "DetailLogging.java"

# interfaces
.implements Lcom/narvii/util/log/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/logging/DetailLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DLogger"
.end annotation


# instance fields
.field closed:Z

.field final dir:Ljava/io/File;

.field fos:Ljava/io/FileOutputStream;

.field final logEntryCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/logging/DetailLogging$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field final logfile:Ljava/io/File;

.field final queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/narvii/util/logging/DetailLogging$LogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 254
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 249
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 250
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    .line 255
    iput-object p1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    .line 256
    new-instance v0, Ljava/io/File;

    const-string v1, "current.log"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public declared-synchronized archive()V
    .locals 5

    monitor-enter p0

    .line 269
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 276
    :try_start_2
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 277
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 281
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 281
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->closed:Z

    .line 262
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 263
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;

    invoke-direct {v0}, Lcom/narvii/util/logging/DetailLogging$LogEntry;-><init>()V

    .line 294
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->time:J

    .line 295
    iput p1, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->level:I

    .line 296
    iput-object p2, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->tag:Ljava/lang/String;

    .line 297
    iput-object p3, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->message:Ljava/lang/String;

    .line 298
    iput-object p4, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    .line 299
    iget-object p1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 8

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 306
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 307
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->closed:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 309
    :try_start_0
    iget-object v3, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/logging/DetailLogging$LogEntry;

    .line 310
    invoke-virtual {v3, v0, v1, v2}, Lcom/narvii/util/logging/DetailLogging$LogEntry;->format(Ljava/lang/StringBuilder;Ljava/util/Date;Ljava/text/DateFormat;)V

    const/16 v5, 0xa

    .line 311
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    if-nez v5, :cond_1

    .line 314
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 316
    :cond_1
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 317
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    .line 318
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 319
    invoke-virtual {v3}, Lcom/narvii/util/logging/DetailLogging$LogEntry;->reset()V

    .line 320
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 321
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 317
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    nop

    goto :goto_0

    .line 326
    :catch_1
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 327
    :try_start_6
    iget-object v3, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 330
    :cond_2
    iput-object v4, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 331
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 338
    :cond_3
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 339
    :try_start_9
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 342
    :cond_4
    iput-object v4, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 343
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    :goto_1
    return-void
.end method
