.class public Lcom/narvii/util/drawables/webp/WebPLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;,
        Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;,
        Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;,
        Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;
    }
.end annotation


# static fields
.field public static final s_WEBP_DOWNLOAD_THREAD_NAME:Ljava/lang/String; = "webp-download"

.field public static final s_WEBP_LOAD_THREAD_NAME:Ljava/lang/String; = "webp-load"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private dir:Ljava/io/File;

.field private downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private loadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final loadTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mainH:Landroid/os/Handler;

.field private final refs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/util/drawables/webp/NVWebPDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private stack:Lcom/narvii/util/http/ProxyStack;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 2

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
    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    new-instance v0, Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->mainH:Landroid/os/Handler;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->dir:Ljava/io/File;

    .line 40
    .line 41
    new-instance p2, Lcom/narvii/util/http/ProxyStack;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    .line 47
    const/4 p1, 0x4

    .line 48
    .line 49
    .line 50
    const-string/jumbo p2, "webp-download"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 57
    const/4 p1, 0x1

    .line 58
    .line 59
    .line 60
    const-string/jumbo p2, "webp-load"

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 67
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->dir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/util/drawables/webp/WebPLoader;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->mainH:Landroid/os/Handler;

    return-object p0
.end method

.method private getLocalFileByUrl(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    const-string v0, "assets://"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    const-string v0, "photo://"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    const-string v1, "photo"

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    const-string v0, "mediastore://"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    const-string v0, "file://"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    new-instance v0, Ljava/io/File;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    move-object p1, v0

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 78
    move-result-object p1

    .line 79
    :goto_0
    return-object p1

    .line 80
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 81
    return-object p1
.end method

.method private getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    move-object v2, v1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 24
    .line 25
    :goto_0
    if-nez v2, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_1
    return-object v1

    .line 34
    .line 35
    :cond_2
    new-instance p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v2}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    .line 39
    return-object p1
.end method

.method static bridge synthetic h(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/util/http/ProxyStack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    return-object p0
.end method


# virtual methods
.method public abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->removeListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 19
    return-void
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->dir:Ljava/io/File;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/drawables/DrawableUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x3f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    :cond_0
    return-object p1
.end method

.method public getLocalWebPDrawable(Ljava/lang/String;II)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    return-object p3

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    return-object p2

    .line 16
    .line 17
    :cond_1
    :try_start_0
    const-string p2, "assets://"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    const/16 v0, 0x9

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    .line 47
    goto/16 :goto_7

    .line 48
    :catch_0
    move-exception p1

    .line 49
    :goto_0
    move-object p2, p3

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getLocalFileByUrl(Ljava/lang/String;)Ljava/io/File;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 63
    move-result p2

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    const-wide/16 v2, 0x0

    .line 72
    .line 73
    cmp-long p2, v0, v2

    .line 74
    .line 75
    if-lez p2, :cond_3

    .line 76
    .line 77
    new-instance p2, Ljava/io/FileInputStream;

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    move-object p1, p2

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object p1, p3

    .line 84
    .line 85
    :goto_1
    if-eqz p1, :cond_7

    .line 86
    .line 87
    .line 88
    :try_start_1
    invoke-static {p1}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    if-eqz p2, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 95
    move-result v0

    .line 96
    .line 97
    if-gtz v0, :cond_4

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_4
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable;

    .line 101
    .line 102
    new-instance v1, Lcom/narvii/util/drawables/webp/WebPLoader$1;

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/narvii/util/drawables/webp/WebPLoader$1;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    .line 112
    move-result p2

    .line 113
    const/4 v1, 0x1

    .line 114
    .line 115
    if-ne p2, v1, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 119
    goto :goto_3

    .line 120
    :catchall_1
    move-exception p2

    .line 121
    move-object p3, p1

    .line 122
    move-object p1, p2

    .line 123
    goto :goto_7

    .line 124
    :catch_2
    move-exception p2

    .line 125
    :goto_2
    move-object v4, p2

    .line 126
    move-object p2, p1

    .line 127
    move-object p1, v4

    .line 128
    goto :goto_5

    .line 129
    :catch_3
    move-exception p2

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    const/4 p2, 0x2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p2}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 138
    .line 139
    :goto_3
    new-instance p2, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 140
    .line 141
    new-instance v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v0}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {p2, v1}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 151
    return-object p2

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_4
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 155
    return-object p3

    .line 156
    .line 157
    .line 158
    :cond_7
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 159
    goto :goto_6

    .line 160
    .line 161
    :goto_5
    :try_start_2
    const-string v0, "fail to load local webp"

    .line 162
    .line 163
    .line 164
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    .line 166
    .line 167
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 168
    :goto_6
    return-object p3

    .line 169
    :catchall_2
    move-exception p1

    .line 170
    move-object p3, p2

    .line 171
    .line 172
    .line 173
    :goto_7
    invoke-static {p3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 174
    throw p1
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    return v2

    .line 13
    .line 14
    .line 15
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 26
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    cmp-long p1, v3, v5

    .line 31
    .line 32
    if-lez p1, :cond_2

    .line 33
    return v2

    .line 34
    :catch_0
    :cond_2
    return v0
.end method

.method public request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V

    return-void
.end method

.method public request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V
    .locals 13

    move-object v10, p0

    move-object v3, p1

    move-object v5, p2

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getLocalFileByUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v0, "assets://"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "photo://"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mediastore://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "file://"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    return-void

    .line 11
    :cond_4
    new-instance v8, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;III)V

    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v0, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    :goto_0
    if-eqz v5, :cond_8

    .line 14
    invoke-interface {p2, p1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    return-void

    .line 17
    :cond_7
    new-instance v12, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V

    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->loadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method
