.class public Lcom/narvii/util/fileloader/DiskDaemonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;,
        Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;
    }
.end annotation


# instance fields
.field private dir:Ljava/io/File;

.field private diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

.field private taskName:Ljava/lang/String;

.field private final touchFiles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->dir:Ljava/io/File;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->taskName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->taskName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    return-void
.end method

.method public touch(Ljava/io/File;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    monitor-enter p1

    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    iget-object v7, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->dir:Ljava/io/File;

    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p0

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;-><init>(Lcom/narvii/util/fileloader/DiskDaemonHelper;IIJLjava/io/File;)V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    monitor-exit p1

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v0
.end method

.method public trimAndFlush(IJ)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort()V

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 20
    const/4 v3, 0x5

    .line 21
    .line 22
    iget-object v7, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->dir:Ljava/io/File;

    .line 23
    move-object v1, v0

    .line 24
    move-object v2, p0

    .line 25
    move v4, p1

    .line 26
    move-wide v5, p2

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;-><init>(Lcom/narvii/util/fileloader/DiskDaemonHelper;IIJLjava/io/File;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method
