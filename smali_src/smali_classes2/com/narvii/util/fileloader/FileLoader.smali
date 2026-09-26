.class public abstract Lcom/narvii/util/fileloader/FileLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fileloader/FileLoader$Companion;,
        Lcom/narvii/util/fileloader/FileLoader$Session;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/fileloader/FileLoader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_STATUS_DOWNLOADING:I = 0x1

.field public static final LOAD_STATUS_FAILED:I = -0x1

.field public static final LOAD_STATUS_FINISHED:I = 0x2

.field public static final LOAD_STATUS_IDLE:I


# instance fields
.field private final cache$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public dir:Ljava/io/File;

.field private final downloader$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxSize:I

.field private final path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionMap$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/fileloader/FileLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoader$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/util/fileloader/FileLoader;->Companion:Lcom/narvii/util/fileloader/FileLoader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "path"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/util/fileloader/FileLoader;->path:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/util/fileloader/FileLoader$cache$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/narvii/util/fileloader/FileLoader$cache$2;-><init>(Lcom/narvii/util/fileloader/FileLoader;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->cache$delegate:Lw7/m;

    .line 29
    .line 30
    new-instance p1, Lcom/narvii/util/fileloader/FileLoader$downloader$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/narvii/util/fileloader/FileLoader$downloader$2;-><init>(Lcom/narvii/util/fileloader/FileLoader;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->downloader$delegate:Lw7/m;

    .line 40
    .line 41
    sget-object p1, Lcom/narvii/util/fileloader/FileLoader$sessionMap$2;->INSTANCE:Lcom/narvii/util/fileloader/FileLoader$sessionMap$2;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->sessionMap$delegate:Lw7/m;

    .line 48
    .line 49
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 50
    const/4 v1, 0x0

    .line 51
    .line 52
    .line 53
    const v2, 0x7fffffff

    .line 54
    .line 55
    const-wide/16 v3, 0x3c

    .line 56
    .line 57
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 60
    .line 61
    .line 62
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 63
    .line 64
    new-instance v7, Lcom/narvii/util/fileloader/f;

    .line 65
    .line 66
    .line 67
    invoke-direct {v7}, Lcom/narvii/util/fileloader/f;-><init>()V

    .line 68
    move-object v0, p1

    .line 69
    .line 70
    .line 71
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->initLoader()V

    .line 77
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/util/fileloader/FileLoader;->executorService$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDownloader(Lcom/narvii/util/fileloader/FileLoader;)Lcom/narvii/util/fileloader/FileDownloader;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getDownloader()Lcom/narvii/util/fileloader/FileDownloader;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getSessionMap(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final executorService$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Thread;

    .line 3
    .line 4
    const-string v1, "File Loader Thread"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method private final getDownloader()Lcom/narvii/util/fileloader/FileDownloader;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->downloader$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/fileloader/FileDownloader;

    .line 9
    return-object v0
.end method

.method private final getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/fileloader/FileLoader$Session;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->sessionMap$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    return-object v0
.end method

.method private final initLoader()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->initCacheDir()Lw7/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Ljava/io/File;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/narvii/util/fileloader/FileLoader;->setDir(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    const-wide/32 v1, 0x400000

    .line 34
    .line 35
    const/16 v3, 0x64

    .line 36
    const/4 v4, 0x3

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    .line 42
    move-result-wide v5

    .line 43
    int-to-long v7, v4

    .line 44
    mul-long/2addr v5, v7

    .line 45
    int-to-long v3, v3

    .line 46
    div-long/2addr v5, v3

    .line 47
    .line 48
    .line 49
    const-wide/32 v3, 0x1000000

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 57
    move-result-wide v0

    .line 58
    :goto_0
    long-to-int v0, v0

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    .line 63
    move-result-wide v5

    .line 64
    int-to-long v7, v4

    .line 65
    mul-long/2addr v5, v7

    .line 66
    int-to-long v3, v3

    .line 67
    div-long/2addr v5, v3

    .line 68
    .line 69
    .line 70
    const-wide/32 v3, 0x2000000

    .line 71
    .line 72
    .line 73
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 74
    move-result-wide v3

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 78
    move-result-wide v0

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :goto_1
    iput v0, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    .line 82
    return-void
.end method


# virtual methods
.method public final abort(Ljava/lang/String;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/IFileDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "url"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->abort(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 22
    :cond_0
    return-void
.end method

.method public final abortAll()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 31
    const/4 v2, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/narvii/util/fileloader/FileLoader$Session;->setAborted(Z)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 43
    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->abortAll()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 11
    return-void
.end method

.method public final containsRealCallback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sessionKey"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->containsRealCallback(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public abstract dispatchToMainThread()Z
.end method

.method protected final getCache()Lcom/narvii/util/fileloader/INVFileCache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->cache$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/fileloader/INVFileCache;

    .line 9
    return-object v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "dir"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 8
    .param p1    # Lcom/narvii/util/fileloader/FileLoaderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const/16 v1, 0x3f

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x6

    .line 19
    const/4 v5, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Lkotlin/text/k;->b0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    .line 37
    move-result-object v7

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const/16 v2, 0x2f

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x4

    .line 46
    const/4 v6, 0x0

    .line 47
    move v3, v0

    .line 48
    .line 49
    .line 50
    invoke-static/range {v1 .. v6}, Lkotlin/text/k;->h0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 51
    move-result v1

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "substring(...)"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 72
    move-result v3

    .line 73
    .line 74
    const/16 v4, 0x80

    .line 75
    .line 76
    if-ge v3, v4, :cond_1

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 81
    move-result v3

    .line 82
    sub-int/2addr v3, v4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v0, "-r"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getRev()I

    .line 105
    move-result p1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    return-object p1
.end method

.method protected final getMaxSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lcom/narvii/util/fileloader/FileLoader$Session;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 15
    return-object p1
.end method

.method public getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/narvii/util/fileloader/FileLoaderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method protected initCacheDir()Lw7/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw7/u<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_1
    :goto_0
    const-string v0, "fail to get external cache dir, using internal cache instead"

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    :goto_1
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/util/fileloader/FileLoader;->path:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    new-instance v0, Lw7/u;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v2, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->abortAll()V

    .line 4
    return-void
.end method

.method public abstract provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final removeCallbackByTag(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "tag"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    move-result-object v0

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
    check-cast v1, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->removeCallbackByTag(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 2
    .param p1    # Lcom/narvii/util/fileloader/FileLoaderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/fileloader/IFileDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getDir()Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->initLoader()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->addCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    new-instance v0, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;-><init>(Lcom/narvii/util/fileloader/FileLoader;Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    :goto_0
    return-void
.end method

.method public final setDir(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    return-void
.end method

.method protected final setMaxSize(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    return-void
.end method

.method public final trimAndFlush(J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getCache()Lcom/narvii/util/fileloader/INVFileCache;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/util/fileloader/INVFileCache;->trimAndFlush(IJ)V

    .line 12
    :cond_0
    return-void
.end method

.method public abstract validateCacheFile(Ljava/io/File;)Z
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
