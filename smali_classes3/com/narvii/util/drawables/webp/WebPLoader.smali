.class public Lcom/narvii/util/drawables/webp/WebPLoader;
.super Ljava/lang/Object;
.source "WebPLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;,
        Lcom/narvii/util/drawables/webp/WebPLoader$ListenerStub;,
        Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;,
        Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;
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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->mainH:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    .line 54
    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->dir:Ljava/io/File;

    .line 55
    new-instance p2, Lcom/narvii/util/http/ProxyStack;

    invoke-direct {p2, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    const/4 p1, 0x4

    const-string p2, "webp-download"

    .line 56
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x1

    const-string p2, "webp-load"

    .line 57
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->loadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/io/File;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->dir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/util/drawables/webp/WebPLoader;)Lcom/narvii/util/http/ProxyStack;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->stack:Lcom/narvii/util/http/ProxyStack;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/util/drawables/webp/WebPLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/util/drawables/webp/WebPLoader;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->mainH:Landroid/os/Handler;

    return-object p0
.end method

.method private getLocalFileByUrl(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "assets://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "photo://"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    const-string v1, "photo"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 203
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "mediastore://"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "file://"

    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;
    .locals 3

    .line 216
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->refs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 223
    :cond_2
    new-instance p1, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    invoke-direct {p1, v2}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V

    return-object p1
.end method


# virtual methods
.method public abort(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V
    .locals 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->removeListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    return-void
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 192
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->dir:Ljava/io/File;

    invoke-static {p1}, Lcom/narvii/util/drawables/DrawableUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3f

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getLocalWebPDrawable(Ljava/lang/String;II)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;
    .locals 4

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    :try_start_0
    const-string p2, "assets://"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 78
    iget-object p2, p0, Lcom/narvii/util/drawables/webp/WebPLoader;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const/16 v0, 0x9

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getLocalFileByUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    .line 83
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    goto :goto_0

    :cond_3
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_7

    .line 88
    :try_start_1
    invoke-static {p1}, Landroid/support/rastermill/FrameSequence;->decodeStream(Ljava/io/InputStream;)Landroid/support/rastermill/FrameSequence;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 89
    invoke-virtual {p2}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_4

    goto :goto_2

    .line 92
    :cond_4
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable;

    new-instance v1, Lcom/narvii/util/drawables/webp/WebPLoader$1;

    invoke-direct {v1, p0}, Lcom/narvii/util/drawables/webp/WebPLoader$1;-><init>(Lcom/narvii/util/drawables/webp/WebPLoader;)V

    invoke-direct {v0, p2, v1}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    .line 103
    invoke-virtual {p2}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 104
    invoke-virtual {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    goto :goto_1

    :cond_5
    const/4 p2, 0x2

    .line 106
    invoke-virtual {v0, p2}, Landroid/support/rastermill/FrameSequenceDrawable;->setLoopBehavior(I)V

    .line 107
    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    .line 109
    :goto_1
    new-instance p2, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    new-instance v1, Lcom/narvii/util/drawables/webp/NVWebPDrawable;

    invoke-direct {v1, v0}, Lcom/narvii/util/drawables/webp/NVWebPDrawable;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    invoke-direct {p2, v1}, Lcom/narvii/util/drawables/webp/WrapWebPDrawable;-><init>(Lcom/narvii/util/drawables/webp/NVWebPDrawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object p2

    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object p3

    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object p2, p1

    move-object p1, p3

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    move-object p2, p1

    move-object p1, p3

    :goto_4
    :try_start_2
    const-string v0, "fail to load local webp"

    .line 113
    invoke-static {v0, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    :cond_7
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object p3

    :catchall_1
    move-exception p2

    :goto_5
    invoke-static {p1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 117
    throw p2
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 177
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 181
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    return v2

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

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V

    return-void
.end method

.method public request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;IIZI)V
    .locals 13

    move-object v10, p0

    move-object v3, p1

    move-object v5, p2

    .line 128
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getWebPFromMemoryCache(Ljava/lang/String;)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 130
    invoke-interface {p2, p1, v0, v1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFinished(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 136
    invoke-direct {p0, p1}, Lcom/narvii/util/drawables/webp/WebPLoader;->getLocalFileByUrl(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v0, "assets://"

    .line 137
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

    cmp-long v8, v1, v6

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "photo://"

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mediastore://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "file://"

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$DownloadTask;

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    return-void

    .line 158
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

    .line 159
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->downloadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    :goto_0
    if-eqz v5, :cond_8

    .line 150
    invoke-interface {p2, p1}, Lcom/narvii/util/drawables/DrawableLoaderListener;->onFailed(Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_6
    :goto_1
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader$LoadTask;

    if-eqz v0, :cond_7

    .line 140
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/drawables/webp/WebPLoader$BaseDrawableTask;->addListener(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    return-void

    .line 144
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

    .line 145
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->loadTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, v10, Lcom/narvii/util/drawables/webp/WebPLoader;->loadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method
