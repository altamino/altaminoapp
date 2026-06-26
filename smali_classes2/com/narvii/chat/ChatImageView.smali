.class public Lcom/narvii/chat/ChatImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "ChatImageView.java"


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
.field chatService:Lcom/narvii/chat/core/ChatService;

.field public estimateHeight:I

.field public estimateWidth:I

.field private media:Lcom/narvii/model/Media;

.field protected photoManager:Lcom/narvii/photos/PhotoManager;

.field recordInProcessUploadMedia:Z

.field private refDrawable:Landroid/graphics/drawable/Drawable;

.field private refId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/chat/ChatImageView;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/narvii/lib/R$styleable;->ChatImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    .line 42
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    const/4 v0, 0x2

    .line 43
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/ChatImageView;->recordInProcessUploadMedia:Z

    .line 44
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "photo"

    .line 47
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/photos/PhotoManager;

    iput-object p2, p0, Lcom/narvii/chat/ChatImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    const-string p2, "chat"

    .line 48
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/core/ChatService;

    iput-object p1, p0, Lcom/narvii/chat/ChatImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 49
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    return-void
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/narvii/chat/ChatImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    sget-object v0, Lcom/narvii/chat/ChatImageView;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_2

    .line 115
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 119
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/ChatImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    iget v2, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    iget v3, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    sget-object v2, Lcom/narvii/chat/ChatImageView;->cache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
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

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of memory when load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    return-object v1
.end method


# virtual methods
.method public getEstimateHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    return v0
.end method

.method public getEstimateWidth()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    return v0
.end method

.method public getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 1

    .line 96
    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    if-eqz v0, :cond_0

    move p3, v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    if-eqz v0, :cond_1

    move p4, v0

    .line 102
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/ThumbImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setImageMedia(Lcom/narvii/model/Media;I)Z
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/narvii/chat/ChatImageView;->media:Lcom/narvii/model/Media;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/ChatImageView;->media:Lcom/narvii/model/Media;

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatImageView;->whenNewMediaSet(Lcom/narvii/model/Media;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 68
    iget v2, p0, Lcom/narvii/chat/ChatImageView;->refId:I

    if-ne p2, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/narvii/chat/ChatImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 71
    :cond_1
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-nez p1, :cond_2

    move-object v2, v0

    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    if-eqz v2, :cond_5

    const-string v3, "photo://"

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 76
    iput p2, p0, Lcom/narvii/chat/ChatImageView;->refId:I

    .line 77
    invoke-direct {p0, v2}, Lcom/narvii/chat/ChatImageView;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/ChatImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/ChatImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-boolean p1, p0, Lcom/narvii/chat/ChatImageView;->recordInProcessUploadMedia:Z

    if-eqz p1, :cond_4

    .line 80
    iget-object p1, p0, Lcom/narvii/chat/ChatImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addInProcessUploadMedia(I)V

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 84
    :cond_5
    iput v1, p0, Lcom/narvii/chat/ChatImageView;->refId:I

    .line 85
    iput-object v0, p0, Lcom/narvii/chat/ChatImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-super {p0, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    move-result p1

    return p1
.end method

.method protected whenNewMediaSet(Lcom/narvii/model/Media;)V
    .locals 0

    return-void
.end method
