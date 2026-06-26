.class public Lcom/narvii/sticker/StickerCacheService;
.super Ljava/lang/Object;
.source "StickerCacheService.java"


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

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/narvii/sticker/StickerCacheService;->CPU_COUNT:I

    .line 49
    sget v0, Lcom/narvii/sticker/StickerCacheService;->CPU_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/narvii/sticker/StickerCacheService;->CORE_POOL_SIZE:I

    .line 50
    sget v0, Lcom/narvii/sticker/StickerCacheService;->CORE_POOL_SIZE:I

    const-string/jumbo v2, "sticker-cache"

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/narvii/sticker/StickerCacheService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 55
    sget-object v0, Lcom/narvii/sticker/StickerCacheService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->migrateLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/narvii/sticker/StickerCacheService;->nvContext:Lcom/narvii/app/NVContext;

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "stickers"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->legacyCacheDir:Ljava/io/File;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    .line 64
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService;->legacyCacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    new-instance p1, Lcom/narvii/sticker/StickerCacheService$1;

    const-string v0, "migrate sticker cache"

    invoke-direct {p1, p0, v0}, Lcom/narvii/sticker/StickerCacheService$1;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->getStickerCollectionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/sticker/StickerCacheService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/sticker/StickerCacheService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    invoke-static {p2}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".gif"

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".webp"

    goto :goto_0

    :cond_2
    const-string v0, ".s"

    :goto_0
    const/16 v1, 0x3f

    .line 94
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 95
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->getStickerCollectionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    .line 322
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 323
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStickerCollectionDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cacheLocalIconFile(Ljava/io/File;Lcom/narvii/model/Sticker;)V
    .locals 1

    .line 108
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v0, p2, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p2, p2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cancelAllDownloading()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    const/4 v2, 0x1

    .line 152
    iput-boolean v2, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->canceled:Z

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/narvii/sticker/StickerCacheService;->migrating:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/narvii/sticker/StickerCacheService;->cancelAllDownloading()V

    .line 143
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

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

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Sticker;

    .line 123
    iget-object v1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    :cond_2
    iget-object v1, v0, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V
    .locals 2

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 331
    iget-object p1, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 336
    :cond_1
    new-instance v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 338
    iget-object p1, v1, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_2
    iget-object p1, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object p1, Lcom/narvii/sticker/StickerCacheService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {v1, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public downloadSticker(Lcom/narvii/model/Sticker;)V
    .locals 3

    .line 209
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerIconReady(Lcom/narvii/model/Sticker;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 213
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerThumbnailReady(Lcom/narvii/model/Sticker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    :cond_1
    return-void
.end method

.method public getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->runningSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/sticker/StickerCacheService$LoadWorker;

    if-nez v0, :cond_2

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1

    .line 313
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    iget-object p2, p0, Lcom/narvii/sticker/StickerCacheService;->errors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    :goto_0
    return-object p1

    .line 317
    :cond_2
    new-instance p1, Lcom/narvii/asset/DownloadStatusInfo;

    const/4 p2, 0x1

    invoke-virtual {v0}, Lcom/narvii/sticker/StickerCacheService$LoadWorker;->getProgress()F

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    return-object p1
.end method

.method public getIconUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 179
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 195
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 187
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 188
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getStack()Lcom/narvii/util/http/ProxyStack;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->stack:Lcom/narvii/util/http/ProxyStack;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/narvii/util/http/ProxyStack;

    iget-object v1, p0, Lcom/narvii/sticker/StickerCacheService;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->stack:Lcom/narvii/util/http/ProxyStack;

    return-object v0
.end method

.method public getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;
    .locals 4

    .line 288
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    .line 289
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object p1

    .line 291
    iget v1, v0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-ne v1, v2, :cond_0

    .line 292
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->READY:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1

    .line 295
    :cond_0
    iget v1, v0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-nez v1, :cond_1

    .line 296
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->IDLE:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1

    .line 299
    :cond_1
    iget v1, v0, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p1, Lcom/narvii/asset/DownloadStatusInfo;->status:I

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 303
    :cond_2
    new-instance v1, Lcom/narvii/asset/DownloadStatusInfo;

    const/4 v2, 0x1

    iget v0, v0, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v0, v0, v3

    iget p1, p1, Lcom/narvii/asset/DownloadStatusInfo;->progress:F

    mul-float p1, p1, v3

    add-float/2addr v0, p1

    invoke-direct {v1, v2, v0}, Lcom/narvii/asset/DownloadStatusInfo;-><init>(IF)V

    return-object v1

    .line 300
    :cond_3
    :goto_0
    sget-object p1, Lcom/narvii/asset/DownloadStatusInfo;->FAIL:Lcom/narvii/asset/DownloadStatusInfo;

    return-object p1
.end method

.method public getThumbnailUri(Lcom/narvii/model/Sticker;)Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 171
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isStickerIconReady(Lcom/narvii/model/Sticker;)Z
    .locals 1

    .line 160
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 161
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isStickerReady(Lcom/narvii/model/Sticker;)Z
    .locals 1

    .line 202
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerIconReady(Lcom/narvii/model/Sticker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->isStickerThumbnailReady(Lcom/narvii/model/Sticker;)Z

    move-result p1

    return p1
.end method

.method public isStickerThumbnailReady(Lcom/narvii/model/Sticker;)Z
    .locals 1

    .line 165
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/narvii/sticker/StickerCacheService;->getDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 166
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public observeFileStatusChange(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerFileDownloadListener;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    .line 225
    invoke-interface {p3, p1, p2, v0}, Lcom/narvii/sticker/StickerFileDownloadListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/asset/DownloadStatusInfo;)V

    .line 227
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 229
    new-instance p3, Lcom/narvii/sticker/StickerCacheService$2;

    invoke-direct {p3, p0, v0}, Lcom/narvii/sticker/StickerCacheService$2;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    :cond_1
    return-void
.end method

.method public observeStickerStatusChange(Lcom/narvii/model/Sticker;Lcom/narvii/sticker/StickerStatusChangeListener;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/sticker/StickerCacheService;->getStickerDownloadStatusInfo(Lcom/narvii/model/Sticker;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/narvii/sticker/StickerStatusChangeListener;->onStatusChanged(Lcom/narvii/model/Sticker;Lcom/narvii/asset/DownloadStatusInfo;)V

    .line 251
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 255
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    new-instance v3, Lcom/narvii/sticker/StickerCacheService$3;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/narvii/sticker/StickerCacheService$3;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;Lcom/narvii/sticker/StickerStatusChangeListener;Lcom/narvii/model/Sticker;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    .line 269
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/narvii/sticker/StickerCacheService;->getFileDownloadStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/asset/DownloadStatusInfo;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/narvii/asset/DownloadStatusInfo;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 272
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/model/Sticker;->thumbnail:Ljava/lang/String;

    new-instance v3, Lcom/narvii/sticker/StickerCacheService$4;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/narvii/sticker/StickerCacheService$4;-><init>(Lcom/narvii/sticker/StickerCacheService;Ljava/lang/ref/WeakReference;Lcom/narvii/sticker/StickerStatusChangeListener;Lcom/narvii/model/Sticker;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/narvii/sticker/StickerCacheService;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/sticker/StickerCacheService$DownloadListener;)V

    :cond_2
    return-void
.end method

.method public size()J
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/narvii/sticker/StickerCacheService;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
