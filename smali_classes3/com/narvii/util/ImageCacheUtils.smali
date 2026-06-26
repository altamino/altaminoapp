.class public Lcom/narvii/util/ImageCacheUtils;
.super Ljava/lang/Object;
.source "ImageCacheUtils.java"


# instance fields
.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/narvii/util/ImageCacheUtils;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "00"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "128"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v7, "68"

    const/4 v8, 0x2

    aput-object v7, v2, v8

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v4

    aput-object v5, v1, v6

    aput-object v7, v1, v8

    .line 40
    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    iget-object v2, p0, Lcom/narvii/util/ImageCacheUtils;->context:Lcom/narvii/app/NVContext;

    const-string v3, "gifLoader"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/drawables/gif/GifLoader;

    if-eqz v2, :cond_5

    .line 44
    :goto_0
    array-length v3, v1

    if-ge v4, v3, :cond_5

    .line 45
    aget-object v3, v1, v4

    invoke-static {p1, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3, v6}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_3
    iget-object v2, p0, Lcom/narvii/util/ImageCacheUtils;->context:Lcom/narvii/app/NVContext;

    const-string v3, "imageLoader"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/image/NVImageLoader;

    .line 54
    :goto_1
    array-length v3, v1

    if-ge v4, v3, :cond_5

    .line 55
    aget-object v3, v1, v4

    invoke-static {p1, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/narvii/util/image/NVImageLoader;->getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 58
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method
