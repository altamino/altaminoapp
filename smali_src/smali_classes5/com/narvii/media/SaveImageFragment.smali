.class public Lcom/narvii/media/SaveImageFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


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

.field private final writeExternalStorageLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/media/e;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/narvii/media/e;-><init>(Lcom/narvii/media/SaveImageFragment;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/media/SaveImageFragment;->writeExternalStorageLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/media/SaveImageFragment$3;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/media/SaveImageFragment$3;-><init>(Lcom/narvii/media/SaveImageFragment;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/media/SaveImageFragment;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 27
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/media/SaveImageFragment;[BLandroid/graphics/BitmapFactory$Options;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/SaveImageFragment;->writteFile([BLandroid/graphics/BitmapFactory$Options;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private addRequestToQueue(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "imageLoader"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/util/image/NVImageLoader;->getRequestQueue()Lcom/android/volley/RequestQueue;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    .line 19
    return-void
.end method

.method private buildErrorListener(Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/media/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/media/g;-><init>(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)V

    .line 6
    return-object v0
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

.method private getOptions([B)Landroid/graphics/BitmapFactory$Options;
    .locals 3

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
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iget-object p1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    return-object v0
.end method

.method private static getTargetUrl(Ljava/lang/String;ZLandroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/util/PackageUtils;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->isPermalinkHost(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string p1, "hq"

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    return-object p0
.end method

.method private handleError(Ljava/lang/String;)Lcom/android/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/android/volley/Response<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to decode downloaded image from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->logWarning(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/android/volley/VolleyError;

    invoke-direct {p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private hideProgressDialogIfNeeded()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 14
    :cond_0
    return-void
.end method

.method private invokeSaveImageCallBackSafely(Ljava/io/File;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    .line 8
    :cond_0
    return-void
.end method

.method private isNullUrl(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$buildErrorListener$2(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/SaveImageFragment;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/media/SaveImageFragment;->saveImage()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/permisson/PermissionUtils;->showPermissionDeniedDialog(Landroid/content/Context;)V

    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/volley/Request;->cancel()V

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->runningGif:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private synthetic lambda$tryRequestAgainAsync$3(Lcom/android/volley/Request;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->addRequestToQueue(Lcom/android/volley/Request;)V

    .line 4
    return-void
.end method

.method private logWarning(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/SaveImageFragment;->lambda$buildErrorListener$2(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method private notifyFailure(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p2}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveFail(Ljava/io/File;)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/SaveImageFragment;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    return-void
.end method

.method private notifySuccess(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p3, Ljava/io/File;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p3}, Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;->onSaveSuccess(Ljava/io/File;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/SaveImageFragment;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 14
    :goto_0
    return-void
.end method

.method public static synthetic o(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->lambda$tryRequestAgainAsync$3(Lcom/android/volley/Request;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/media/SaveImageFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic q(Lcom/narvii/media/SaveImageFragment;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic r(Lcom/narvii/media/SaveImageFragment;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/media/SaveImageFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/SaveImageFragment;->runningGif:Ljava/lang/String;

    return-object p0
.end method

.method private saveGifImage(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    const-string v0, "gifLoader"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/drawables/gif/GifLoader;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/media/SaveImageFragment;->gifListener:Lcom/narvii/util/drawables/DrawableLoaderListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/drawables/gif/GifLoader;->request(Ljava/lang/String;Lcom/narvii/util/drawables/DrawableLoaderListener;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->runningGif:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/media/SaveImageFragment$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/media/SaveImageFragment$2;-><init>(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Lcom/narvii/util/drawables/gif/GifLoader;)V

    .line 26
    .line 27
    const-wide/16 v2, 0xc8

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2, v3}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 31
    return-void
.end method

.method private saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->buildErrorListener(Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    .line 9
    move-result-object v5

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/media/SaveImageFragment$1;

    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p0

    .line 15
    move-object v4, p2

    .line 16
    move-object v6, p1

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/narvii/media/SaveImageFragment$1;-><init>(Lcom/narvii/media/SaveImageFragment;ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/narvii/media/SaveImageFragment;->addRequestToQueue(Lcom/android/volley/Request;)V

    .line 23
    return-void
.end method

.method private saveImage()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->pendingUrl:Ljava/lang/String;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/media/SaveImageFragment;->pendingReplaceUrl:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/media/SaveImageFragment;->hideProgressDialogIfNeeded()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/media/SaveImageFragment;->isNullUrl(Ljava/lang/String;)Z

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v3}, Lcom/narvii/media/SaveImageFragment;->invokeSaveImageCallBackSafely(Ljava/io/File;)V

    .line 18
    .line 19
    const-string v0, "fail to save image, unknown url scheme: null url"

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0, v0}, Lcom/narvii/media/SaveImageFragment;->startsWithHttpOrHttps(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lcom/narvii/media/SaveImageFragment;->getTargetUrl(Ljava/lang/String;ZLandroid/net/Uri;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Lcom/narvii/media/SaveImageFragment;->saveGifImage(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/narvii/media/SaveImageFragment;->saveHttpImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    const-string v1, "photo://"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v0}, Lcom/narvii/media/SaveImageFragment;->savePhotoImage(Ljava/lang/String;)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-direct {p0, v3}, Lcom/narvii/media/SaveImageFragment;->invokeSaveImageCallBackSafely(Ljava/io/File;)V

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v2, "fail to save image, unknown url scheme: "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void
.end method

.method private savePhotoImage(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "photo"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    :try_start_0
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    return-void

    .line 34
    .line 35
    :cond_0
    iget-object v2, p0, Lcom/narvii/media/SaveImageFragment;->saveImageHelper:Lcom/narvii/media/SaveImageHelper;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0, p1, v1}, Lcom/narvii/media/SaveImageHelper;->saveToGallery(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

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
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageFragment;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/narvii/media/SaveImageFragment;->onSuccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    :goto_1
    return-void
.end method

.method private startsWithHttpOrHttps(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "http://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "https://"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method static bridge synthetic t(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->running:Lcom/android/volley/Request;

    return-void
.end method

.method private tryRequestAgainAsync(Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/media/f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/media/f;-><init>(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/media/SaveImageFragment;[B)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->getOptions([B)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;)Lcom/android/volley/Response;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->handleError(Ljava/lang/String;)Lcom/android/volley/Response;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/volley/Response;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/SaveImageFragment;->handleError(Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/volley/Response;

    move-result-object p0

    return-object p0
.end method

.method private writteFile([BLandroid/graphics/BitmapFactory$Options;)Ljava/io/File;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object p2, p2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/narvii/media/SaveImageFragment;->getExt(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p2}, Lcom/narvii/media/SaveImageHelper;->getNewFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    new-instance v1, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    move-object v0, v1

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    move-object v0, v1

    .line 36
    goto :goto_0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception p1

    .line 40
    .line 41
    :goto_0
    :try_start_2
    new-instance p2, Ljava/io/IOException;

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    :goto_1
    if-eqz v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 51
    :cond_0
    throw p1
.end method

.method static bridge synthetic x(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/media/SaveImageFragment;->notifyFailure(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/media/SaveImageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/media/SaveImageFragment;->notifySuccess(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/media/SaveImageFragment;Lcom/android/volley/Request;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->tryRequestAgainAsync(Lcom/android/volley/Request;)V

    return-void
.end method


# virtual methods
.method protected addWatermark([BLjava/lang/String;)[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->saveImageHelper:Lcom/narvii/media/SaveImageHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/media/SaveImageHelper;->addWatermark([BLjava/lang/String;)[B

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/media/SaveImageHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/media/SaveImageHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->saveImageHelper:Lcom/narvii/media/SaveImageHelper;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/media/d;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/media/d;-><init>(Lcom/narvii/media/SaveImageFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/narvii/media/SaveImageFragment;->progressDialog:Landroid/app/Dialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 17
    return-void
.end method

.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/SaveImageFragment;->saveImageCallBack:Lcom/narvii/media/SaveImageFragment$SaveImageCallBack;

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    sget p1, Lcom/narvii/lib/R$string;->media_save_fail:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "\n"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p2

    .line 41
    const/4 v0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 49
    :cond_1
    return-void
.end method

.method public onPermissionGranted(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget p2, Lcom/narvii/lib/R$string;->media_save_success:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    return-void
.end method

.method public requestStoragePermission()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/permisson/NVPermission;->builder(Landroidx/fragment/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const/16 v1, 0x6c

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    .line 24
    return-void
.end method

.method public save(Lcom/narvii/model/Media;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/media/SaveImageFragment;->save(Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/narvii/media/SaveImageFragment;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 3

    iput-object p1, p0, Lcom/narvii/media/SaveImageFragment;->pendingUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/narvii/media/SaveImageFragment;->pendingReplaceUrl:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/narvii/media/SaveImageFragment;->saveImage()V

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/media/SaveImageFragment;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/narvii/media/SaveImageFragment;->saveImage()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    sget-object p2, Lcom/narvii/permisson/PermissionUtilsV2;->INSTANCE:Lcom/narvii/permisson/PermissionUtilsV2;

    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/permisson/RationaleDialogConfigExt;->openSettings(Landroid/content/Context;)Le8/l;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/narvii/permisson/RationaleDialogConfigExt;->emptyAction()Le8/l;

    move-result-object v2

    .line 12
    invoke-static {p1, v1, v2}, Lcom/narvii/permisson/RationaleDialogConfigExt;->defaultConfig(Ljava/lang/String;Le8/l;Le8/l;)Lcom/narvii/permisson/RationaleDialogConfig;

    move-result-object p1

    .line 13
    invoke-virtual {p2, v0, p1}, Lcom/narvii/permisson/PermissionUtilsV2;->shoRationaleDialog(Landroid/content/Context;Lcom/narvii/permisson/RationaleDialogConfig;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/narvii/media/SaveImageFragment;->writeExternalStorageLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 14
    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
