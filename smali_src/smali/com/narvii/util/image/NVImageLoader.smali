.class public Lcom/narvii/util/image/NVImageLoader;
.super Lcom/android/volley/toolbox/ImageLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;,
        Lcom/narvii/util/image/NVImageLoader$Worker;
    }
.end annotation


# static fields
.field public static final MAX_SIZE:I = 0x800


# instance fields
.field cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

.field contentResolver:Landroid/content/ContentResolver;

.field context:Lcom/narvii/app/NVContext;

.field memoryClass:I

.field outofmemory:Z

.field photoThumbnailSize:I

.field queue:Lcom/android/volley/RequestQueue;

.field private final retrieveQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private worker:Lcom/narvii/util/image/NVImageLoader$Worker;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->retrieveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    const-string p3, "activity"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    check-cast p2, Landroid/app/ActivityManager;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 42
    move-result p2

    .line 43
    .line 44
    iput p2, p0, Lcom/narvii/util/image/NVImageLoader;->memoryClass:I

    .line 45
    .line 46
    const/16 p3, 0x20

    .line 47
    .line 48
    if-gt p2, p3, :cond_0

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string p3, "running on low memory class: "

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget p3, p0, Lcom/narvii/util/image/NVImageLoader;->memoryClass:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    sget p2, Lcom/narvii/lib/R$dimen;->thumb_default_size:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    move-result p1

    .line 85
    .line 86
    iput p1, p0, Lcom/narvii/util/image/NVImageLoader;->photoThumbnailSize:I

    .line 87
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/util/image/NVImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/image/NVImageLoader;->retrieveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/util/image/NVImageLoader;)Lcom/narvii/util/image/NVImageLoader$Worker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/util/image/NVImageLoader;Lcom/narvii/util/image/NVImageLoader$Worker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    return-void
.end method

.method private getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadFromAssets(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 30
    .line 31
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 32
    .line 33
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v4, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    .line 37
    move-result p2

    .line 38
    .line 39
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 40
    const/4 p2, 0x0

    .line 41
    .line 42
    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 43
    .line 44
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 66
    return-object p2
.end method

.method private loadFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 12
    .line 13
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    .line 15
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v3, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    .line 19
    move-result p2

    .line 20
    .line 21
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getRotation(Ljava/lang/String;)I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-eq p1, p2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    move-object p2, p1

    .line 45
    :catchall_0
    :cond_0
    return-object p2
.end method

.method private loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private loadFromRes(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    .line 2
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawer"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    .line 4
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 5
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->drawerImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string p2, "mipmap"

    goto :goto_0

    :cond_1
    const-string p2, "drawable"

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const/16 p2, 0x1e0

    .line 10
    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 11
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 12
    :catch_0
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 14
    :catch_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private startWorker()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/image/NVImageLoader$Worker;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/util/image/NVImageLoader$Worker;-><init>(Lcom/narvii/util/image/NVImageLoader;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x800

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    move v6, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v6, p3

    .line 14
    .line 15
    :goto_0
    if-nez p4, :cond_1

    .line 16
    move v7, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v7, p4

    .line 19
    .line 20
    :goto_1
    const-string p3, "res://"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    move-result p3

    .line 25
    const/4 p4, 0x1

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    const/4 p3, 0x6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object p3

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    new-instance p3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v0, p3

    .line 42
    move-object v1, p0

    .line 43
    move-object v3, p1

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p3, p4}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 50
    return-object p3

    .line 51
    .line 52
    :cond_2
    const-string p3, "mipmap://"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    move-result p3

    .line 57
    .line 58
    if-eqz p3, :cond_3

    .line 59
    .line 60
    const/16 p3, 0x9

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    new-instance p3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    move-object v0, p3

    .line 74
    move-object v1, p0

    .line 75
    move-object v3, p1

    .line 76
    .line 77
    .line 78
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, p3, p4}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 82
    return-object p3

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-direct {p0, p1, v6, v7}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    .line 86
    move-result-object v8

    .line 87
    .line 88
    iget-object p3, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 89
    .line 90
    .line 91
    invoke-interface {p3, v8}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    new-instance p3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v0, p3

    .line 100
    move-object v1, p0

    .line 101
    move-object v3, p1

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, p3, p4}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    .line 108
    return-object p3

    .line 109
    .line 110
    :cond_4
    new-instance p3, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;

    .line 111
    move-object v2, p3

    .line 112
    move-object v3, p0

    .line 113
    move-object v4, p1

    .line 114
    move-object v5, p2

    .line 115
    .line 116
    .line 117
    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;-><init>(Lcom/narvii/util/image/NVImageLoader;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILjava/lang/String;)V

    .line 118
    .line 119
    iget-object p1, p0, Lcom/narvii/util/image/NVImageLoader;->retrieveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-direct {p0}, Lcom/narvii/util/image/NVImageLoader;->startWorker()V

    .line 126
    return-object p3

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-super {p0, p1, p2, v1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 130
    move-result-object p1

    .line 131
    return-object p1
.end method

.method protected getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#W"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#H"

    .line 4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#S"

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_0

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x800

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v0}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p1}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/volley/Cache$Entry;->data:[B

    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/16 v1, 0x800

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, v1, v1}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, p1, v0}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object v0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 44
    :catch_1
    :cond_1
    return-object v0
