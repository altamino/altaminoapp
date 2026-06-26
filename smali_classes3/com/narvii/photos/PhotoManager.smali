.class public Lcom/narvii/photos/PhotoManager;
.super Ljava/lang/Object;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/photos/PhotoManager$VideoUploadTask;
    }
.end annotation


# static fields
.field public static final MEDIA_CROP_HEIGHT:Ljava/lang/String; = "MEDIA-CROP-HEIGHT"

.field public static final MEDIA_CROP_WIDTH:Ljava/lang/String; = "MEDIA-CROP-WIDTH"

.field public static final MEDIA_CROP_X:Ljava/lang/String; = "MEDIA-CROP-X"

.field public static final MEDIA_CROP_Y:Ljava/lang/String; = "MEDIA-CROP-Y"


# instance fields
.field private final context:Lcom/narvii/app/NVContext;

.field private final filesDir:Ljava/io/File;

.field public retryCount:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    .line 72
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 73
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/photos/PhotoManager;->filesDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/photos/PhotoManager;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/narvii/photos/PhotoManager;->replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private getCameraDir()Ljava/io/File;
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 727
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static isUHQ(Ljava/lang/String;)Z
    .locals 1

    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "shared-folder-image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "story-cover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 793
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 796
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 798
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, ""

    goto :goto_0

    :cond_2
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 156
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 157
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 158
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 159
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 160
    invoke-static {v2, v3, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    const/4 p2, 0x0

    .line 164
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 168
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 172
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p3, p3, 0x2

    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compress bitmap failover to half size when out of memory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 177
    invoke-static {p2}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    move-object p2, p3

    .line 181
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getRotation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, p2, :cond_2

    .line 183
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public createBitmapAtSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 199
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-lez p2, :cond_3

    if-gtz p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 204
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 206
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 207
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 208
    invoke-static {v3, v4, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 210
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 211
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 214
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 217
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compress bitmap failover to half size when out of memory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 221
    invoke-static {v2}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 229
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getRotation(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientationAndSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v0, :cond_2

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public createBitmapAtTargetSize(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/photos/PhotoManager;->createBitmapAtTargetSize(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public createBitmapAtTargetSize(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    invoke-static {p2}, Lcom/narvii/photos/PhotoManager;->isUHQ(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x400

    const/16 v2, 0x640

    if-nez v0, :cond_7

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "p2a-avatar"

    .line 250
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 v1, 0x7d0

    const/16 v2, 0x7d0

    goto :goto_2

    :cond_1
    const-string p3, "post-background"

    .line 252
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    :goto_0
    const/16 v1, 0x640

    goto :goto_2

    :cond_2
    const-string p3, "chat-background"

    .line 254
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    const-string p3, "leaderboard-background-image"

    .line 256
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    const-string p3, "fullscreen-background-image"

    .line 258
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    :cond_5
    const-string p3, "community-launch-image"

    .line 260
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x400

    goto :goto_2

    :cond_7
    :goto_1
    const/16 v1, 0x800

    const/16 v2, 0x800

    .line 263
    :goto_2
    invoke-virtual {p0, p1, v2, v1}, Lcom/narvii/photos/PhotoManager;->createBitmapAtSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public createCameraIntent()Landroid/content/Intent;
    .locals 5

    .line 448
    invoke-direct {p0}, Lcom/narvii/photos/PhotoManager;->getCameraDir()Ljava/io/File;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    new-instance v3, Ljava/io/File;

    const-string v4, ".index"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-static {v3, v1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "can\'t write to sdcard."

    .line 453
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 455
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "output"

    invoke-static {v1, v0, v2, v3}, Lcom/narvii/util/Utils;->getIntentWithUri(Landroid/content/Context;Landroid/content/Intent;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createPickerIntent(Z)Landroid/content/Intent;
    .locals 2

    .line 402
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "image/*"

    .line 403
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v1, 0x1

    .line 404
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method public getNewName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 732
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNewVideoName(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 811
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    const-string v3, "_v1"

    if-ge v1, v2, :cond_1

    .line 813
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, v2, 0xfff

    or-int/lit16 v2, v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 815
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const-string v0, "photo"

    const-string v1, "malformed photo uri "

    .line 759
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 760
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 762
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "files"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 763
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/photos/PhotoManager;->filesDir:Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 764
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "absolute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 766
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string v0, "file"

    .line 770
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 773
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 329
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "t"

    invoke-direct {p0, v0, v1}, Lcom/narvii/photos/PhotoManager;->replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 334
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$dimen;->thumb_default_size:I

    .line 339
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 340
    invoke-virtual {p0, p1, v2, v2}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 341
    new-instance v2, Lcom/narvii/photos/PhotoManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/photos/PhotoManager$1;-><init>(Lcom/narvii/photos/PhotoManager;Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "out of memory"

    .line 366
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    return-object v1
.end method

.method public getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http://"

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "ytv://"

    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 493
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v0, "u"

    invoke-direct {p0, p1, v0}, Lcom/narvii/photos/PhotoManager;->replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 494
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 497
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getUri(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->filesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 739
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "photo://files/"

    .line 745
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 747
    :cond_1
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 748
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "photo://absolute/"

    .line 750
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "_v1.mp4"

    .line 824
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCamera()Z
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public importAllFromResult(Ljava/io/File;ILandroid/content/Intent;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    .line 411
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 414
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 417
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 418
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 428
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 431
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to import image to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    return-object p3

    .line 439
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public importFromCameraResult(Ljava/io/File;ILandroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/narvii/photos/PhotoManager;->getCameraDir()Ljava/io/File;

    move-result-object p2

    .line 463
    new-instance p3, Ljava/io/File;

    const-string v0, ".index"

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 464
    invoke-static {p3}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to import image to ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    :goto_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 94
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x47

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v1, v2, :cond_2

    .line 99
    aget-byte v2, v0, v8

    if-ne v2, v5, :cond_2

    aget-byte v2, v0, v7

    const/16 v9, 0x49

    if-ne v2, v9, :cond_2

    aget-byte v2, v0, v4

    const/16 v9, 0x46

    if-ne v2, v9, :cond_2

    aget-byte v2, v0, v3

    const/16 v9, 0x38

    if-ne v2, v9, :cond_2

    aget-byte v2, v0, v6

    const/16 v9, 0x37

    if-eq v2, v9, :cond_1

    aget-byte v2, v0, v6

    const/16 v9, 0x39

    if-ne v2, v9, :cond_2

    :cond_1
    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v9, 0x61

    if-ne v2, v9, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-lt v1, v6, :cond_3

    .line 108
    aget-byte v6, v0, v8

    const/16 v9, -0x77

    if-ne v6, v9, :cond_3

    aget-byte v6, v0, v7

    const/16 v9, 0x50

    if-ne v6, v9, :cond_3

    aget-byte v4, v0, v4

    const/16 v6, 0x4e

    if-ne v4, v6, :cond_3

    aget-byte v3, v0, v3

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 113
    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getNewName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_4

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    :cond_5
    :goto_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    new-instance p1, Lcom/narvii/util/SafeFileOutputStream;

    invoke-direct {p1, v2}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V

    :goto_4
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 125
    :try_start_0
    invoke-virtual {p1, v0, v8, v1}, Lcom/narvii/util/SafeFileOutputStream;->write([BII)V

    .line 126
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 130
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 131
    invoke-virtual {p1, v8}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 132
    throw v0

    .line 130
    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 131
    invoke-virtual {p1, v7}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isGif(Ljava/lang/String;)Z
    .locals 0

    .line 782
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPng(Ljava/lang/String;)Z
    .locals 1

    .line 786
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isVideo(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "photo://"

    .line 832
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_v1.mp4"

    .line 833
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, ".mp4"

    .line 835
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isVideoCover(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "photo://"

    .line 840
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_v1.jpg"

    .line 841
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, ".jpg"

    .line 843
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5

    .line 381
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 382
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 386
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 387
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 388
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    .line 391
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public upload(Lcom/narvii/photos/PhotoUploadSpec;Lcom/narvii/photos/PhotoUploadListener;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v10, v0, Lcom/narvii/photos/PhotoUploadSpec;->uri:Ljava/lang/String;

    .line 530
    iget-object v1, v0, Lcom/narvii/photos/PhotoUploadSpec;->headers:[Ljava/lang/String;

    .line 531
    iget-object v3, v0, Lcom/narvii/photos/PhotoUploadSpec;->target:Ljava/lang/String;

    .line 532
    iget-boolean v2, v0, Lcom/narvii/photos/PhotoUploadSpec;->original:Z

    .line 533
    iget v4, v0, Lcom/narvii/photos/PhotoUploadSpec;->quality:I

    .line 534
    iget-boolean v7, v0, Lcom/narvii/photos/PhotoUploadSpec;->keepPng:Z

    .line 536
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 538
    new-instance v1, Lcom/narvii/photos/PhotoManager$2;

    invoke-direct {v1, v8, v9, v10, v0}, Lcom/narvii/photos/PhotoManager$2;-><init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/PhotoUploadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 548
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 550
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 552
    :cond_2
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 553
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "/media/upload"

    .line 557
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/target/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    :cond_3
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "Content-Type"

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_6

    .line 562
    :try_start_1
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 563
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 564
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 565
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->isGif(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    const-string v2, "image/gif"

    aput-object v2, v1, v13

    .line 566
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 568
    :cond_4
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->isPng(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    const-string v2, "image/png"

    aput-object v2, v1, v13

    .line 569
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :cond_5
    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    const-string v2, "image/jpg"

    aput-object v2, v1, v13

    .line 572
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 576
    :cond_6
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v15

    new-array v6, v13, [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v5, v15

    move-object/from16 v16, v6

    .line 578
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;[Ljava/lang/String;Z)V

    .line 579
    invoke-virtual {v0, v15}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    .line 580
    aget-object v2, v16, v14

    aput-object v2, v1, v13

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 581
    aget-object v1, v16, v14

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 582
    aget-object v1, v16, v14

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 584
    :cond_7
    invoke-virtual {v15}, Ljava/io/File;->length()J

    :goto_0
    const/16 v1, 0x7530

    .line 586
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 587
    iget v1, v8, Lcom/narvii/photos/PhotoManager;->retryCount:I

    if-eqz v1, :cond_8

    .line 588
    iget v1, v8, Lcom/narvii/photos/PhotoManager;->retryCount:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 590
    :cond_8
    iget-object v1, v8, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 593
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/photos/PhotoManager$3;

    const-class v3, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-direct {v2, v8, v3, v10, v9}, Lcom/narvii/photos/PhotoManager$3;-><init>(Lcom/narvii/photos/PhotoManager;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, -0x2

    .line 622
    iget-object v2, v8, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->out_of_memory:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v10, v1, v2, v0}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "out of memory when upload image"

    .line 623
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v1, -0x1

    .line 619
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v9, v10, v1, v2, v0}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "fail to upload image"

    .line 620
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 633
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 639
    new-instance p2, Lcom/narvii/photos/PhotoManager$4;

    invoke-direct {p2, p0, p5, p1, v0}, Lcom/narvii/photos/PhotoManager$4;-><init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/PhotoUploadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 649
    :try_start_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 650
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 651
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v2, "/media/upload"

    .line 653
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/target/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 656
    :cond_2
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v2, "jpg"

    .line 658
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 661
    invoke-static {p3}, Lcom/narvii/photos/PhotoManager;->isUHQ(Ljava/lang/String;)Z

    move-result p3

    const/16 p3, 0x55

    if-eqz p4, :cond_3

    .line 663
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p4, p3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v2, "png"

    goto :goto_1

    .line 666
    :cond_3
    invoke-static {p2, p3, v4}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V

    .line 668
    :goto_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 675
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, "Content-Type"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    .line 676
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image/"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 p2, 0x7530

    .line 677
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 678
    iget p2, p0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    if-eqz p2, :cond_4

    .line 679
    iget p2, p0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 682
    :cond_4
    iget-object p2, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    const-string p3, "api"

    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 684
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 685
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    new-instance p4, Lcom/narvii/photos/PhotoManager$5;

    const-class v1, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-direct {p4, p0, v1, p1, p5}, Lcom/narvii/photos/PhotoManager$5;-><init>(Lcom/narvii/photos/PhotoManager;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    invoke-virtual {p2, p3, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_4

    :catchall_0
    move-exception p2

    .line 670
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-interface {p5, p1, v0, p3, p2}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "fail to compress upload image"

    .line 671
    invoke-static {p3, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p2

    const/4 p3, -0x2

    .line 716
    iget-object p4, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v0, Lcom/narvii/lib/R$string;->out_of_memory:I

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p5, p1, p3, p4, p2}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "out of memory when upload image"

    .line 717
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception p2

    .line 713
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-interface {p5, p1, v0, p3, p2}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "fail to upload image"

    .line 714
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public upload(Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 511
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V
    .locals 7

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 515
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs upload(Ljava/lang/String;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;[Ljava/lang/String;)V
    .locals 1

    .line 519
    invoke-static {p2}, Lcom/narvii/photos/PhotoManager;->isUHQ(Ljava/lang/String;)Z

    move-result v0

    const/16 v0, 0x55

    .line 520
    invoke-static {p1}, Lcom/narvii/photos/PhotoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->quality(I)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->original(Z)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->headers([Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->build()Lcom/narvii/photos/PhotoUploadSpec;

    move-result-object p1

    .line 521
    invoke-virtual {p0, p1, p4}, Lcom/narvii/photos/PhotoManager;->upload(Lcom/narvii/photos/PhotoUploadSpec;Lcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method

.method public uploadVideo(Lcom/narvii/photos/VideoUploadSpec;Lcom/narvii/photos/VideoUploadListener;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/photos/VideoUploadSpec;",
            "Lcom/narvii/photos/VideoUploadListener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 865
    :cond_0
    new-instance v0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;-><init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/VideoUploadSpec;Lcom/narvii/photos/VideoUploadListener;)V

    .line 866
    invoke-virtual {v0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->startUpload()V

    return-object v0
.end method

.method public writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;[Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 284
    invoke-virtual/range {v0 .. v7}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;[Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->isGif(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    if-eqz p5, :cond_4

    const-string p1, "image/gif"

    .line 291
    aput-object p1, p5, v1

    goto :goto_2

    .line 294
    :cond_0
    invoke-virtual {p0, p1, p2, p7}, Lcom/narvii/photos/PhotoManager;->createBitmapAtTargetSize(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    .line 296
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 297
    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    const/4 p7, 0x0

    .line 302
    :try_start_0
    new-instance v0, Lcom/narvii/util/SafeFileOutputStream;

    invoke-direct {v0, p4}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p6, :cond_2

    .line 303
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->isPng(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p5, :cond_3

    const-string p1, "image/png"

    .line 306
    aput-object p1, p5, v1

    goto :goto_0

    .line 309
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 313
    invoke-virtual {v0, p1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 314
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    if-eqz p5, :cond_4

    .line 317
    aget-object p1, p5, v1

    if-nez p1, :cond_4

    const-string p1, "image/jpg"

    .line 318
    aput-object p1, p5, v1

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, p7

    .line 313
    :goto_3
    invoke-virtual {v0, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 314
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 315
    throw p1
.end method

.method public writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;Z)V

    return-void
.end method

.method public writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-static {p2}, Lcom/narvii/photos/PhotoManager;->isUHQ(Ljava/lang/String;)Z

    move-result v0

    const/16 v4, 0x55

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    .line 279
    invoke-virtual/range {v1 .. v8}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;[Ljava/lang/String;ZZ)V

    return-void
.end method
