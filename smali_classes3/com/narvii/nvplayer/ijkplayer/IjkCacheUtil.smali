.class public Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;
.super Ljava/lang/Object;
.source "IjkCacheUtil.java"


# static fields
.field private static mInstance:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;


# instance fields
.field private mWeakHashMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/FutureTask;",
            ">;"
        }
    .end annotation
.end field

.field private mp:Lcom/narvii/video/MediaPreloadService;

.field private urlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->urlList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->urlList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;)Lcom/narvii/video/MediaPreloadService;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mp:Lcom/narvii/video/MediaPreloadService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;)Ljava/util/WeakHashMap;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static getInstance()Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;
    .locals 1

    .line 29
    sget-object v0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mInstance:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    invoke-direct {v0}, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;-><init>()V

    sput-object v0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mInstance:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    .line 32
    :cond_0
    sget-object v0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mInstance:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    return-object v0
.end method


# virtual methods
.method public preload(Lcom/narvii/app/NVContext;Lcom/narvii/nvplayer/INVPlayer;Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-static {p3}, Lcom/narvii/util/YoutubeUtils;->isYtvScheme(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string p2, "youtube"

    .line 56
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/youtube/YoutubeService;

    .line 57
    invoke-static {p3}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    new-instance v1, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;

    invoke-direct {v1, p0, p3}, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;-><init>(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mp:Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {p1, p3, p3}, Lcom/narvii/video/MediaPreloadService;->startPreload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    new-instance p2, Ljava/util/concurrent/FutureTask;

    invoke-direct {p2, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public preload(Lcom/narvii/app/NVContext;Lcom/narvii/nvplayer/INVPlayer;[Ljava/lang/String;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mp:Lcom/narvii/video/MediaPreloadService;

    if-nez v0, :cond_0

    const-string v0, "mediapreload"

    .line 37
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaPreloadService;

    iput-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mp:Lcom/narvii/video/MediaPreloadService;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/FutureTask;

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->mWeakHashMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 45
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->urlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    array-length v0, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    if-eqz v2, :cond_2

    .line 48
    iget-object v3, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->urlList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0, p1, p2, v2}, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->preload(Lcom/narvii/app/NVContext;Lcom/narvii/nvplayer/INVPlayer;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
