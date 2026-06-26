.class Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;
.super Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.source "NVImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/image/NVImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetrievePhoto"
.end annotation


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field cacheKey:Ljava/lang/String;

.field canceled:Z

.field done:Z

.field height:I

.field listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field final synthetic this$0:Lcom/narvii/util/image/NVImageLoader;

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>(Lcom/narvii/util/image/NVImageLoader;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILjava/lang/String;)V
    .locals 6

    .line 436
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 437
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 438
    iput-object p2, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->url:Ljava/lang/String;

    .line 439
    iput-object p3, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 440
    iput p4, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->width:I

    .line 441
    iput p5, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->height:I

    .line 442
    iput-object p6, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->cacheKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->canceled:Z

    return-void
.end method

.method public run()V
    .locals 9

    .line 452
    iget-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->done:Z

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    iget-object v1, v1, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    iget-object v2, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->cacheKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 459
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    new-instance v1, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    iget-object v4, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    iget-object v5, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->bmp:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->url:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->url:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->width:I

    iget v3, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/image/NVImageLoader;->loadLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->bmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->done:Z

    .line 464
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
