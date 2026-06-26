.class public Lcom/narvii/util/fileloader/DiskDaemonHelper;
.super Ljava/lang/Object;
.source "DiskDaemonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fileloader/DiskDaemonHelper$FileDesc;,
        Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    iput-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->dir:Ljava/io/File;

    .line 28
    iput-object p2, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->taskName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->taskName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/util/fileloader/DiskDaemonHelper;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    return-object p0
.end method

.method static synthetic access$202(Lcom/narvii/util/fileloader/DiskDaemonHelper;Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;)Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public touch(Ljava/io/File;)V
    .locals 8

    .line 35
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->dir:Ljava/io/File;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;-><init>(Lcom/narvii/util/fileloader/DiskDaemonHelper;IIJLjava/io/File;)V

    iput-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 39
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trimAndFlush(IJ)V
    .locals 8

    .line 45
    iget-object v0, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->touchFiles:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    invoke-virtual {v1}, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;->abort()V

    const/4 v1, 0x0

    .line 48
    iput-object v1, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->diskDaemon:Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    .line 50
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    new-instance v0, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;

    const/4 v3, 0x5

    iget-object v7, p0, Lcom/narvii/util/fileloader/DiskDaemonHelper;->dir:Ljava/io/File;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/narvii/util/fileloader/DiskDaemonHelper$DiskDaemon;-><init>(Lcom/narvii/util/fileloader/DiskDaemonHelper;IIJLjava/io/File;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
