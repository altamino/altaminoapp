.class public Lcom/narvii/sticker/StickerCacheService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/sticker/StickerCacheService$LoadWorker;,
        Lcom/narvii/sticker/StickerCacheService$DownloadListener;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field cacheDir:Ljava/io/File;

.field private final errors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field legacyCacheDir:Ljava/io/File;

.field final migrateLock:Ljava/lang/Object;

.field volatile migrating:Z

.field nvContext:Lcom/narvii/app/NVContext;

.field final runningSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/sticker/StickerCacheService$LoadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Lcom/narvii/util/http/ProxyStack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    .line 10
    sput v0, Lcom/narvii/sticker/StickerCacheService;->CPU_COUNT:I

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    const/4 v2, 0x4

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v0

    .line 23
    .line 24
    sput v0, Lcom/narvii/sticker/StickerCacheService;->CORE_POOL_SIZE:I

    .line 25
    .line 26
    const-string v2, "sticker-cache"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Lcom/narvii/sticker/StickerCacheService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

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
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    new-instance v0, Ljava/io/File;

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "stickers"

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    .line 44
    .line 45
    new-instance v0, Ljava/io/File;

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->legacyCacheDir:Ljava/io/File;

    .line 59
    const/4 p1, 0x1

    .line 60
    .line 61
    iput-boolean p1, p0, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    .line 62
    .line 63
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService;->legacyCacheDir:Ljava/io/File;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    new-instance p1, Lcom/narvii/sticker/StickerCacheService$1;

    .line 72
    .line 73
    const-string v0, "migrate sticker cache"

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p0, v0}, Lcom/narvii/sticker/StickerCacheService$1;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 p1, 0x0

    .line 82
    .line 83
    iput-boolean p1, p0, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    .line 84
    :goto_0
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/sticker/StickerCacheService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/sticker/StickerCacheService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->getStickerCollectionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 1
    .line 2
    if-eqz p2, :cond_4

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, ".gif"

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {p2}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const-string v0, ".webp"

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    const-string v0, ".s"

    .line 26
    .line 27
    :goto_0
    const/16 v1, 0x3f

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 31
    move-result v1

    .line 32
    .line 33
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->getStickerCollectionDir(Ljava/lang/String;)Ljava/io/File;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    if-lez v1, :cond_3

    .line 45
    const/4 v4, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    return-object v2

    .line 68
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 69
    return-object p1
.end method

.method private getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 v0, -0x1

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    const/16 v0, 0x3f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "-"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    const/4 p1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method private getStickerCollectionDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method


# virtual methods
.method public cacheLocalIconFile(Ljava/io/File;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    :goto_0
    return-void
.end method

.method public cancelAllDownloading()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    iput-boolean v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 40
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/sticker/StickerCacheService;->cancelAllDownloading()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 21
    :cond_0
    return-void
.end method

.method public deleteCachedFiles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Sticker;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/model/Sticker;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v1, v2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    :cond_2
    iget-object v1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v1, v0}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget-object p1, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    return-void

    .line 23
    .line 24
    :cond_1
    new-instance v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    iget-object p1, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    sget-object p1, Lcom/narvii/sticker/StickerCacheService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    .line 43
    .line 44
    filled-new-array {p2}, [Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    return-void
.end method

.method public downloadSticker(Lcom/narvii/model/Sticker;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerIconReady(Lcom/narvii/model/Sticker;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerThumbnailReady(Lcom/narvii/model/Sticker;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 28
    :cond_1
    return-void
.end method

.method public getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    .line 27
    return-object p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/sticker/StickerCacheService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    .line 45
    :goto_0
    return-object p1

    .line 46
    .line 47
    :cond_2
    new-instance p1, Lcom/narvii/asset/DownloadStatusInfo;

    .line 48
    const/4 p2, 0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->getProgress()F

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2, v0}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    .line 56
    return-object p1
.end method

.method public getIconUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 8
    move-result p2

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return-object p1
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 16
    return-object v0
.end method

.method public getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, p1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget v1, v0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget v3, p1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 24
    .line 25
    if-ne v3, v2, :cond_0

    .line 26
    .line 27
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_0
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget v2, p1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 v2, -0x1

    .line 39
    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    .line 42
    iget v1, p1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    .line 43
    .line 44
    if-ne v1, v2, :cond_2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    new-instance v1, Lcom/narvii/asset/DownloadStatusInfo;

    .line 48
    .line 49
    iget v0, v0, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    .line 50
    .line 51
    const/high16 v2, 0x3f000000    # 0.5f

    .line 52
    mul-float/2addr v0, v2

    .line 53
    .line 54
    iget p1, p1, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    .line 55
    mul-float/2addr p1, v2

    .line 56
    add-float/2addr v0, p1

    .line 57
    const/4 p1, 0x1

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p1, v0}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    .line 61
    return-object v1

    .line 62
    .line 63
    :cond_3
    :goto_0
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    .line 64
    return-object p1
.end method

.method public getThumbnailUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public isStickerIconReady(Lcom/narvii/model/Sticker;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    return p1
.end method

.method public isStickerReady(Lcom/narvii/model/Sticker;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerIconReady(Lcom/narvii/model/Sticker;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerThumbnailReady(Lcom/narvii/model/Sticker;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isStickerThumbnailReady(Lcom/narvii/model/Sticker;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    return p1
.end method

.method public observeFileStatusChange(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerFileDownloadListener;)V
    .locals 1

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p1, p2, v0}, Lcom/narvii/sticker/StickerFileDownloadListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/asset/DownloadStatusInfo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    new-instance p3, Lcom/narvii/sticker/StickerCacheService$2;

    .line 24
    .line 25
    .line 26
    invoke-direct {p3, p0, v0}, Lcom/narvii/sticker/StickerCacheService$2;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 30
    :cond_1
    return-void
.end method

.method public observeStickerStatusChange(Lcom/narvii/model/Sticker;Lcom/narvii/sticker/StickerStatusChangeListener;)V
    .locals 4

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1, v0}, Lcom/narvii/sticker/StickerStatusChangeListener;->onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v3, Lcom/narvii/sticker/StickerCacheService$3;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, p0, v0, p2, p1}, Lcom/narvii/sticker/StickerCacheService$3;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;Lcom/narvii/sticker/StickerStatusChangeListener;Lcom/narvii/model/Sticker;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 42
    .line 43
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 61
    .line 62
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v2, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v3, Lcom/narvii/sticker/StickerCacheService$4;

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, p0, v0, p2, p1}, Lcom/narvii/sticker/StickerCacheService$4;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;Lcom/narvii/sticker/StickerStatusChangeListener;Lcom/narvii/model/Sticker;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 73
    :cond_2
    return-void
.end method

.method public size()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
