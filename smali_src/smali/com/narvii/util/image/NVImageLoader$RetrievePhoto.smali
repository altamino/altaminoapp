.class Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;
.super Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v5, p3

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->url:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 16
    .line 17
    iput p4, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->width:I

    .line 18
    .line 19
    iput p5, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->height:I

    .line 20
    .line 21
    iput-object p6, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->cacheKey:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->canceled:Z

    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->canceled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->done:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->bmp:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 16
    .line 17
    new-instance v1, Lcom/android/volley/VolleyError;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/android/volley/VolleyError;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/android/volley/Response$ErrorListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->cacheKey:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, v2, v0}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->listener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 36
    .line 37
    new-instance v1, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->bmp:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->url:Ljava/lang/String;

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v3, v1

    .line 46
    move-object v8, v0

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v3 .. v8}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 50
    const/4 v2, 0x0

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1, v2}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->this$0:Lcom/narvii/util/image/NVImageLoader;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->url:Ljava/lang/String;

    .line 59
    .line 60
    iget v2, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->width:I

    .line 61
    .line 62
    iget v3, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->height:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/image/NVImageLoader;->loadLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->bmp:Landroid/graphics/Bitmap;

    .line 69
    const/4 v0, 0x1

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;->done:Z

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 75
    :goto_0
    return-void
.end method
