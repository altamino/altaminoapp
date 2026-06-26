.class public Lcom/narvii/util/image/NVImageLoader;
.super Lcom/android/volley/toolbox/ImageLoader;
.source "NVImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/image/NVImageLoader$Worker;,
        Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;
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

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    .line 413
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->retrieveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    .line 50
    iput-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    .line 51
    iput-object p3, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    .line 52
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->contentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "activity"

    .line 54
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    .line 55
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p2

    iput p2, p0, Lcom/narvii/util/image/NVImageLoader;->memoryClass:I

    .line 56
    iget p2, p0, Lcom/narvii/util/image/NVImageLoader;->memoryClass:I

    const/16 p3, 0x20

    if-gt p2, p3, :cond_0

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "running on low memory class: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/narvii/util/image/NVImageLoader;->memoryClass:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 61
    sget p2, Lcom/narvii/lib/R$dimen;->thumb_default_size:I

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/util/image/NVImageLoader;->photoThumbnailSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/image/NVImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/util/image/NVImageLoader;->retrieveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/image/NVImageLoader;)Lcom/narvii/util/image/NVImageLoader$Worker;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/util/image/NVImageLoader;Lcom/narvii/util/image/NVImageLoader$Worker;)Lcom/narvii/util/image/NVImageLoader$Worker;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    return-object p1
.end method

