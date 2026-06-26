.class public Lcom/narvii/livelayer/LiveLayerPreloadHelper;
.super Ljava/lang/Object;
.source "LiveLayerPreloadHelper.java"


# instance fields
.field allDone:Z

.field canceled:Z

.field private gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

.field iconHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field multiLoadCallback:Lcom/narvii/util/Callback;

.field nvContext:Lcom/narvii/app/NVContext;

.field private webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 35
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->onUrlResponse(Ljava/lang/String;)V

    return-void
.end method

.method private checkAllLoadDone()Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private onUrlResponse(Ljava/lang/String;)V
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->allDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    if-eqz v0, :cond_1

    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->checkAllLoadDone()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->allDone:Z

    .line 85
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->multiLoadCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_2

    .line 86
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public discard()V
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    return-void
.end method

.method public getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    const-string v1, "gifLoader"

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    :cond_1
    return-object v0
.end method

.method public getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    const-string v1, "webpLoader"

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    :cond_1
    return-object v0
.end method

.method public preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object p2

    new-instance v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$2;

    invoke-direct {v0, p0, p3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$2;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object v0

    new-instance v1, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;

    invoke-direct {v1, p0, p3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, p1, v1, p2, p2}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;II)V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "imageLoader"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 142
    new-instance v1, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, p2, p2}, Lcom/narvii/util/image/NVImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    :goto_0
    return-void
.end method

.method public preloadUserIcons(Ljava/util/List;IIILcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;III",
            "Lcom/narvii/util/Callback;",
            ")V"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    .line 163
    invoke-interface {p5, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->allDone:Z

    .line 168
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 169
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    .line 170
    iput-object p5, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->multiLoadCallback:Lcom/narvii/util/Callback;

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 172
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-le p2, p3, :cond_5

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    .line 175
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/User;

    if-eqz p3, :cond_2

    .line 176
    iget-object p3, p3, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 177
    invoke-static {p3, v1, p4, p4}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p3

    .line 178
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 182
    :cond_3
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 183
    invoke-interface {p5, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void

    .line 187
    :cond_4
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 188
    new-instance p3, Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;

    invoke-direct {p3, p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;)V

    invoke-virtual {p0, p2, p4, p3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_6

    .line 197
    invoke-interface {p5, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
