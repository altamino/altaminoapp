.class Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;
.super Ljava/lang/Thread;
.source "DiskDaemonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/fileloader/DiskDaemonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiskDaemon"
.end annotation


# static fields
.field static final CLEAN:I = 0x1

.field static final FLUSH_LATER:I = 0x2

.field static final FLUSH_NOW:I = 0x4


# instance fields
.field abort:Z

.field final dir:Ljava/io/File;

.field final maxSize:I

.field final minTime:J

.field final synthetic this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

.field final type:I


# direct methods
.method public constructor <init>(Lcom/narvii/util/fileloader/DiskDaemonHelper;IIJLjava/io/File;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 69
    invoke-static {p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$000(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 71
    iput p2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    .line 72
    iput p3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->maxSize:I

    .line 73
    iput-wide p4, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->minTime:J

    .line 74
    iput-object p6, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->dir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z

    .line 79
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 14

    const/4 v0, 0x0

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_1
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 87
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 91
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-wide/16 v5, 0x0

    .line 93
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    .line 95
    array-length v8, v1

    move-wide v9, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v6, v1, v5

    .line 96
    iget-boolean v11, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v11, :cond_3

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    monitor-enter v11

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 188
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_2
    monitor-exit v11

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 98
    :cond_3
    :try_start_4
    new-instance v11, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;

    invoke-direct {v11, v6}, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;-><init>(Ljava/io/File;)V

    .line 99
    iget-wide v12, v11, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->size:J

    add-long/2addr v9, v12

    .line 100
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-wide v5, v9

    .line 103
    :cond_5
    iget-boolean v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-eqz v1, :cond_7

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_5
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_6

    .line 188
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_6
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 105
    :cond_7
    :try_start_6
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 108
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    .line 109
    :goto_1
    iget v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->maxSize:I

    if-lez v9, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 110
    iget-boolean v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    if-eqz v9, :cond_9

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    monitor-enter v9

    .line 187
    :try_start_7
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_8

    .line 188
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_8
    monitor-exit v9

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 112
    :cond_9
    :try_start_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;

    .line 113
    iget v10, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->maxSize:I

    int-to-long v10, v10

    cmp-long v12, v5, v10

    if-gez v12, :cond_a

    goto :goto_2

    .line 115
    :cond_a
    iget-object v10, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v10}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    iget-object v11, v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_1

    .line 117
    :cond_b
    iget-object v10, v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 119
    iget-wide v9, v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->size:J

    sub-long/2addr v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 123
    :cond_c
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 124
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;

    .line 125
    iget-boolean v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v9, :cond_f

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    monitor-enter v9

    .line 187
    :try_start_9
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_e

    .line 188
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_e
    monitor-exit v9

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 127
    :cond_f
    :try_start_a
    iget-object v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v9}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    iget-object v10, v7, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_3

    .line 129
    :cond_10
    iget-wide v9, v7, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->time:J

    cmp-long v11, v9, v5

    if-lez v11, :cond_11

    iget-object v9, v7, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".w"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 131
    iget-object v7, v7, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v7, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_3

    .line 132
    :cond_11
    iget-wide v9, v7, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->time:J

    iget-wide v11, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->minTime:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_d

    .line 134
    iget-object v7, v7, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 140
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v5}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$000(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cache clean "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " files in "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 148
    :cond_13
    iget v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1b

    :goto_4
    const/4 v1, 0x0

    :goto_5
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1b

    .line 151
    iget-boolean v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v3, :cond_15

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    monitor-enter v3

    .line 187
    :try_start_b
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_14

    .line 188
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_14
    monitor-exit v3

    return-void

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0

    .line 154
    :cond_15
    :try_start_c
    iget v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_16

    const-wide/16 v3, 0x1388

    .line 156
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 160
    :cond_16
    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    .line 162
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 163
    iget-boolean v5, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v5, :cond_18

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    monitor-enter v5

    .line 187
    :try_start_d
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_17

    .line 188
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_17
    monitor-exit v5

    return-void

    :catchall_6
    move-exception v0

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    .line 165
    :cond_18
    :try_start_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setLastModified(J)Z

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_19
    if-nez v4, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 175
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$000(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " touch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " files"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto/16 :goto_4

    .line 186
    :cond_1b
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_f
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_1c

    .line 188
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_1c
    monitor-exit v1

    goto :goto_8

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v0

    :catchall_8
    move-exception v1

    goto :goto_7

    :catch_0
    move-exception v1

    .line 184
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$000(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disk daemon failure, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 186
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_11
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    .line 188
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_1d
    monitor-exit v1

    goto :goto_8

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v0

    .line 186
    :goto_7
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    monitor-enter v2

    .line 187
    :try_start_12
    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v3

    if-ne v3, p0, :cond_1e

    .line 188
    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v3, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_1e
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 191
    throw v1

    :catchall_a
    move-exception v0

    .line 190
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    throw v0

    .line 186
    :catch_1
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 187
    :try_start_14
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_1f

    .line 188
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 190
    :cond_1f
    monitor-exit v1

    :goto_8
    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
