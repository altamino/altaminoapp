.class public Lcom/narvii/media/SaveImageHelper;
.super Ljava/lang/Object;
.source "SaveImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/SaveImageHelper$SaveImageCallBack;
    }
.end annotation


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private final gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

.field private ignoreMembership:Z

.field outFile:Ljava/io/File;

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

.field private usingSDCardStorage:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Lcom/narvii/media/SaveImageHelper$5;

    invoke-direct {v0, p0}, Lcom/narvii/media/SaveImageHelper$5;-><init>(Lcom/narvii/media/SaveImageHelper;)V

    iput-object v0, p0, Lcom/narvii/media/SaveImageHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 81
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 82
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 83
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/narvii/media/SaveImageHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/SaveImageHelper$1;-><init>(Lcom/narvii/media/SaveImageHelper;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/SaveImageHelper;)Lcom/android/volley/Request;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->running:Lcom/android/volley/Request;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->running:Lcom/android/volley/Request;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/media/SaveImageHelper;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->runningGif:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->runningGif:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/SaveImageHelper;->getExistsFile(Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/media/SaveImageHelper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/media/SaveImageHelper;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/narvii/media/SaveImageHelper;->usingSDCardStorage:Z

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/media/SaveImageHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private drawWatermark40(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Montserrat-ExtraBold.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 281
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, -0x1

    .line 282
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41e00000    # 28.0f

    .line 283
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "brand_logo.png"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 286
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 287
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 289
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 290
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    const/high16 v4, 0x41200000    # 10.0f

    .line 291
    invoke-virtual {p2, p3, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 p1, p1, 0x6

    add-int/2addr v2, p1

    int-to-float p1, v2

    const/high16 p3, -0x3ec00000    # -12.0f

    .line 293
    invoke-virtual {p2, v1, p1, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getExistsFile(Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;
    .locals 11

    .line 557
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "Amino"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 558
    iget-boolean v0, p0, Lcom/narvii/media/SaveImageHelper;->usingSDCardStorage:Z

    if-nez v0, :cond_0

    .line 559
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "images"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 561
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 562
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 564
    array-length v1, p2

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    .line 567
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 568
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 570
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    .line 571
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 572
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v10, v8, v1

    if-nez v10, :cond_3

    .line 573
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 578
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_2
    if-ltz p1, :cond_a

    .line 579
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz p2, :cond_5

    .line 583
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 584
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 585
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 586
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 587
    invoke-static {v5, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_9

    return-object v1

    :catchall_0
    move-exception v1

    .line 591
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    if-eqz p3, :cond_9

    const/16 v2, 0x1000

    :try_start_1
    new-array v5, v2, [B

    new-array v2, v2, [B

    .line 597
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 598
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 601
    :cond_6
    invoke-virtual {v6, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 602
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-eq v10, v9, :cond_8

    if-eq v8, v10, :cond_7

    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    .line 607
    :cond_7
    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 612
    :goto_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 613
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_9

    return-object v1

    :catchall_1
    move-exception v1

    .line 618
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_9
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_a
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

    .line 538
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "image/png"

    .line 541
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, ".png"

    return-object p1

    :cond_2
    const-string v1, "image/pjpeg"

    .line 544
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "image/tiff"

    .line 547
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, ".tiff"

    return-object p1

    :cond_4
    const-string v1, "image/gif"

    .line 550
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ".gif"

    return-object p1

    :cond_5
    return-object v0
.end method

.method private getNewFile(Ljava/lang/String;)Ljava/io/File;
    .locals 9

    .line 626
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Amino"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 627
    iget-boolean v1, p0, Lcom/narvii/media/SaveImageHelper;->usingSDCardStorage:Z

    if-nez v1, :cond_0

    .line 628
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 630
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 631
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyyMMdd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 632
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 634
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 635
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 637
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 638
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    .line 639
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-lez v8, :cond_1

    .line 641
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 643
    :cond_1
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_6

    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/16 v5, 0x64

    if-ge v4, v5, :cond_4

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 655
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 657
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 658
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object v3, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v3, :cond_7

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-999"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 667
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_8

    const-string p1, ".jpg"

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 668
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private saveGifImage(Ljava/lang/String;)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 379
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "gifLoader"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 380
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 381
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->runningGif:Ljava/lang/String;

    .line 382
    new-instance v1, Lcom/narvii/media/SaveImageHelper$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/media/SaveImageHelper$4;-><init>(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;Lcom/narvii/util/drawables/gif/GifLoader;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 297
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 299
    new-instance v5, Lcom/narvii/media/SaveImageHelper$2;

    invoke-direct {v5, p0, p1}, Lcom/narvii/media/SaveImageHelper$2;-><init>(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/narvii/media/SaveImageHelper$3;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/narvii/media/SaveImageHelper$3;-><init>(Lcom/narvii/media/SaveImageHelper;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    const-string p2, "imageLoader"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 373
    invoke-virtual {p1}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->running:Lcom/android/volley/Request;

    return-void
.end method

.method private savePhotoImage(Ljava/lang/String;)V
    .locals 9

    .line 461
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "photo"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 462
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 464
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    :try_start_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 468
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-nez v2, :cond_0

    return-void

    .line 471
    :cond_0
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/narvii/media/SaveImageHelper;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-direct {p0, v2, v3, v0}, Lcom/narvii/media/SaveImageHelper;->getExistsFile(Ljava/lang/String;[BLjava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v4, :cond_2

    .line 474
    :try_start_1
    invoke-direct {p0, v2}, Lcom/narvii/media/SaveImageHelper;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 476
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 479
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x0

    .line 480
    invoke-virtual {v0, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 483
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :cond_2
    move-object v2, v4

    .line 486
    :goto_1
    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v3

    .line 488
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_3
    if-nez v0, :cond_3

    .line 491
    iget-boolean v1, p0, Lcom/narvii/media/SaveImageHelper;->usingSDCardStorage:Z

    if-eqz v1, :cond_3

    .line 492
    invoke-virtual {p0, p1, v3}, Lcom/narvii/media/SaveImageHelper;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 494
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    .line 495
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->getUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 497
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageHelper;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_4
    return-void
.end method

.method private saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const/4 p2, 0x0

    .line 505
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    .line 506
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

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datetaken"

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    .line 510
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p3, "image/jpeg"

    .line 509
    :cond_0
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "_data"

    .line 511
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object p3, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 514
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "_data=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 516
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p3

    .line 514
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 517
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_id"

    .line 518
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 519
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

    .line 521
    invoke-virtual {p3, v1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object p2, v1

    goto :goto_0

    .line 524
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 525
    invoke-virtual {p3, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 527
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p3, "unable to save image to content provider"

    .line 529
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p2
.end method


# virtual methods
.method protected addWatermark([BLjava/lang/String;)[B
    .locals 1

    return-object p1
.end method

.method public dismiss()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-nez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->media_save_fail:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->media_save_success:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public save(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageHelper;->save(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public save(Landroid/graphics/Bitmap;Z)V
    .locals 4

    .line 186
    iput-boolean p2, p0, Lcom/narvii/media/SaveImageHelper;->usingSDCardStorage:Z

    .line 187
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 188
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    .line 191
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    const-string p2, ".jpg"

    .line 193
    invoke-direct {p0, p2}, Lcom/narvii/media/SaveImageHelper;->getNewFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x0

    .line 196
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 198
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 200
    :cond_1
    invoke-direct {p0, p2, v0, v0}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 201
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$string;->media_save_success:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 206
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 203
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 206
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    :goto_1
    return-void

    .line 205
    :goto_2
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 206
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 207
    throw p1
.end method

.method public save(Lcom/narvii/model/Media;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageHelper;->save(Lcom/narvii/model/Media;Z)V

    return-void
.end method

.method public save(Lcom/narvii/model/Media;Z)V
    .locals 0

    .line 130
    iput-boolean p2, p0, Lcom/narvii/media/SaveImageHelper;->usingSDCardStorage:Z

    .line 131
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public save(Ljava/lang/String;ZZ)V
    .locals 1

    .line 143
    iput-boolean p2, p0, Lcom/narvii/media/SaveImageHelper;->usingSDCardStorage:Z

    .line 144
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 145
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz p1, :cond_1

    .line 150
    invoke-interface {p1, p2}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "http://"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string p3, "photo://"

    .line 170
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 171
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->savePhotoImage(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 174
    :cond_4
    iget-object p3, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz p3, :cond_5

    .line 175
    invoke-interface {p3, p2}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 177
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to save image, unknown url scheme: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 156
    :cond_6
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez p3, :cond_7

    .line 158
    new-instance p3, Lcom/narvii/util/PackageUtils;

    invoke-direct {p3, p2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "hq"

    .line 159
    invoke-static {p1, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_7
    move-object p2, p1

    .line 164
    :goto_1
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 165
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->saveGifImage(Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/SaveImageHelper;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_2
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_3
    return-void
.end method

.method public setIgnoreMembership(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/narvii/media/SaveImageHelper;->ignoreMembership:Z

    return-void
.end method

.method public setSaveImageCallBack(Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    return-void
.end method
