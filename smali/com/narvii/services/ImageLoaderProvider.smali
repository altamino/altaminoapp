.class public Lcom/narvii/services/ImageLoaderProvider;
.super Ljava/lang/Object;
.source "ImageLoaderProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/image/NVImageLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private stopping:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/services/ImageLoaderProvider;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/services/ImageLoaderProvider;->stopping:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/image/NVImageLoader;
    .locals 4

    const-string v0, "imageDiskCache"

    .line 23
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Cache;

    .line 24
    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v2, Lcom/narvii/util/http/ProxyStack;

    invoke-direct {v2, p1}, Lcom/narvii/util/http/ProxyStack;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-direct {v1, v2}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 25
    new-instance v2, Lcom/android/volley/RequestQueue;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    .line 27
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 28
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x100000

    mul-int v0, v0, v1

    .line 30
    div-int/lit8 v0, v0, 0x8

    .line 31
    new-instance v1, Lcom/narvii/util/image/BitmapLruCache;

    invoke-direct {v1, v0}, Lcom/narvii/util/image/BitmapLruCache;-><init>(I)V

    .line 33
    new-instance v0, Lcom/narvii/util/image/NVImageLoader;

    invoke-direct {v0, p1, v2, v1}, Lcom/narvii/util/image/NVImageLoader;-><init>(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/services/ImageLoaderProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/image/NVImageLoader;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageLoaderProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider;->stopping:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 52
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string/jumbo v0, "ws"

    .line 54
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/ws/WsService;

    .line 55
    new-instance v0, Lcom/narvii/services/ImageLoaderProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/services/ImageLoaderProvider$1;-><init>(Lcom/narvii/services/ImageLoaderProvider;Lcom/narvii/util/ws/WsService;Lcom/narvii/util/image/NVImageLoader;)V

    iput-object v0, p0, Lcom/narvii/services/ImageLoaderProvider;->stopping:Ljava/lang/Runnable;

    .line 65
    iget-object p1, p0, Lcom/narvii/services/ImageLoaderProvider;->stopping:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageLoaderProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/narvii/services/ImageLoaderProvider;->stopping:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 43
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/narvii/services/ImageLoaderProvider;->stopping:Ljava/lang/Runnable;

    .line 46
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageLoaderProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageLoaderProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ImageLoaderProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V

    return-void
.end method
