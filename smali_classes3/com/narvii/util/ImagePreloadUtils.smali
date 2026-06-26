.class public Lcom/narvii/util/ImagePreloadUtils;
.super Ljava/lang/Object;
.source "ImagePreloadUtils.java"


# static fields
.field static drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field static imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/narvii/util/ImagePreloadUtils$1;

    invoke-direct {v0}, Lcom/narvii/util/ImagePreloadUtils$1;-><init>()V

    sput-object v0, Lcom/narvii/util/ImagePreloadUtils;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 28
    new-instance v0, Lcom/narvii/util/ImagePreloadUtils$2;

    invoke-direct {v0}, Lcom/narvii/util/ImagePreloadUtils$2;-><init>()V

    sput-object v0, Lcom/narvii/util/ImagePreloadUtils;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preloadImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "gifLoader"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 47
    sget-object v1, Lcom/narvii/util/ImagePreloadUtils;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0, p0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v2, "webpLoader"

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 50
    sget-object v2, Lcom/narvii/util/ImagePreloadUtils;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0, p0, v2, v1, v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;II)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v2, "imageLoader"

    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 53
    sget-object v2, Lcom/narvii/util/ImagePreloadUtils;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    invoke-virtual {v0, p0, v2, v1, v1}, Lcom/narvii/util/image/NVImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    :cond_4
    :goto_0
    return-void
.end method