.method private getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 342
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

    .line 313
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 314
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 315
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    .line 316
    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 317
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 318
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 319
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 320
    invoke-static {v0, v4, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    move-result p2

    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 322
    iput-boolean p2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 323
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 324
    iget-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 325
    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 326
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p2
.end method

.method private loadFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 290
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 291
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 292
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 293
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 294
    invoke-static {v2, v3, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 297
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 298
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 299
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 301
    :try_start_0
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getRotation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p2, :cond_0

    .line 303
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p1

    :catchall_0
    :cond_0
    return-object p2
.end method

.method private loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private loadFromRes(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawer"

    .line 259
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 261
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->drawerImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 262
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 263
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 268
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    .line 269
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_1

    const-string p2, "mipmap"

    goto :goto_0

    :cond_1
    const-string p2, "drawable"

    .line 270
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    const/16 p2, 0x1e0

    .line 272
    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 273
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 280
    :catch_0
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 281
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 285
    :catch_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private startWorker()V
    .locals 1

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/narvii/util/image/NVImageLoader$Worker;

    invoke-direct {v0, p0}, Lcom/narvii/util/image/NVImageLoader$Worker;-><init>(Lcom/narvii/util/image/NVImageLoader;)V

    iput-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    .line 420
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->worker:Lcom/narvii/util/image/NVImageLoader$Worker;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 422
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .locals 9

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x800

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    const/16 v6, 0x800

    goto :goto_0

    :cond_0
    move v6, p3

    :goto_0
    if-nez p4, :cond_1

    const/16 v7, 0x800

    goto :goto_1

    :cond_1
    move v7, p4

    :goto_1
    const-string/jumbo p3, "res://"

    .line 87
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    const/4 p3, 0x6

    .line 88
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    new-instance p3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 90
    invoke-interface {p2, p3, p4}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-object p3

    :cond_2
    const-string p3, "mipmap://"

    .line 95
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x9

    .line 96
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 97
    new-instance p3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 98
    invoke-interface {p2, p3, p4}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-object p3

    .line 103
    :cond_3
    invoke-direct {p0, p1, v6, v7}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 104
    iget-object p3, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {p3, v8}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 107
    new-instance p3, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/android/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V

    .line 108
    invoke-interface {p2, p3, p4}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-object p3

    .line 113
    :cond_4
    new-instance p3, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lcom/narvii/util/image/NVImageLoader$RetrievePhoto;-><init>(Lcom/narvii/util/image/NVImageLoader;Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILjava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/narvii/util/image/NVImageLoader;->retrieveQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/narvii/util/image/NVImageLoader;->startWorker()V

    return-object p3

    .line 119
    :cond_5
    invoke-super {p0, p1, p2, v1, v1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    return-object p1
.end method

.method protected getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3f

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#W"

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#H"

    .line 335
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "#S"

    .line 336
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_0

    const/4 p2, 0x0

    .line 337
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/16 v0, 0x800

    .line 346
    invoke-direct {p0, p1, v0, v0}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, p1}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 377
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 382
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v2, v1, Lcom/android/volley/Cache$Entry;->data:[B

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/android/volley/Cache$Entry;->data:[B

    array-length v1, v1

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x800

    .line 385
    invoke-direct {p0, p1, v1, v1}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 386
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, p1, v0}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 391
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    :cond_1
    return-object v0
.end method

.method public getImageCache()Lcom/android/volley/toolbox/ImageLoader$ImageCache;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    return-object v0
.end method

.method public getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 139
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->isLocal(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "://"

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 147
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x3

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "res"

    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    invoke-direct {p0, v0}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v3, "mipmap"

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    .line 156
    invoke-direct {p0, v0, p1}, Lcom/narvii/util/image/NVImageLoader;->loadFromRes(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p4, :cond_4

    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 166
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, v1}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 172
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p4, :cond_5

    if-eqz p1, :cond_5

    .line 175
    iget-object p2, p0, Lcom/narvii/util/image/NVImageLoader;->cache:Lcom/android/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {p2, v1, p1}, Lcom/android/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_5
    return-object p1
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public isLocal(Ljava/lang/String;)Z
    .locals 2

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 130
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "res://"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "photo://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "assets://"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mediastore://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mipmap://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isUrlCached(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 359
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return v2

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public loadDiskCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/volley/Cache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p1, Lcom/android/volley/Cache$Entry;->data:[B

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/volley/Cache$Entry;->data:[B

    array-length p1, p1

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 408
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method loadLocalBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "://"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "photo"

    .line 187
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "OutOfMemory when open image"

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 188
    iget-object v0, p0, Lcom/narvii/util/image/NVImageLoader;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 189
    iget v2, p0, Lcom/narvii/util/image/NVImageLoader;->photoThumbnailSize:I

    if-gt p2, v2, :cond_1

    if-gt p3, v2, :cond_1

    .line 190
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 193
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    return-object p1

    :catch_0
    move-exception p1

    .line 195
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 196
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 197
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "assets"

    .line 201
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    add-int/2addr v0, v4

    .line 203
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromAssets(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 208
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 209
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 210
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception p2

    .line 206
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to load image from assets "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "file"

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "fail to load image from "

    if-eqz v0, :cond_4

    .line 214
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    .line 218
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 219
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 220
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_4
    move-exception p2

    .line 216
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const-string v0, "mediastore"

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 224
    :try_start_3
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImageId(Ljava/lang/String;)J

    move-result-wide v7

    .line 226
    iget v0, p0, Lcom/narvii/util/image/NVImageLoader;->memoryClass:I

    const/16 v2, 0x20

    if-le v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    if-nez v0, :cond_6

    const/16 v0, 0x80

    if-gt p2, v0, :cond_5

    if-gt p3, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    .line 229
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->isVideo(Ljava/lang/String;)Z

    move-result v0

    .line 230
    iget-object v2, p0, Lcom/narvii/util/image/NVImageLoader;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v7, v8, v4, v0}, Lcom/narvii/util/image/MediaStoreUtils;->getThumbnailFromMediaStore(Landroid/content/ContentResolver;JIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    .line 232
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getImagePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/narvii/util/image/NVImageLoader;->loadFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    :cond_7
    return-object v2

    :catch_5
    move-exception p1

    .line 241
    iput-boolean v6, p0, Lcom/narvii/util/image/NVImageLoader;->outofmemory:Z

    .line 242
    invoke-static {v5}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_6
    move-exception p2

    .line 239
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 246
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "load bitmap from unknown scheme "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :catch_7
    :goto_1
    return-object v1
.end method
