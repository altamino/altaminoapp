.class public Lcom/narvii/util/ImagePreloadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field static imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/ImagePreloadUtils$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/ImagePreloadUtils$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/ImagePreloadUtils;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/ImagePreloadUtils$2;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/util/ImagePreloadUtils$2;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/util/ImagePreloadUtils;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static preloadImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "http"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "https"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "gifLoader"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 50
    .line 51
    sget-object v1, Lcom/narvii/util/ImagePreloadUtils;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p0}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x0

    .line 61
    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    const-string/jumbo v2, "webpLoader"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 76
    .line 77
    sget-object v2, Lcom/narvii/util/ImagePreloadUtils;->drawableLoaderListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0, v2, v1, v1}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;II)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    const-string v2, "imageLoader"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 94
    .line 95
    sget-object v2, Lcom/narvii/util/ImagePreloadUtils;->imageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p0, v2, v1, v1}, Lcom/narvii/util/image/NVImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 99
    :cond_4
    :goto_0
    return-void
.end method