.end method

.method public getImageCache()Lcom/android/volley/toolbox/ImageLoader$ImageCache;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    return-object v0
.end method

.method public getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    const-string v0, "://"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-gez v0, :cond_1

    .line 17
    return-object v1

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v3, "res"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    .line 49
    :cond_2
    const-string v3, "mipmap"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    const/4 p1, 0x1

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0, p1}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    :cond_3
    if-nez p4, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    return-object v0

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    if-nez p4, :cond_5

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    iget-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 87
    .line 88
    .line 89
    invoke-interface {p2, v1, p1}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 90
    :cond_5
    return-object p1
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public isLocal(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "res://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "file://"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "photo://"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string v0, "assets://"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const-string v0, "mediastore://"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const-string v0, "mipmap://"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    :cond_1
    const/4 v1, 0x1

    .line 64
    :cond_2
    return v1
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    return v2

    .line 13
    .line 14
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    return v2

    .line 37
    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public loadDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/volley/Cache$Entry;->data:[B

    .line 15
    array-length v0, p1

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 26
    :catch_1
    :cond_0
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method loadLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    .line 2
    const-string v0, "://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-gez v0, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "photo"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v4

    .line 28
    .line 29
    const-string v5, "OutOfMemory when open image"

    .line 30
    const/4 v6, 0x1

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/util/image/NVImageLoader;->photoThumbnailSize:I

    .line 43
    .line 44
    if-gt p2, v2, :cond_1

    .line 45
    .line 46
    if-gt p3, v2, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    .line 53
    .line 54
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 55
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 56
    return-object p1

    .line 57
    :catch_0
    move-exception p1

    .line 58
    .line 59
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 60
    .line 61
    .line 62
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_2
    const-string v3, "assets"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x3

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    add-int/2addr v0, v4

    .line 78
    .line 79
    .line 80
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromAssets(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 85
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    return-object p1

    .line 87
    :catch_1
    move-exception p1

    .line 88
    goto :goto_0

    .line 89
    :catch_2
    move-exception p2

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :goto_0
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 93
    .line 94
    .line 95
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v0, "fail to load image from assets "

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    goto/16 :goto_7

    .line 123
    .line 124
    :cond_3
    const-string v0, "file"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v0

    .line 129
    .line 130
    const-string v3, "fail to load image from "

    .line 131
    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    .line 135
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 144
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 145
    return-object p1

    .line 146
    :catch_3
    move-exception p1

    .line 147
    goto :goto_2

    .line 148
    :catch_4
    move-exception p2

    .line 149
    goto :goto_3

    .line 150
    .line 151
    :goto_2
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 152
    .line 153
    .line 154
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    goto/16 :goto_7

    .line 160
    .line 161
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    goto/16 :goto_7

    .line 180
    .line 181
    :cond_4
    const-string v0, "mediastore"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v0

    .line 186
    .line 187
    if-eqz v0, :cond_8

    .line 188
    .line 189
    .line 190
    :try_start_3
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImageId(Ljava/lang/String;)J

    .line 191
    move-result-wide v7

    .line 192
    .line 193
    iget v0, p0, Lcom/narvii/util/image/NVImageLoader;->memoryClass:I

    .line 194
    .line 195
    const/16 v2, 0x20

    .line 196
    .line 197
    if-le v0, v2, :cond_6

    .line 198
    .line 199
    iget-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 200
    .line 201
    if-nez v0, :cond_6

    .line 202
    .line 203
    const/16 v0, 0x80

    .line 204
    .line 205
    if-gt p2, v0, :cond_5

    .line 206
    .line 207
    if-gt p3, v0, :cond_5

    .line 208
    goto :goto_4

    .line 209
    :cond_5
    move v4, v6

    .line 210
    goto :goto_4

    .line 211
    :catch_5
    move-exception p1

    .line 212
    goto :goto_5

    .line 213
    :catch_6
    move-exception p2

    .line 214
    goto :goto_6

    .line 215
    .line 216
    .line 217
    :cond_6
    :goto_4
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->isVideo(Ljava/lang/String;)Z

    .line 218
    move-result v0

    .line 219
    .line 220
    iget-object v2, p0, Lcom/narvii/util/image/NVImageLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v7, v8, v4, v0}, Lcom/narvii/util/image/MediaStoreUtils;->getThumbnailFromMediaStore(Landroid/content/ContentResolver;JIZ)Landroid/graphics/Bitmap;

    .line 224
    move-result-object v2

    .line 225
    .line 226
    if-nez v2, :cond_7

    .line 227
    .line 228
    if-nez v0, :cond_7

    .line 229
    .line 230
    .line 231
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 242
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    .line 243
    :cond_7
    return-object v2

    .line 244
    .line 245
    :goto_5
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 246
    .line 247
    .line 248
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 252
    goto :goto_7

    .line 253
    .line 254
    :goto_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object p1

    .line 268
    .line 269
    .line 270
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    goto :goto_7

    .line 272
    .line 273
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    const-string p2, "load bitmap from unknown scheme "

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object p1

    .line 289
    .line 290
    .line 291
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 292
    :catch_7
    :goto_7
    return-object v1
.end method
