.class public Lcom/narvii/master/MasterAppearanceView;
.super Lcom/narvii/widget/NVImageView;
.source "SourceFile"


# instance fields
.field oldDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 7
    .line 8
    const-string p1, "fullscreen-background-image"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/master/MasterAppearanceView;->oldDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    :cond_0
    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, v1

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/narvii/master/MasterAppearanceView;->oldDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    if-nez v1, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    const/4 v5, 0x0

    .line 27
    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v4, v5, v5}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/narvii/util/drawables/gif/GifLoader;->getDiskCachedGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v4, v5

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-static {v0}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v4, v5, v5}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3}, Lcom/narvii/util/drawables/webp/WebPLoader;->isUrlCached(Ljava/lang/String;)Z

    .line 63
    move-result v4

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v4, v5, v5}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lcom/narvii/util/image/NVImageLoader;->getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v3, "load appearance image in "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    move-result-wide v5

    .line 95
    sub-long/2addr v5, v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "ms"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 111
    .line 112
    if-eqz v4, :cond_4

    .line 113
    const/4 v0, 0x0

    .line 114
    .line 115
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    goto :goto_2

    .line 117
    .line 118
    .line 119
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    const v1, 0x7f080703

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 135
    goto :goto_2

    .line 136
    .line 137
    :cond_5
    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 141
    move-result p1

    .line 142
    return p1
.end method
