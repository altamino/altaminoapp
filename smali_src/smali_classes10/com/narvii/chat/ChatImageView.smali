.class public Lcom/narvii/chat/ChatImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/chat/ChatImageView;->cache:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->ChatImageView:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 15
    move-result v2

    .line 16
    .line 17
    iput v2, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 21
    move-result v1

    .line 22
    .line 23
    iput v1, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    .line 24
    const/4 v1, 0x2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/narvii/chat/ChatImageView;->recordInProcessUploadMedia:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string p2, "photo"

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/narvii/chat/ChatImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 48
    .line 49
    const-string p2, "chat"

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/chat/ChatImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 60
    return-void
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->isGif(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/util/drawables/gif/GifLoader;->getLocalGifDrawable(Ljava/lang/String;)Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/narvii/chat/ChatImageView;->cache:Ljava/util/HashMap;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    move-object v1, v2

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Landroid/graphics/Bitmap;

    .line 37
    .line 38
    :goto_0
    if-eqz v1, :cond_2

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 48
    return-object p1

    .line 49
    .line 50
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/narvii/chat/ChatImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 51
    .line 52
    iget v3, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    .line 53
    .line 54
    iget v4, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1, v3, v4}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v3, "out of memory when load "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 101
    :catch_1
    return-object v2
.end method


# virtual methods
.method public getEstimateHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    return v0
.end method

.method public getEstimateWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    return v0
.end method

.method public getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateWidth:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move p3, v0

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/chat/ChatImageView;->estimateHeight:I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    move p4, v0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/ThumbImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public setImageMedia(Lcom/narvii/model/Media;I)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatImageView;->media:Lcom/narvii/model/Media;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/ChatImageView;->media:Lcom/narvii/model/Media;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatImageView;->whenNewMediaSet(Lcom/narvii/model/Media;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/chat/ChatImageView;->refId:I

    .line 21
    .line 22
    if-ne p2, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/chat/ChatImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :goto_0
    if-nez p1, :cond_2

    .line 32
    move-object v2, v0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    iget-object v2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 40
    .line 41
    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    .line 42
    .line 43
    if-eqz v2, :cond_5

    .line 44
    .line 45
    const-string v3, "photo://"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    iput p2, p0, Lcom/narvii/chat/ChatImageView;->refId:I

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v2}, Lcom/narvii/chat/ChatImageView;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/chat/ChatImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/narvii/chat/ChatImageView;->recordInProcessUploadMedia:Z

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/chat/ChatImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->addInProcessUploadMedia(I)V

    .line 72
    :cond_4
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    .line 75
    :cond_5
    iput v1, p0, Lcom/narvii/chat/ChatImageView;->refId:I

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/chat/ChatImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    invoke-super {p0, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method protected whenNewMediaSet(Lcom/narvii/model/Media;)V
    .locals 0

    return-void
.end method
