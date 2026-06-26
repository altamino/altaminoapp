.class Lcom/narvii/services/ImageLoaderProvider$1;
.super Ljava/lang/Object;
.source "ImageLoaderProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/ImageLoaderProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/image/NVImageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/ImageLoaderProvider;

.field final synthetic val$srv:Lcom/narvii/util/image/NVImageLoader;

.field final synthetic val$ws:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/services/ImageLoaderProvider;Lcom/narvii/util/ws/WsService;Lcom/narvii/util/image/NVImageLoader;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/services/ImageLoaderProvider$1;->this$0:Lcom/narvii/services/ImageLoaderProvider;

    iput-object p2, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$ws:Lcom/narvii/util/ws/WsService;

    iput-object p3, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$srv:Lcom/narvii/util/image/NVImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$ws:Lcom/narvii/util/ws/WsService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isKeepAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$srv:Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 60
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$srv:Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getImageCache()Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/BitmapLruCache;

    invoke-virtual {v0}, Lcom/narvii/util/LruCache;->evictAll()V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->this$0:Lcom/narvii/services/ImageLoaderProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/services/ImageLoaderProvider;->access$002(Lcom/narvii/services/ImageLoaderProvider;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
