.class public Lcom/narvii/sharedfolder/SharedPhotoTouchImageView;
.super Lcom/narvii/widget/TouchImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 7
    return-void
.end method


# virtual methods
.method protected getCachedBitmap(Ljava/lang/String;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v1, "prefetch shared photo bitmap 00 "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 47
    return v2

    .line 48
    .line 49
    :cond_0
    const-string v1, "280"

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 69
    .line 70
    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v1, "prefetch shared photo bitmap 280 "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 93
    return v2

    .line 94
    :cond_1
    const/4 p1, 0x0

    .line 95
    return p1
.end method
