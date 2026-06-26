.class public Lcom/narvii/media/SaveImageFragment;
.super Lcom/narvii/app/NVFragment;
.source "SaveImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;
    }
.end annotation


# instance fields
.field private final gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field outFile:Ljava/io/File;

.field pendingReplaceUrl:Z

.field pendingUrl:Ljava/lang/String;

.field private progressDialog:Landroid/app/Dialog;

.field private running:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private runningGif:Ljava/lang/String;

.field saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

.field saveImageHelper:Lcom/narvii/media/SaveImageHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 334
    new-instance v0, Lcom/narvii/media/SaveImageFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/media/SaveImageFragment$5;-><init>(Lcom/narvii/media/SaveImageFragment;)V

    iput-object v0, p0, Lcom/narvii/media/SaveImageFragment;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/SaveImageFragment;)Lcom/android/volley/Request;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/media/SaveImageFragment;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/media/SaveImageFragment;->runningGif:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->runningGif:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/media/SaveImageFragment;)Landroid/app/Dialog;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/SaveImageFragment;->getExistsFile(Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/media/SaveImageFragment;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/SaveImageFragment;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getExistsFile(Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;
    .locals 11

    .line 441
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Amino"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 443
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 445
    array-length v1, p2

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 448
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 451
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, p1, v6

    .line 452
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 453
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v1

    if-nez v10, :cond_2

    .line 454
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_2
    if-ltz p1, :cond_9

    .line 460
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz p2, :cond_4

    .line 464
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 465
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 466
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 467
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 468
    invoke-static {v5, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_8

    return-object v1

    :catchall_0
    move-exception v1

    .line 472
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    if-eqz p3, :cond_8

    const/16 v2, 0x1000

    :try_start_1
    new-array v5, v2, [B

    new-array v2, v2, [B

    .line 478
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 479
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 482
    :cond_5
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 483
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-eq v10, v9, :cond_7

    if-eq v8, v10, :cond_6

    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    .line 488
    :cond_6
    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 493
    :goto_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 494
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_8

    return-object v1

    :catchall_1
    move-exception v1

    .line 499
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private getExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".jpg"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "image/jpeg"

    .line 422
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "image/png"

    .line 425
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, ".png"

    return-object p1

    :cond_2
    const-string v1, "image/pjpeg"

    .line 428
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "image/tiff"

    .line 431
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, ".tiff"

    return-object p1

    :cond_4
    const-string v1, "image/gif"

    .line 434
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ".gif"

    return-object p1

    :cond_5
    return-object v0
.end method

.method public static getNewFile(Ljava/lang/String;)Ljava/io/File;
    .locals 9

    .line 507
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Amino"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 509
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyyMMdd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 510
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 512
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 513
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 515
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 516
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    .line 517
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-lez v8, :cond_0

    .line 519
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 521
    :cond_0
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_5

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 533
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 535
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v3, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-999"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_7

    const-string p0, ".jpg"

    :cond_7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 546
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private saveGifImage(Ljava/lang/String;)V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "gifLoader"

    .line 270
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 271
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 272
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->runningGif:Ljava/lang/String;

    .line 273
    new-instance v1, Lcom/narvii/media/SaveImageFragment$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/media/SaveImageFragment$4;-><init>(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Lcom/narvii/util/drawables/gif/GifLoader;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 179
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 181
    new-instance v5, Lcom/narvii/media/SaveImageFragment$2;

    invoke-direct {v5, p0, p1}, Lcom/narvii/media/SaveImageFragment$2;-><init>(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/narvii/media/SaveImageFragment$3;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/narvii/media/SaveImageFragment$3;-><init>(Lcom/narvii/media/SaveImageFragment;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "imageLoader"

    .line 263
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 264
    invoke-virtual {p1}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    return-void
.end method

.method private savePhotoImage(Ljava/lang/String;)V
    .locals 9

    const-string v0, "photo"

    .line 349
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 350
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 351
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 353
    :try_start_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 355
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez v2, :cond_0

    return-void

    .line 358
    :cond_0
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/narvii/media/SaveImageFragment;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-direct {p0, v2, v3, v0}, Lcom/narvii/media/SaveImageFragment;->getExistsFile(Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    .line 361
    invoke-static {v2}, Lcom/narvii/media/SaveImageFragment;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 362
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 363
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 366
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    .line 367
    invoke-virtual {v0, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 370
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 373
    :cond_2
    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v4, p1, v0}, Lcom/narvii/media/SaveImageFragment;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_1
    if-nez v0, :cond_3

    .line 379
    invoke-virtual {p0, p1, v3}, Lcom/narvii/media/SaveImageFragment;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 381
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageFragment;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_2
    return-void
.end method

.method private saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const/4 p2, 0x0

    .line 389
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amino_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    const-string v2, "Amino"

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datetaken"

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    .line 394
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p3, "image/jpeg"

    .line 393
    :cond_0
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_data"

    .line 395
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 398
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p3

    .line 398
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 401
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_id"

    .line 402
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 403
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 405
    invoke-virtual {p3, v1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object p2, v1

    goto :goto_0

    .line 408
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 409
    invoke-virtual {p3, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 411
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p3, "unable to save image to content provider"

    .line 413
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p2
.end method


# virtual methods
.method protected addWatermark([BLjava/lang/String;)[B
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->saveImageHelper:Lcom/narvii/media/SaveImageHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/media/SaveImageHelper;->addWatermark([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    new-instance p1, Lcom/narvii/media/SaveImageHelper;

    invoke-direct {p1, p0}, Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->saveImageHelper:Lcom/narvii/media/SaveImageHelper;

    .line 113
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    .line 114
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/narvii/media/SaveImageFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/SaveImageFragment$1;-><init>(Lcom/narvii/media/SaveImageFragment;)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-nez p1, :cond_1

    .line 147
    sget p1, Lcom/narvii/lib/R$string;->media_save_fail:I

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 4

    .line 60
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment;->pendingUrl:Ljava/lang/String;

    .line 61
    iget-boolean v0, p0, Lcom/narvii/media/SaveImageFragment;->pendingReplaceUrl:Z

    .line 63
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    const-string v1, "fail to save image, unknown url scheme: "

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 68
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0, v2}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v3, "http://"

    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "photo://"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->savePhotoImage(Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz v0, :cond_5

    .line 93
    invoke-interface {v0, v2}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :cond_6
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_7

    .line 78
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-direct {v0, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "hq"

    .line 79
    invoke-static {p1, v0}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, p1

    .line 84
    :goto_1
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->saveGifImage(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/narvii/media/SaveImageFragment;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->media_save_success:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public save(Lcom/narvii/model/Media;)V
    .locals 0

    .line 156
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/media/SaveImageFragment;->save(Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageFragment;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->pendingUrl:Ljava/lang/String;

    .line 165
    iput-boolean p2, p0, Lcom/narvii/media/SaveImageFragment;->pendingReplaceUrl:Z

    .line 167
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 168
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 p2, 0x6c

    .line 169
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    return-void
.end method

.method public setSaveImageCallBack(Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    return-void
.end method
