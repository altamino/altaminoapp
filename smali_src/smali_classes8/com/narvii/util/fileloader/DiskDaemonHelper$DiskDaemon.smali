.class Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;
.super Ljava/lang/Thread;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->b(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 14
    .line 15
    iput p2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    .line 16
    .line 17
    iput p3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->maxSize:I

    .line 18
    .line 19
    iput-wide p4, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->minTime:J

    .line 20
    .line 21
    iput-object p6, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->dir:Ljava/io/File;

    .line 22
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    return-void
.end method

.method public run()V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 1
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 2
    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 3
    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    iget v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->dir:Ljava/io/File;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_4

    .line 8
    array-length v8, v1

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v1, v9

    iget-boolean v11, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_3

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 9
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    monitor-enter v11

    :try_start_3
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 10
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 11
    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 12
    :cond_2
    :goto_3
    monitor-exit v11

    return-void

    :goto_4
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 13
    :cond_3
    :try_start_4
    new-instance v11, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;

    invoke-direct {v11, v10}, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;-><init>(Ljava/io/File;)V

    iget-wide v12, v11, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->size:J

    add-long/2addr v6, v12

    .line 14
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catchall_2
    move-exception v1

    goto/16 :goto_1a

    :catch_0
    move-exception v1

    goto/16 :goto_17

    :cond_4
    iget-boolean v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 15
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 16
    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_5

    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 17
    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 18
    :cond_5
    :goto_5
    monitor-exit v1

    return-void

    :goto_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 19
    :cond_6
    :try_start_6
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 20
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v2

    :goto_7
    iget v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->maxSize:I

    if-lez v9, :cond_b

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v9, :cond_8

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 22
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    monitor-enter v9

    :try_start_7
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 23
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_7

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 24
    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_9

    .line 25
    :cond_7
    :goto_8
    monitor-exit v9

    return-void

    :goto_9
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 26
    :cond_8
    :try_start_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;

    iget v10, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->maxSize:I

    int-to-long v10, v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_9

    goto :goto_a

    :cond_9
    iget-object v10, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 27
    invoke-static {v10}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    iget-object v11, v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_7

    .line 28
    :cond_a
    iget-object v10, v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 30
    iget-wide v9, v9, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->size:J

    sub-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 31
    :cond_b
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;

    iget-boolean v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v9, :cond_e

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 33
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    monitor-enter v9

    :try_start_9
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 34
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_d

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 35
    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_c

    :catchall_5
    move-exception v0

    goto :goto_d

    .line 36
    :cond_d
    :goto_c
    monitor-exit v9

    return-void

    :goto_d
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :cond_e
    :try_start_a
    iget-object v9, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 37
    invoke-static {v9}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    iget-object v10, v5, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_b

    .line 38
    :cond_f
    iget-wide v9, v5, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->time:J

    cmp-long v9, v9, v6

    if-lez v9, :cond_10

    iget-object v9, v5, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".w"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 39
    iget-object v5, v5, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_b

    .line 40
    :cond_10
    iget-wide v9, v5, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->time:J

    iget-wide v11, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->minTime:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    .line 41
    iget-object v5, v5, Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 42
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v5}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->b(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cache clean "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " files in "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    :cond_12
    iget v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1a

    :goto_e
    move v1, v2

    :goto_f
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1a

    iget-boolean v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v3, :cond_14

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 45
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_b
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 46
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_13

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 47
    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_10

    :catchall_6
    move-exception v0

    goto :goto_11

    .line 48
    :cond_13
    :goto_10
    monitor-exit v3

    return-void

    :goto_11
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    :cond_14
    :try_start_c
    iget v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->type:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_15

    const-wide/16 v3, 0x1388

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_15
    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 50
    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    .line 52
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-boolean v5, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort:Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v5, :cond_17

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 53
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_d
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 54
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v1

    if-ne v1, p0, :cond_16

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 55
    invoke-static {v1, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_13

    :catchall_7
    move-exception v0

    goto :goto_14

    .line 56
    :cond_16
    :goto_13
    monitor-exit v5

    return-void

    :goto_14
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0

    .line 57
    :cond_17
    :try_start_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/io/File;->setLastModified(J)Z

    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_18
    if-nez v4, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    .line 60
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->b(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

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
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_e

    :cond_1a
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 61
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 62
    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_1b

    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 63
    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_15

    :catchall_8
    move-exception v0

    goto :goto_16

    .line 64
    :cond_1b
    :goto_15
    monitor-exit v1

    goto/16 :goto_1e

    :goto_16
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0

    .line 65
    :goto_17
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->b(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;

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
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 66
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 67
    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_1c

    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 68
    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_18

    :catchall_9
    move-exception v0

    goto :goto_19

    .line 69
    :cond_1c
    :goto_18
    monitor-exit v1

    goto :goto_1e

    :goto_19
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    throw v0

    :goto_1a
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 70
    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_12
    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 71
    invoke-static {v3}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    iget-object v3, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 72
    invoke-static {v3, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_1b

    :catchall_a
    move-exception v0

    goto :goto_1c

    .line 73
    :cond_1d
    :goto_1b
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 74
    throw v1

    .line 75
    :goto_1c
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    throw v0

    :catch_1
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 76
    invoke-static {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 77
    invoke-static {v2}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    move-result-object v2

    if-ne v2, p0, :cond_1e

    iget-object v2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->this$0:Lcom/narvii/util/fileloader/DiskDaemonHelper;

    .line 78
    invoke-static {v2, v0}, Lcom/narvii/util/fileloader/DiskDaemonHelper;->d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V

    goto :goto_1d

    :catchall_b
    move-exception v0

    goto :goto_1f

    .line 79
    :cond_1e
    :goto_1d
    monitor-exit v1

    :goto_1e
    return-void

    :goto_1f
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    throw v0
.end method
