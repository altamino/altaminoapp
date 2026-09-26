.class Lcom/narvii/services/ImageLoaderProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/ImageLoaderProvider$1;->this$0:Lcom/narvii/services/ImageLoaderProvider;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$ws:Lcom/narvii/util/ws/WsService;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$srv:Lcom/narvii/util/image/NVImageLoader;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$ws:Lcom/narvii/util/ws/WsService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/ws/WsService;->isKeepAlive()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$srv:Lcom/narvii/util/image/NVImageLoader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->val$srv:Lcom/narvii/util/image/NVImageLoader;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getImageCache()Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/util/image/BitmapLruCache;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/util/LruCache;->evictAll()V

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/narvii/services/ImageLoaderProvider$1;->this$0:Lcom/narvii/services/ImageLoaderProvider;

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/narvii/services/ImageLoaderProvider;->a(Lcom/narvii/services/ImageLoaderProvider;Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
