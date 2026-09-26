.class Lcom/narvii/sticker/StickerCacheService$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sticker/StickerCacheService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sticker/StickerCacheService;


# direct methods
.method constructor <init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    :try_start_1
    iget-object v4, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 13
    .line 14
    iget-object v5, v4, Lcom/narvii/sticker/StickerCacheService;->legacyCacheDir:Ljava/io/File;

    .line 15
    .line 16
    iget-object v4, v4, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    .line 17
    .line 18
    .line 19
    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->moveFolder(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    :try_start_2
    iget-object v4, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 22
    .line 23
    iput-boolean v3, v4, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 26
    .line 27
    iget-object v3, v3, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    goto :goto_3

    .line 34
    :catchall_1
    move-exception v1

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception v4

    .line 37
    .line 38
    :try_start_3
    const-string v5, "migrate sticker cache"

    .line 39
    .line 40
    .line 41
    invoke-static {v5, v4}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    :try_start_4
    iget-object v4, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 44
    .line 45
    iput-boolean v3, v4, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v4, "migrate sticker cache "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    move-result-wide v4

    .line 65
    sub-long/2addr v4, v1

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, " ms"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    .line 84
    :goto_2
    iget-object v2, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 85
    .line 86
    iput-boolean v3, v2, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    .line 87
    .line 88
    iget-object v2, p0, Lcom/narvii/sticker/StickerCacheService$1;->this$0:Lcom/narvii/sticker/StickerCacheService;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 94
    throw v1

    .line 95
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    throw v1
.end method
