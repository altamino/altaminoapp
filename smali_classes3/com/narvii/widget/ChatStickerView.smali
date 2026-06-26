.class public Lcom/narvii/widget/ChatStickerView;
.super Landroid/widget/FrameLayout;
.source "ChatStickerView.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# static fields
.field private static final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field image:Lcom/narvii/widget/NVImageView;

.field maxHeight:I

.field maxWidth:I

.field photoManager:Lcom/narvii/photos/PhotoManager;

.field placeholder:Landroid/view/View;

.field private refDrawable:Landroid/graphics/drawable/Drawable;

.field private refId:I

.field stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/widget/ChatStickerView;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "stickerCache"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702b1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "photo"

    .line 52
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/photos/PhotoManager;

    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->photoManager:Lcom/narvii/photos/PhotoManager;

    return-void
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 110
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object p1

    return-object p1

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    move-result-object v0

    iget v1, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    iget v2, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/util/drawables/webp/WebPLoader;->getLocalWebPDrawable(Ljava/lang/String;II)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    move-result-object p1

    return-object p1

    .line 117
    :cond_1
    sget-object v0, Lcom/narvii/widget/ChatStickerView;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_3

    .line 120
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 124
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/narvii/widget/ChatStickerView;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget-object v3, p0, Lcom/narvii/widget/ChatStickerView;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v3, v0}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    iget v4, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    sget-object v2, Lcom/narvii/widget/ChatStickerView;->cache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of memory when load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    return-object v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090571

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f09083d

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 6

    .line 139
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 142
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    iget-object p3, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v0, v2

    .line 152
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 153
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    const v0, 0x7f0702b4

    .line 155
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v3, 0x7f0702b3

    .line 157
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/high16 v3, 0x3f000000    # 0.5f

    if-lt v2, v0, :cond_1

    if-ge p1, p3, :cond_2

    :cond_1
    int-to-float v0, v0

    mul-float v0, v0, v1

    int-to-float v4, v2

    div-float/2addr v0, v4

    int-to-float p3, p3

    mul-float p3, p3, v1

    int-to-float v5, p1

    div-float/2addr p3, v5

    .line 162
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    cmpl-float v0, p3, v1

    if-eqz v0, :cond_2

    mul-float v4, v4, p3

    add-float/2addr v4, v3

    float-to-int v2, v4

    mul-float p3, p3, v5

    add-float/2addr p3, v3

    float-to-int p1, p3

    .line 168
    :cond_2
    iget p3, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    if-gt v2, p3, :cond_3

    iget p3, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    if-le p1, p3, :cond_4

    .line 169
    :cond_3
    iget p3, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    int-to-float p3, p3

    mul-float p3, p3, v1

    int-to-float v0, v2

    div-float/2addr p3, v0

    .line 170
    iget v4, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    int-to-float v5, p1

    div-float/2addr v4, v5

    .line 171
    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_4

    mul-float v0, v0, p3

    add-float/2addr v0, v3

    float-to-int p1, v0

    mul-float p3, p3, v5

    add-float/2addr p3, v3

    float-to-int p3, p3

    goto :goto_0

    :cond_4
    move p3, p1

    move p1, v2

    :goto_0
    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    if-gez p3, :cond_6

    goto :goto_1

    :cond_6
    move p2, p3

    .line 180
    :goto_1
    iget-object p3, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 181
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->url:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    instance-of v2, v1, Lcom/narvii/widget/FlexSizeImageView;

    if-eqz v2, :cond_2

    .line 73
    check-cast v1, Lcom/narvii/widget/FlexSizeImageView;

    invoke-virtual {v1, p1}, Lcom/narvii/widget/FlexSizeImageView;->setImageSizeFromUrl(Ljava/lang/String;)V

    .line 76
    :cond_2
    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->url:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 78
    iget v1, p0, Lcom/narvii/widget/ChatStickerView;->refId:I

    if-ne p3, v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    iget-object v2, p0, Lcom/narvii/widget/ChatStickerView;->refDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    iput-object v0, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 85
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    const-string v1, "file://"

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    .line 88
    iget-object v3, p0, Lcom/narvii/widget/ChatStickerView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    invoke-virtual {v3, p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    move-object p1, p2

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 96
    iput p3, p0, Lcom/narvii/widget/ChatStickerView;->refId:I

    .line 97
    invoke-direct {p0, p1}, Lcom/narvii/widget/ChatStickerView;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    iget-object p2, p0, Lcom/narvii/widget/ChatStickerView;->refDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 100
    :cond_5
    iput v2, p0, Lcom/narvii/widget/ChatStickerView;->refId:I

    .line 101
    iput-object v0, p0, Lcom/narvii/widget/ChatStickerView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object p2, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method
