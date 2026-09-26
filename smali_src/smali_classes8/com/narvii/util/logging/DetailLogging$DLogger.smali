.class Lcom/narvii/util/logging/DetailLogging$DLogger;
.super Ljava/lang/Thread;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    .line 22
    .line 23
    new-instance v0, Ljava/io/File;

    .line 24
    .line 25
    const-string v1, "current.log"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized archive()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :try_start_2
    iput-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v3, ".log"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 61
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    monitor-exit p0

    .line 68
    throw v0
.end method

.method public dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->closed:Z

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    return-void

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/narvii/util/logging/DetailLogging$LogEntry;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v1

    .line 24
    .line 25
    iput-wide v1, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->time:J

    .line 26
    .line 27
    iput p1, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->level:I

    .line 28
    .line 29
    iput-object p2, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->tag:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p3, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->message:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p4, v0, Lcom/narvii/util/logging/DetailLogging$LogEntry;->error:Ljava/lang/Throwable;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x1000

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    new-instance v1, Ljava/util/Date;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 13
    .line 14
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 15
    .line 16
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->closed:Z

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Lcom/narvii/util/logging/DetailLogging$LogEntry;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0, v1, v2}, Lcom/narvii/util/logging/DetailLogging$LogEntry;->format(Ljava/lang/StringBuilder;Ljava/util/Date;Ljava/text/DateFormat;)V

    .line 36
    .line 37
    const/16 v5, 0xa

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    :try_start_1
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 44
    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    new-instance v5, Ljava/io/FileOutputStream;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logfile:Ljava/io/File;

    .line 50
    const/4 v7, 0x1

    .line 51
    .line 52
    .line 53
    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 54
    .line 55
    iput-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v3

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    sget-object v7, Lcom/narvii/util/Utils;->UTF_8:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 70
    move-result-object v6

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 74
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    const/4 v5, 0x0

    .line 76
    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/narvii/util/logging/DetailLogging$LogEntry;->reset()V

    .line 82
    .line 83
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 87
    move-result v5

    .line 88
    .line 89
    const/16 v6, 0x8

    .line 90
    .line 91
    if-ge v5, v6, :cond_0

    .line 92
    .line 93
    iget-object v5, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->logEntryCache:Ljava/util/LinkedList;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    goto :goto_0

    .line 98
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    :catch_1
    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 101
    .line 102
    :try_start_6
    iget-object v3, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 103
    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 108
    goto :goto_3

    .line 109
    :catchall_1
    move-exception v3

    .line 110
    goto :goto_4

    .line 111
    .line 112
    :cond_2
    :goto_3
    iput-object v4, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 113
    monitor-exit p0

    .line 114
    goto :goto_0

    .line 115
    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 117
    :cond_3
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 118
    .line 119
    :try_start_9
    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 125
    goto :goto_5

    .line 126
    :catchall_2
    move-exception v0

    .line 127
    goto :goto_6

    .line 128
    .line 129
    :cond_4
    :goto_5
    iput-object v4, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->fos:Ljava/io/FileOutputStream;

    .line 130
    monitor-exit p0

    .line 131
    goto :goto_7

    .line 132
    :goto_6
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 133
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 134
    :catch_2
    :goto_7
    return-void
.end method
