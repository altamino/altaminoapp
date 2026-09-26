.class public Lcom/narvii/util/ImageCacheUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/ImageCacheUtils;->context:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    const-string v1, "00"

    .line 7
    .line 8
    const-string v2, "128"

    .line 9
    .line 10
    const-string v3, "68"

    .line 11
    .line 12
    .line 13
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    .line 17
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/widget/NVImageView;->isGif(Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v4, v1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/util/ImageCacheUtils;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    const-string v3, "gifLoader"

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 44
    .line 45
    if-eqz v1, :cond_5

    .line 46
    :goto_1
    array-length v3, v4

    .line 47
    .line 48
    if-ge v2, v3, :cond_5

    .line 49
    .line 50
    aget-object v3, v4, v2

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3, v5}, Lcom/narvii/util/drawables/gif/GifLoader;->getCachedGifDrawable(Ljava/lang/String;Z)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    return-object v3

    .line 63
    .line 64
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_3
    iget-object v1, p0, Lcom/narvii/util/ImageCacheUtils;->context:Lcom/narvii/app/NVContext;

    .line 68
    .line 69
    const-string v3, "imageLoader"

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Lcom/narvii/util/image/NVImageLoader;

    .line 76
    :goto_2
    array-length v3, v4

    .line 77
    .line 78
    if-ge v2, v3, :cond_5

    .line 79
    .line 80
    aget-object v3, v4, v2

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v3}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lcom/narvii/util/image/NVImageLoader;->getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    .line 92
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    return-object p1

    .line 97
    .line 98
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_5
    return-object v0
.end method
