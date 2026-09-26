.class public Lcom/narvii/widget/ChatStickerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

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

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/widget/ChatStickerView;->cache:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string p2, "stickerCache"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/sticker/StickerCacheService;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0704e7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p1

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    const p2, 0x7f0704e6

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result p1

    .line 50
    .line 51
    iput p1, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    const-string p2, "photo"

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/photos/PhotoManager;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 70
    return-void
.end method

.method private getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getGifLoader()Lcom/narvii/util/drawables/gif/GifLoader;

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
    .line 20
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getWebPLoader()Lcom/narvii/util/drawables/webp/WebPLoader;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    .line 32
    .line 33
    iget v2, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/util/drawables/webp/WebPLoader;->getLocalWebPDrawable(Ljava/lang/String;II)Lcom/narvii/util/drawables/webp/WrapWebPDrawable;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_1
    sget-object v0, Lcom/narvii/widget/ChatStickerView;->cache:Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    move-object v1, v2

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Landroid/graphics/Bitmap;

    .line 58
    .line 59
    :goto_0
    if-eqz v1, :cond_3

    .line 60
    .line 61
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 69
    return-object p1

    .line 70
    .line 71
    :cond_3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/widget/ChatStickerView;->photoManager:Lcom/narvii/photos/PhotoManager;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    iget v4, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    .line 91
    .line 92
    iget v5, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1, v4, v5}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    const-string v3, "out of memory when load "

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 139
    :catch_1
    return-object v2
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06eb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0af3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    .line 24
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 18
    .line 19
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    .line 21
    iget-object p3, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 45
    int-to-float v0, v0

    .line 46
    .line 47
    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    mul-float/2addr v0, v1

    .line 49
    .line 50
    const/high16 v2, 0x43b40000    # 360.0f

    .line 51
    div-float/2addr v0, v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    mul-float/2addr v2, v0

    .line 58
    float-to-int v2, v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 62
    move-result p1

    .line 63
    int-to-float p1, p1

    .line 64
    mul-float/2addr p1, v0

    .line 65
    float-to-int p1, p1

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0704e9

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    const v3, 0x7f0704e8

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    move-result p3

    .line 80
    .line 81
    const/high16 v3, 0x3f000000    # 0.5f

    .line 82
    .line 83
    if-lt v2, v0, :cond_1

    .line 84
    .line 85
    if-ge p1, p3, :cond_2

    .line 86
    :cond_1
    int-to-float v0, v0

    .line 87
    mul-float/2addr v0, v1

    .line 88
    int-to-float v4, v2

    .line 89
    div-float/2addr v0, v4

    .line 90
    int-to-float p3, p3

    .line 91
    mul-float/2addr p3, v1

    .line 92
    int-to-float v5, p1

    .line 93
    div-float/2addr p3, v5

    .line 94
    .line 95
    .line 96
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    .line 97
    move-result p3

    .line 98
    .line 99
    cmpl-float v0, p3, v1

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    mul-float/2addr v4, p3

    .line 103
    add-float/2addr v4, v3

    .line 104
    float-to-int v2, v4

    .line 105
    mul-float/2addr p3, v5

    .line 106
    add-float/2addr p3, v3

    .line 107
    float-to-int p1, p3

    .line 108
    .line 109
    :cond_2
    iget p3, p0, Lcom/narvii/widget/ChatStickerView;->maxWidth:I

    .line 110
    .line 111
    if-gt v2, p3, :cond_3

    .line 112
    .line 113
    iget v0, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    .line 114
    .line 115
    if-le p1, v0, :cond_4

    .line 116
    :cond_3
    int-to-float p3, p3

    .line 117
    mul-float/2addr p3, v1

    .line 118
    int-to-float v0, v2

    .line 119
    div-float/2addr p3, v0

    .line 120
    .line 121
    iget v4, p0, Lcom/narvii/widget/ChatStickerView;->maxHeight:I

    .line 122
    int-to-float v4, v4

    .line 123
    mul-float/2addr v4, v1

    .line 124
    int-to-float v5, p1

    .line 125
    div-float/2addr v4, v5

    .line 126
    .line 127
    .line 128
    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    .line 129
    move-result p3

    .line 130
    .line 131
    cmpl-float v1, p3, v1

    .line 132
    .line 133
    if-eqz v1, :cond_4

    .line 134
    mul-float/2addr v0, p3

    .line 135
    add-float/2addr v0, v3

    .line 136
    float-to-int v2, v0

    .line 137
    mul-float/2addr p3, v5

    .line 138
    add-float/2addr p3, v3

    .line 139
    float-to-int p1, p3

    .line 140
    .line 141
    :cond_4
    if-gez v2, :cond_5

    .line 142
    move v2, p2

    .line 143
    .line 144
    :cond_5
    if-gez p1, :cond_6

    .line 145
    goto :goto_0

    .line 146
    :cond_6
    move p2, p1

    .line 147
    .line 148
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    .line 156
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    .line 158
    iget-object p2, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    .line 164
    .line 165
    const/16 p2, 0x8

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    return-void
.end method

.method public setStickerImage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->url:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->placeholder:Landroid/view/View;

    .line 21
    .line 22
    instance-of v2, v1, Lcom/narvii/widget/FlexSizeImageView;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/widget/FlexSizeImageView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Lcom/narvii/widget/FlexSizeImageView;->setImageSizeFromUrl(Ljava/lang/String;)V

    .line 30
    .line 31
    :cond_2
    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->url:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p3, :cond_3

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/widget/ChatStickerView;->refId:I

    .line 36
    .line 37
    if-ne p3, v1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/widget/ChatStickerView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iput-object v2, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 47
    .line 48
    iput-object v0, v1, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 60
    .line 61
    const-string v1, "file://"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-nez v3, :cond_4

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/widget/ChatStickerView;->stickerCacheService:Lcom/narvii/sticker/StickerCacheService;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p2, p1}, Lcom/narvii/sticker/StickerCacheService;->getLocalUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    if-eqz p2, :cond_4

    .line 78
    move-object p1, p2

    .line 79
    .line 80
    :cond_4
    if-eqz p3, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result p2

    .line 85
    .line 86
    if-eqz p2, :cond_5

    .line 87
    .line 88
    iput p3, p0, Lcom/narvii/widget/ChatStickerView;->refId:I

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/narvii/widget/ChatStickerView;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iput-object p1, p0, Lcom/narvii/widget/ChatStickerView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    iget-object p2, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_5
    iput v2, p0, Lcom/narvii/widget/ChatStickerView;->refId:I

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/widget/ChatStickerView;->refDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    iget-object p2, p0, Lcom/narvii/widget/ChatStickerView;->image:Lcom/narvii/widget/NVImageView;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 110
    :goto_1
    return-void
.end method
