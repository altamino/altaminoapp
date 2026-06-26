.class public Lcom/narvii/link/viewer/LinkSnippetImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "LinkSnippetImageView.java"


# static fields
.field private static localImageWidthMap:Lcom/narvii/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/narvii/link/viewer/ImageSize;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

.field chatService:Lcom/narvii/chat/core/ChatService;

.field imageSize:Lcom/narvii/link/viewer/ImageSize;

.field protected photoManager:Lcom/narvii/photos/PhotoManager;

.field private refDrawable:Landroid/graphics/drawable/Drawable;

.field private refId:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/narvii/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/narvii/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/narvii/link/viewer/LinkSnippetImageView;->localImageWidthMap:Lcom/narvii/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string/jumbo p2, "photo"

    .line 44
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/photos/PhotoManager;

    iput-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    const-string p2, "chat"

    .line 45
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    return-void
.end method

.method private getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    iget-object v0, v0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz p1, :cond_1

    .line 116
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v0
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    iget-object v0, v0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_2

    .line 129
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 135
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 137
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    iget v2, v2, Lcom/narvii/link/viewer/ImageSize;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 138
    iget-object v5, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    iget v5, v5, Lcom/narvii/link/viewer/ImageSize;->height:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    mul-float v5, v5, v3

    div-float/2addr v5, v4

    float-to-int v0, v5

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 141
    :goto_1
    iget-object v3, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v3, p1, v2, v0}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    iget-object v2, v2, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "out of memory when load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    return-object v1
.end method


# virtual methods
.method public getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 155
    :cond_0
    iget-object p2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 57
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 59
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x7f0701b4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 60
    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez p2, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/narvii/chat/ChatBubbleView;->getMaxContentWidth()I

    move-result v4

    move v9, v4

    :goto_0
    const/high16 v7, 0x40400000    # 3.0f

    .line 62
    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    iget v0, p2, Lcom/narvii/link/viewer/ImageSize;->width:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    iget p2, p2, Lcom/narvii/link/viewer/ImageSize;->height:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    iget v6, p2, Lcom/narvii/link/viewer/ImageSize;->width:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v10, p1

    invoke-static/range {v5 .. v10}, Lcom/narvii/link/viewer/LinkSnippetSizeUtils;->getAdjustedSize(Landroid/content/Context;IFIII)I

    move-result p1

    int-to-float p2, p1

    div-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_2

    .line 66
    :cond_1
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 67
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 68
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 69
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float v0, v6

    mul-float v0, v0, v3

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 71
    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez p2, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/narvii/chat/ChatBubbleView;->getMaxContentWidth()I

    move-result v4

    move v9, v4

    :goto_1
    const/high16 v7, 0x40400000    # 3.0f

    .line 74
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move v10, p1

    invoke-static/range {v5 .. v10}, Lcom/narvii/link/viewer/LinkSnippetSizeUtils;->getAdjustedSize(Landroid/content/Context;IFIII)I

    move-result p1

    int-to-float p2, p1

    div-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x43480000    # 200.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :goto_2
    return-void
.end method

.method public setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 88
    :cond_1
    iput-object v1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->url:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 90
    iget p2, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 92
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->whenNewMediaSet(Lcom/narvii/model/Media;)V

    if-eqz p2, :cond_3

    .line 94
    iget v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refId:I

    if-ne p2, v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 97
    :cond_3
    invoke-direct {p0, v1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    const-string/jumbo v2, "photo://"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    iput p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refId:I

    .line 102
    invoke-direct {p0, v1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    iget-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    return p1

    .line 106
    :cond_4
    iput v3, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refId:I

    .line 107
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-super {p0, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    move-result p1

    return p1
.end method

.method protected whenNewMediaSet(Lcom/narvii/model/Media;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "photo://"

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 165
    sget-object v1, Lcom/narvii/link/viewer/LinkSnippetImageView;->localImageWidthMap:Lcom/narvii/util/LruCache;

    invoke-virtual {v1, p1}, Lcom/narvii/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/link/viewer/ImageSize;

    if-eqz v1, :cond_2

    .line 167
    iput-object v1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    goto :goto_1

    .line 170
    :cond_2
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 171
    iget-object v3, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v3, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 173
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 174
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 176
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_3

    .line 177
    new-instance v0, Lcom/narvii/link/viewer/ImageSize;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v2, v1}, Lcom/narvii/link/viewer/ImageSize;-><init>(II)V

    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 178
    sget-object v0, Lcom/narvii/link/viewer/LinkSnippetImageView;->localImageWidthMap:Lcom/narvii/util/LruCache;

    iget-object v1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_3
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 188
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v3, "config"

    .line 189
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 191
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->getImageSizeFromUrl(Ljava/lang/String;Lcom/narvii/config/ConfigService;)[I

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 193
    aget v1, p1, v0

    if-eqz v1, :cond_6

    aget v1, p1, v2

    if-eqz v1, :cond_6

    .line 194
    new-instance v1, Lcom/narvii/link/viewer/ImageSize;

    aget v0, p1, v0

    aget p1, p1, v2

    invoke-direct {v1, v0, p1}, Lcom/narvii/link/viewer/ImageSize;-><init>(II)V

    iput-object v1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    goto :goto_1

    .line 197
    :cond_5
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 201
    :catchall_0
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
