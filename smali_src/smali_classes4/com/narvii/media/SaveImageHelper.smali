.class public Lcom/narvii/media/SaveImageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/media/SaveImageHelper$5;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/media/SaveImageHelper$5;-><init>(Lcom/narvii/media/SaveImageHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/media/SaveImageHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/media/SaveImageHelper$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/media/SaveImageHelper$1;-><init>(Lcom/narvii/media/SaveImageHelper;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 34
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/media/SaveImageHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/media/SaveImageHelper;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/media/SaveImageHelper;)Lcom/android/volley/Request;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->running:Lcom/android/volley/Request;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/media/SaveImageHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/SaveImageHelper;->runningGif:Ljava/lang/String;

    return-object p0
.end method

.method private drawWatermark40(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "Montserrat-ExtraBold.otf"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    const/4 v1, -0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    const/high16 v1, 0x41e00000    # 28.0f

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v1, "brand_logo.png"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 56
    move-result p1

    .line 57
    float-to-int p1, p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 61
    move-result v2

    .line 62
    add-int/2addr v2, p1

    .line 63
    neg-int v2, v2

    .line 64
    .line 65
    div-int/lit8 v2, v2, 0x2

    .line 66
    int-to-float v3, v2

    .line 67
    .line 68
    const/high16 v4, 0x41200000    # 10.0f

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x6

    .line 74
    add-int/2addr v2, p1

    .line 75
    int-to-float p1, v2

    .line 76
    .line 77
    const/high16 p3, -0x3ec00000    # -12.0f

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1, p1, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/media/SaveImageHelper;Lcom/android/volley/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->running:Lcom/android/volley/Request;

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->runningGif:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, ".jpg"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v1, "image/jpeg"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_1
    const-string v1, "image/png"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const-string p1, ".png"

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_2
    const-string v1, "image/pjpeg"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    return-object v0

    .line 35
    .line 36
    :cond_3
    const-string v1, "image/tiff"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    const-string p1, ".tiff"

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_4
    const-string v1, "image/gif"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    const-string p1, ".gif"

    .line 56
    return-object p1

    .line 57
    :cond_5
    return-object v0
.end method

.method public static getNewFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1e

    .line 5
    .line 6
    const-string v2, "Amino"

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    move-result p0

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 39
    move-result p0

    .line 40
    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    const-string p0, "Failed to create directory"

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 47
    .line 48
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->notifyFailure(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/media/SaveImageHelper;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/SaveImageHelper;->notifySuccess(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static isNotEmpty(Ljava/io/File;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p0, v0, v2

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private notifyFailure(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/narvii/media/SaveImageHelper;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    return-void
.end method

.method private notifySuccess(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p2}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/narvii/media/SaveImageHelper;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 12
    :goto_0
    return-void
.end method

.method private saveGifImage(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    const-string v1, "gifLoader"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/media/SaveImageHelper;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->runningGif:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/media/SaveImageHelper$4;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/media/SaveImageHelper$4;-><init>(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;Lcom/narvii/util/drawables/gif/GifLoader;)V

    .line 28
    .line 29
    const-wide/16 v2, 0xc8

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 33
    return-void
.end method

.method private saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    new-instance v5, Lcom/narvii/media/SaveImageHelper$2;

    .line 8
    .line 9
    .line 10
    invoke-direct {v5, p0, p1}, Lcom/narvii/media/SaveImageHelper$2;-><init>(Lcom/narvii/media/SaveImageHelper;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/media/SaveImageHelper$3;

    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v1, v0

    .line 15
    move-object v2, p0

    .line 16
    move-object v4, p2

    .line 17
    move-object v6, p1

    .line 18
    move-object v7, p2

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/narvii/media/SaveImageHelper$3;-><init>(Lcom/narvii/media/SaveImageHelper;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    const-string p2, "imageLoader"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/util/image/NVImageLoader;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->running:Lcom/android/volley/Request;

    .line 42
    return-void
.end method

.method private savePhotoImage(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "photo"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

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
    const/4 v3, 0x0

    .line 22
    .line 23
    :try_start_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    return-void

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0, v0, p1, v1}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    move-object v4, v3

    .line 41
    move-object v3, v0

    .line 42
    move-object v0, v4

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    :goto_0
    if-nez v3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageHelper;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/narvii/media/SaveImageHelper;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    :goto_1
    return-void
.end method


# virtual methods
.method protected addWatermark([BLjava/lang/String;)[B
    .locals 20

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    iget-object v0, v1, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v3, "config"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 15
    .line 16
    iget-object v3, v1, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v4, "community"

    .line 19
    .line 20
    .line 21
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    check-cast v3, Lcom/narvii/community/CommunityService;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    const/4 v3, 0x0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    :goto_0
    if-nez v3, :cond_1

    .line 39
    .line 40
    new-instance v3, Lcom/narvii/util/PackageUtils;

    .line 41
    .line 42
    iget-object v4, v1, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    .line 45
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/narvii/util/PackageUtils;->getAppName()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iget-object v3, v3, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    .line 57
    .line 58
    :goto_1
    iget-object v4, v1, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    const-string v5, "membership"

    .line 61
    .line 62
    .line 63
    invoke-interface {v4, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    check-cast v4, Lcom/narvii/wallet/MembershipService;

    .line 67
    .line 68
    const-string v5, "disableWatermark"

    .line 69
    const/4 v6, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v5, v6}, Lcom/narvii/config/ConfigService;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    iget-boolean v0, v1, Lcom/narvii/media/SaveImageHelper;->ignoreMembership:Z

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    if-eqz v4, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_2
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    const/4 v4, 0x1

    .line 96
    .line 97
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    array-length v4, v2

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v6, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 102
    .line 103
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 104
    .line 105
    if-lez v4, :cond_5

    .line 106
    .line 107
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 108
    .line 109
    if-lez v0, :cond_5

    .line 110
    .line 111
    const/16 v5, 0x500

    .line 112
    .line 113
    if-gt v4, v5, :cond_5

    .line 114
    .line 115
    if-gt v0, v5, :cond_5

    .line 116
    array-length v0, v2

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v6, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 124
    move-result v4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 128
    move-result v5

    .line 129
    .line 130
    const/16 v7, 0x3e8

    .line 131
    .line 132
    const/high16 v8, 0x3f800000    # 1.0f

    .line 133
    .line 134
    if-ge v5, v7, :cond_3

    .line 135
    int-to-float v7, v5

    .line 136
    .line 137
    const/high16 v9, 0x44800000    # 1024.0f

    .line 138
    div-float/2addr v9, v7

    .line 139
    .line 140
    const/high16 v10, 0x40000000    # 2.0f

    .line 141
    .line 142
    .line 143
    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    .line 144
    move-result v9

    .line 145
    int-to-float v10, v4

    .line 146
    mul-float/2addr v10, v9

    .line 147
    float-to-int v10, v10

    .line 148
    mul-float/2addr v7, v9

    .line 149
    float-to-int v7, v7

    .line 150
    goto :goto_2

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    .line 153
    goto/16 :goto_4

    .line 154
    :cond_3
    move v10, v4

    .line 155
    move v7, v5

    .line 156
    move v9, v8

    .line 157
    .line 158
    :goto_2
    add-int/lit8 v11, v7, 0x28

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 162
    move-result-object v12

    .line 163
    .line 164
    .line 165
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 166
    move-result-object v12

    .line 167
    .line 168
    const/high16 v13, -0x1000000

    .line 169
    .line 170
    .line 171
    invoke-virtual {v12, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 172
    .line 173
    new-instance v15, Landroid/graphics/Canvas;

    .line 174
    .line 175
    .line 176
    invoke-direct {v15, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .line 178
    new-instance v14, Landroid/graphics/Paint;

    .line 179
    .line 180
    .line 181
    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    .line 186
    new-instance v13, Landroid/graphics/Rect;

    .line 187
    .line 188
    .line 189
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .line 191
    iput v6, v13, Landroid/graphics/Rect;->left:I

    .line 192
    .line 193
    iput v4, v13, Landroid/graphics/Rect;->right:I

    .line 194
    .line 195
    iput v6, v13, Landroid/graphics/Rect;->top:I

    .line 196
    .line 197
    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 198
    .line 199
    new-instance v4, Landroid/graphics/Rect;

    .line 200
    .line 201
    .line 202
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 203
    .line 204
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 205
    .line 206
    iput v10, v4, Landroid/graphics/Rect;->right:I

    .line 207
    .line 208
    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 209
    .line 210
    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 211
    .line 212
    .line 213
    invoke-virtual {v15, v0, v13, v4, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 214
    .line 215
    .line 216
    const v0, -0xc23e7e

    .line 217
    .line 218
    .line 219
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    const/4 v0, 0x0

    .line 221
    int-to-float v4, v7

    .line 222
    int-to-float v5, v10

    .line 223
    int-to-float v6, v11

    .line 224
    move-object v11, v14

    .line 225
    move-object v14, v15

    .line 226
    move-object v13, v15

    .line 227
    move v15, v0

    .line 228
    .line 229
    move/from16 v16, v4

    .line 230
    .line 231
    move/from16 v17, v5

    .line 232
    .line 233
    move/from16 v18, v6

    .line 234
    .line 235
    move-object/from16 v19, v11

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    .line 240
    div-int/lit8 v10, v10, 0x2

    .line 241
    int-to-float v0, v10

    .line 242
    .line 243
    add-int/lit8 v7, v7, 0x14

    .line 244
    int-to-float v4, v7

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    .line 249
    iget-object v0, v1, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 250
    .line 251
    .line 252
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 253
    move-result-object v0

    .line 254
    .line 255
    .line 256
    invoke-direct {v1, v0, v13, v3}, Lcom/narvii/media/SaveImageHelper;->drawWatermark40(Landroid/content/Context;Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 257
    .line 258
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 259
    .line 260
    .line 261
    const v3, 0x17700

    .line 262
    .line 263
    .line 264
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 265
    .line 266
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 267
    .line 268
    const/16 v4, 0x50

    .line 269
    .line 270
    .line 271
    invoke-virtual {v12, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 275
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .line 277
    cmpl-float v3, v9, v8

    .line 278
    .line 279
    const-string v4, "%"

    .line 280
    .line 281
    if-nez v3, :cond_4

    .line 282
    .line 283
    :try_start_1
    const-string v3, "not resized"

    .line 284
    goto :goto_3

    .line 285
    .line 286
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .line 291
    const-string v5, "resized "

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const/high16 v5, 0x42c80000    # 100.0f

    .line 297
    mul-float/2addr v9, v5

    .line 298
    float-to-int v5, v9

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object v3

    .line 309
    :goto_3
    array-length v5, v0

    .line 310
    .line 311
    mul-int/lit8 v5, v5, 0x64

    .line 312
    array-length v6, v2

    .line 313
    div-int/2addr v5, v6

    .line 314
    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    const-string v7, "draw watermark, original image is "

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string v3, ", compressed size "

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v3

    .line 342
    .line 343
    .line 344
    invoke-static {v3}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    return-object v0

    .line 346
    .line 347
    :goto_4
    const-string v3, "fail to add watermark"

    .line 348
    .line 349
    .line 350
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    :cond_5
    :goto_5
    return-object v2
.end method

.method public dismiss()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 14
    :cond_0
    return-void
.end method

.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    sget v0, Lcom/narvii/lib/R$string;->media_save_fail:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, "\n"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    :cond_0
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 57
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    sget p2, Lcom/narvii/lib/R$string;->media_save_success:I

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 17
    return-void
.end method

.method public save(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 21
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 22
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-static {v0, v1}, Lcom/narvii/media/SaveImageHelper;->getNewFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 24
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v1, v1}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 26
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->media_save_success:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 28
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 29
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 31
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    :goto_2
    return-void

    :goto_3
    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 33
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 34
    throw p1
.end method

.method public save(Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageHelper;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "http://"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "photo://"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->savePhotoImage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 9
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    if-eqz p2, :cond_5

    .line 10
    invoke-interface {p2, v0}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 11
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to save image, unknown url scheme: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :cond_6
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez p2, :cond_7

    .line 13
    new-instance p2, Lcom/narvii/util/PackageUtils;

    invoke-direct {p2, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "hq"

    .line 14
    invoke-static {p1, p2}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_7
    move-object p2, p1

    .line 15
    :goto_1
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageHelper;->saveGifImage(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/SaveImageHelper;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/narvii/media/SaveImageHelper;->progressDialog:Landroid/app/Dialog;

    .line 18
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_3
    return-void
.end method

.method public saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    .line 1
    const/4 p2, 0x0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1d

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    const-string v0, "external_primary"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    :goto_0
    new-instance v8, Landroid/content/ContentValues;

    .line 22
    const/4 v2, 0x7

    .line 23
    .line 24
    .line 25
    invoke-direct {v8, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 26
    .line 27
    const-string v2, "title"

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v4, "Amino_"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    const-string v2, "_display_name"

    .line 54
    .line 55
    const-string v3, "Amino"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    const-string v2, "datetaken"

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    move-result-wide v3

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    .line 73
    const-string v2, "mime_type"

    .line 74
    .line 75
    .line 76
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v3

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    const-string p3, "image/jpeg"

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v8, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    const/16 p3, 0x1e

    .line 87
    .line 88
    if-lt v1, p3, :cond_2

    .line 89
    .line 90
    const-string v2, "relative_path"

    .line 91
    .line 92
    const-string v3, "Pictures/Amino"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_2
    const-string v2, "_data"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    :goto_1
    iget-object v2, p0, Lcom/narvii/media/SaveImageHelper;->context:Lcom/narvii/app/NVContext;

    .line 108
    .line 109
    .line 110
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 115
    move-result-object v9

    .line 116
    const/4 v4, 0x0

    .line 117
    .line 118
    const-string v5, "_data=?"

    .line 119
    const/4 v2, 0x1

    .line 120
    .line 121
    new-array v6, v2, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    const/4 v10, 0x0

    .line 127
    .line 128
    aput-object v2, v6, v10

    .line 129
    const/4 v7, 0x0

    .line 130
    move-object v2, v9

    .line 131
    move-object v3, v0

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    move-result v3

    .line 142
    .line 143
    if-eqz v3, :cond_3

    .line 144
    .line 145
    const-string v3, "_id"

    .line 146
    .line 147
    .line 148
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 149
    move-result v3

    .line 150
    .line 151
    .line 152
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 153
    move-result-wide v3

    .line 154
    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    const-string v6, ""

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v0, v8, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    move-object p2, v0

    .line 179
    goto :goto_2

    .line 180
    .line 181
    .line 182
    :cond_3
    invoke-virtual {v9, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 183
    move-result-object p2

    .line 184
    .line 185
    .line 186
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 187
    .line 188
    if-lt v1, p3, :cond_5

    .line 189
    .line 190
    new-instance p3, Ljava/io/FileInputStream;

    .line 191
    .line 192
    .line 193
    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 197
    move-result-object p1

    .line 198
    .line 199
    const/16 v0, 0x1000

    .line 200
    .line 201
    new-array v0, v0, [B

    .line 202
    .line 203
    .line 204
    :goto_3
    invoke-virtual {p3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 205
    move-result v1

    .line 206
    const/4 v2, -0x1

    .line 207
    .line 208
    if-eq v1, v2, :cond_4

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0, v10, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 212
    goto :goto_3

    .line 213
    .line 214
    .line 215
    :cond_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_5

    .line 220
    .line 221
    :goto_4
    const-string p3, "unable to save image to content provider"

    .line 222
    .line 223
    .line 224
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_5
    :goto_5
    return-object p2
.end method

.method public setIgnoreMembership(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/media/SaveImageHelper;->ignoreMembership:Z

    return-void
.end method

.method public setSaveImageCallBack(Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/media/SaveImageHelper;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    return-void
.end method
