.class public Lcom/narvii/link/viewer/LinkSnippetImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SourceFile"


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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/LruCache;

    .line 3
    .line 4
    const/16 v1, 0x32

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/util/LruCache;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/link/viewer/LinkSnippetImageView;->localImageWidthMap:Lcom/narvii/util/LruCache;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "photo"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 18
    .line 19
    const-string p2, "chat"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/chat/core/ChatService;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 28
    const/4 p1, 0x0

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 31
    return-void
.end method

.method private getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    move-object p1, v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroid/graphics/Bitmap;

    .line 22
    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 33
    :cond_1
    return-object v0
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

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
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/graphics/Bitmap;

    .line 39
    .line 40
    :goto_0
    if-eqz v0, :cond_2

    .line 41
    .line 42
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 50
    return-object p1

    .line 51
    .line 52
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 71
    .line 72
    iget v3, v2, Lcom/narvii/link/viewer/ImageSize;->width:I

    .line 73
    int-to-float v3, v3

    .line 74
    mul-float/2addr v3, v0

    .line 75
    .line 76
    const/high16 v4, 0x3f800000    # 1.0f

    .line 77
    mul-float/2addr v3, v4

    .line 78
    .line 79
    const/high16 v5, 0x40400000    # 3.0f

    .line 80
    div-float/2addr v3, v5

    .line 81
    float-to-int v3, v3

    .line 82
    .line 83
    iget v2, v2, Lcom/narvii/link/viewer/ImageSize;->height:I

    .line 84
    int-to-float v2, v2

    .line 85
    mul-float/2addr v2, v0

    .line 86
    mul-float/2addr v2, v4

    .line 87
    div-float/2addr v2, v5

    .line 88
    float-to-int v0, v2

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const/4 v3, 0x0

    .line 93
    move v0, v3

    .line 94
    .line 95
    :goto_1
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p1, v3, v0}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/narvii/chat/core/ChatService;->bitmapCache:Ljava/util/HashMap;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-object v2

    .line 122
    .line 123
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    const-string v3, "out of memory when load "

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 145
    :catch_1
    return-object v1
.end method


# virtual methods
.method public getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    iget-object p2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    move-object p1, p2

    .line 13
    :goto_0
    return-object p1
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 7
    .line 8
    const/high16 v1, 0x3f000000    # 0.5f

    .line 9
    .line 10
    .line 11
    const v2, 0x7f070233

    .line 12
    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    :goto_0
    move v9, v4

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/chat/ChatBubbleView;->getMaxContentWidth()I

    .line 26
    move-result v4

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :goto_1
    const/high16 v7, 0x40400000    # 3.0f

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 32
    .line 33
    iget v0, p2, Lcom/narvii/link/viewer/ImageSize;->width:I

    .line 34
    int-to-float v0, v0

    .line 35
    mul-float/2addr v0, v3

    .line 36
    .line 37
    iget p2, p2, Lcom/narvii/link/viewer/ImageSize;->height:I

    .line 38
    int-to-float p2, p2

    .line 39
    div-float/2addr v0, p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 46
    .line 47
    iget v6, p2, Lcom/narvii/link/viewer/ImageSize;->width:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    move-result v8

    .line 60
    move v10, p1

    .line 61
    .line 62
    .line 63
    invoke-static/range {v5 .. v10}, Lcom/narvii/link/viewer/LinkSnippetSizeUtils;->getAdjustedSize(Landroid/content/Context;IFIII)I

    .line 64
    move-result p1

    .line 65
    int-to-float p2, p1

    .line 66
    div-float/2addr p2, v0

    .line 67
    add-float/2addr p2, v1

    .line 68
    float-to-int p2, p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 72
    goto :goto_4

    .line 73
    .line 74
    :cond_1
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 88
    move-result v6

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 92
    move-result p2

    .line 93
    int-to-float v0, v6

    .line 94
    mul-float/2addr v0, v3

    .line 95
    int-to-float p2, p2

    .line 96
    div-float/2addr v0, p2

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 99
    .line 100
    if-nez p2, :cond_2

    .line 101
    :goto_2
    move v9, v4

    .line 102
    goto :goto_3

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/chat/ChatBubbleView;->getMaxContentWidth()I

    .line 106
    move-result v4

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :goto_3
    const/high16 v7, 0x40400000    # 3.0f

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v5

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 125
    move-result v8

    .line 126
    move v10, p1

    .line 127
    .line 128
    .line 129
    invoke-static/range {v5 .. v10}, Lcom/narvii/link/viewer/LinkSnippetSizeUtils;->getAdjustedSize(Landroid/content/Context;IFIII)I

    .line 130
    move-result p1

    .line 131
    int-to-float p2, p1

    .line 132
    div-float/2addr p2, v0

    .line 133
    add-float/2addr p2, v1

    .line 134
    float-to-int p2, p2

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 138
    goto :goto_4

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    const/high16 p2, 0x43480000    # 200.0f

    .line 145
    .line 146
    .line 147
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 148
    move-result p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 156
    move-result p2

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 160
    :goto_4
    return-void
.end method

.method public setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 8
    .line 9
    :goto_0
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->url:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    return v3

    .line 18
    .line 19
    :cond_1
    iput-object v1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->url:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 25
    move-result p2

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move p2, v3

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {p0, p1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->whenNewMediaSet(Lcom/narvii/model/Media;)V

    .line 31
    .line 32
    if-eqz p2, :cond_3

    .line 33
    .line 34
    iget v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refId:I

    .line 35
    .line 36
    if-ne p2, v2, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    goto :goto_2

    .line 42
    .line 43
    .line 44
    :cond_3
    invoke-direct {p0, v1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->getCachedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    iput-object v2, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    :goto_2
    if-eqz p2, :cond_4

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const-string v2, "photo://"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    iput p2, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refId:I

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v1}, Lcom/narvii/link/viewer/LinkSnippetImageView;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    iput-object p1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    const/4 p1, 0x1

    .line 72
    return p1

    .line 73
    .line 74
    :cond_4
    iput v3, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refId:I

    .line 75
    .line 76
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    invoke-super {p0, p1}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method protected whenNewMediaSet(Lcom/narvii/model/Media;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 8
    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    :cond_1
    const-string v1, "photo://"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    sget-object v1, Lcom/narvii/link/viewer/LinkSnippetImageView;->localImageWidthMap:Lcom/narvii/util/LruCache;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/narvii/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/link/viewer/ImageSize;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_2
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    if-eqz v3, :cond_6

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 55
    .line 56
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/link/viewer/ImageSize;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v2, v1}, Lcom/narvii/link/viewer/ImageSize;-><init>(II)V

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 70
    .line 71
    sget-object v1, Lcom/narvii/link/viewer/LinkSnippetImageView;->localImageWidthMap:Lcom/narvii/util/LruCache;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_3
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    const-string v3, "config"

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->getImageSizeFromUrl(Ljava/lang/String;Lcom/narvii/config/ConfigService;)[I

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    const/4 v0, 0x0

    .line 102
    .line 103
    aget v0, p1, v0

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    aget p1, p1, v2

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    new-instance v1, Lcom/narvii/link/viewer/ImageSize;

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v0, p1}, Lcom/narvii/link/viewer/ImageSize;-><init>(II)V

    .line 115
    .line 116
    iput-object v1, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_5
    iput-object v0, p0, Lcom/narvii/link/viewer/LinkSnippetImageView;->imageSize:Lcom/narvii/link/viewer/ImageSize;

    .line 120
    .line 121
    .line 122
    :catchall_0
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 123
    return-void
.end method
