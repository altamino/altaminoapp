.class public Lcom/narvii/livelayer/LiveLayerPreloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->onUrlResponse(Ljava/lang/String;)V

    return-void
.end method

.method private checkAllLoadDone()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Ljava/lang/Boolean;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0
.end method

.method private onUrlResponse(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->allDone:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 13
    .line 14
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->checkAllLoadDone()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    const/4 p1, 0x1

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->allDone:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->multiLoadCallback:Lcom/narvii/util/Callback;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$1;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;)V

    .line 38
    .line 39
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :cond_2
    return-void
.end method


# virtual methods
.method public discard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    return-void
.end method

.method public getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 3
    .line 4
    const-string v1, "gifLoader"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->gifLoader:Lcom/narvii/util/drawables/gif/GifLoader;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 33
    :cond_1
    return-object v0
.end method

.method public getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 3
    .line 4
    const-string/jumbo v1, "webpLoader"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->webpLoader:Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 33
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/livelayer/LiveLayerPreloadHelper$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$2;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isWebP(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, p3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$3;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, v1, p2, p2}, Lcom/narvii/util/drawables/webp/WebPLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;II)V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    const-string v1, "imageLoader"

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 56
    .line 57
    new-instance v1, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p0, p3, p1}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$4;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;Lcom/narvii/util/Callback;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, v1, p2, p2}, Lcom/narvii/util/image/NVImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 64
    :goto_0
    return-void
.end method

.method public preloadUserIcons(Ljava/util/List;IIILcom/narvii/util/Callback;)V
    .locals 3
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p5, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->allDone:Z

    .line 17
    .line 18
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->canceled:Z

    .line 24
    .line 25
    iput-object p5, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->multiLoadCallback:Lcom/narvii/util/Callback;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 33
    move-result p2

    .line 34
    .line 35
    if-le p2, p3, :cond_5

    .line 36
    .line 37
    add-int/lit8 p2, p2, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz p2, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object p3

    .line 44
    .line 45
    check-cast p3, Lcom/narvii/model/User;

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    iget-object p3, p3, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-static {p3, v1, p4, p4}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 58
    .line 59
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 71
    move-result p1

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-interface {p5, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 77
    return-void

    .line 78
    .line 79
    :cond_4
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->iconHashMap:Ljava/util/HashMap;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result p2

    .line 92
    .line 93
    if-eqz p2, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    check-cast p2, Ljava/lang/String;

    .line 100
    .line 101
    new-instance p3, Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;

    .line 102
    .line 103
    .line 104
    invoke-direct {p3, p0}, Lcom/narvii/livelayer/LiveLayerPreloadHelper$5;-><init>(Lcom/narvii/livelayer/LiveLayerPreloadHelper;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2, p4, p3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_5
    if-eqz p5, :cond_6

    .line 111
    .line 112
    .line 113
    invoke-interface {p5, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 114
    :cond_6
    return-void
.end method
