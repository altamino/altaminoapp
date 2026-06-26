.class public Lcom/narvii/master/MasterAppearanceView;
.super Lcom/narvii/widget/NVImageView;
.source "MasterAppearanceView.java"


# instance fields
.field oldDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    const-string p1, "fullscreen-background-image"

    .line 26
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 62
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/narvii/master/MasterAppearanceView;->oldDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 7

    if-eqz p1, :cond_6

    .line 31
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 32
    iget-object v1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/narvii/master/MasterAppearanceView;->oldDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 36
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v4, v5, v5}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/drawables/gif/GifLoader;->getDiskCachedGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 38
    :cond_2
    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v4, v5, v5}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/drawables/webp/WebPLoader;->isUrlCached(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    invoke-virtual {p0, p1, v4, v5, v5}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/image/NVImageLoader;->getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load appearance image in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 48
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 54
    :cond_5
    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    move-result p1

    return p1
.end method
