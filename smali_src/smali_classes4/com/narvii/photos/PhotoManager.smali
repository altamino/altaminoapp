.class public Lcom/narvii/photos/PhotoManager;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/photos/PhotoManager;->filesDir:Ljava/io/File;

    .line 19
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/photos/PhotoManager;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/photos/PhotoManager;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/photos/PhotoManager;->replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getCameraDir()Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "Camera"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    return-object v0
.end method

.method public static isUHQ(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const-string v0, "shared-folder-image"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "story-cover"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p0

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
.end method

.method private replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const/16 v1, 0x2e

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ltz v1, :cond_1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string p2, ""

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    const-string v0, "."

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
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

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    .line 16
    if-lez p2, :cond_1

    .line 17
    .line 18
    if-lez p3, :cond_1

    .line 19
    .line 20
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 30
    .line 31
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    .line 35
    move-result p2

    .line 36
    .line 37
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    :cond_1
    const/4 p2, 0x0

    .line 39
    .line 40
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    .line 42
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p2

    .line 53
    .line 54
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    .line 56
    mul-int/lit8 p3, p3, 0x2

    .line 57
    .line 58
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    .line 65
    invoke-static {p3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v2, "compress bitmap failover to half size when out of memory "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "x"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p2}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 102
    move-object p2, p3

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getRotation(Ljava/lang/String;)I

    .line 110
    move-result p1

    .line 111
    .line 112
    .line 113
    invoke-static {p2, p1}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    if-eq p1, p2, :cond_2

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    move-object p2, p1

    .line 121
    :cond_2
    return-object p2
.end method

.method public createBitmapAtSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
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
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    if-lez p2, :cond_3

    .line 15
    .line 16
    if-gtz p3, :cond_0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 v2, 0x1

    .line 19
    .line 20
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 30
    .line 31
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v4, p2, p3}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    .line 35
    move-result v3

    .line 36
    .line 37
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    .line 42
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 50
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .line 54
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    .line 56
    mul-int/lit8 v3, v3, 0x2

    .line 57
    .line 58
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v5, "compress bitmap failover to half size when out of memory "

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v5, "x"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 102
    move-object v0, v3

    .line 103
    .line 104
    :goto_0
    if-nez v0, :cond_1

    .line 105
    return-object v1

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/narvii/util/image/MediaStoreUtils;->getRotation(Ljava/lang/String;)I

    .line 113
    move-result p1

    .line 114
    .line 115
    .line 116
    invoke-static {v0, p1, p2, p3}, Lcom/narvii/util/image/MediaStoreUtils;->applyOrientationAndSize(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    if-eq p1, v0, :cond_2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    move-object v0, p1

    .line 124
    :cond_2
    return-object v0

    .line 125
    :cond_3
    :goto_1
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

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/photos/PhotoManager;->createBitmapAtTargetSize(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public createBitmapAtTargetSize(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/narvii/photos/PhotoManager;->isUHQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p3, :cond_0

    goto :goto_2

    :cond_0
    const-string p3, "p2a-avatar"

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p2, 0x7d0

    :goto_0
    move v0, p2

    goto :goto_3

    :cond_1
    const-string p3, "post-background"

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/16 v0, 0x640

    if-eqz p3, :cond_2

    :goto_1
    move p2, v0

    goto :goto_3

    :cond_2
    const-string p3, "chat-background"

    .line 5
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const-string p3, "leaderboard-background-image"

    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    const-string p3, "fullscreen-background-image"

    .line 7
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const-string p3, "community-launch-image"

    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    const/16 p2, 0x400

    goto :goto_0

    :cond_7
    :goto_2
    const/16 p2, 0x800

    goto :goto_0

    .line 9
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/photos/PhotoManager;->createBitmapAtSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public createCameraIntent()Landroid/content/Intent;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/photos/PhotoManager;->getCameraDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, ".jpg"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    new-instance v2, Ljava/io/File;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    new-instance v3, Ljava/io/File;

    .line 33
    .line 34
    const-string v4, ".index"

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-string v0, "can\'t write to sdcard."

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 49
    .line 50
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string v3, "output"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0, v2, v3}, Lcom/narvii/util/Utils;->getIntentWithUri(Landroid/content/Context;Landroid/content/Intent;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public createPickerIntent(Z)Landroid/content/Intent;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v0, "android.intent.action.GET_CONTENT"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v0, "image/*"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    return-object p1
.end method

.method public getNewName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getNewVideoName(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/util/Random;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    :goto_0
    const/16 v2, 0x100

    .line 13
    .line 14
    const-string v3, "_v1"

    .line 15
    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 20
    move-result v2

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    and-int/lit16 v2, v2, 0xfff

    .line 28
    .line 29
    or-int/lit16 v2, v2, 0x1000

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const/4 v5, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    new-instance v3, Ljava/io/File;

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v5, ".mp4"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 74
    move-result v3

    .line 75
    .line 76
    if-nez v3, :cond_0

    .line 77
    return-object v2

    .line 78
    .line 79
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 1
    .line 2
    const-string v0, "malformed photo uri "

    .line 3
    .line 4
    const-string v1, "photo"

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v5

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    const-string v5, "files"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v5

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/photos/PhotoManager;->filesDir:Ljava/io/File;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    return-object v1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const-string v1, "absolute"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    return-object v2

    .line 92
    .line 93
    :cond_2
    const-string v1, "file"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    new-instance v1, Ljava/io/File;

    .line 102
    .line 103
    new-instance v2, Ljava/net/URI;

    .line 104
    .line 105
    .line 106
    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 110
    return-object v1

    .line 111
    .line 112
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    .line 130
    .line 131
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-static {p1, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :goto_1
    const/4 p1, 0x0

    .line 149
    return-object p1
.end method

.method public getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "t"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/narvii/photos/PhotoManager;->replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    return-object v1

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v2, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    sget v3, Lcom/narvii/lib/R$dimen;->thumb_default_size:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v2, v2}, Lcom/narvii/photos/PhotoManager;->createBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    new-instance v2, Lcom/narvii/photos/PhotoManager$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/photos/PhotoManager$1;-><init>(Lcom/narvii/photos/PhotoManager;Ljava/io/File;Landroid/graphics/Bitmap;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p1

    .line 61
    .line 62
    :goto_0
    const-string v0, "out of memory"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :catch_1
    return-object v1
.end method

.method public getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

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
    if-eqz v0, :cond_0

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    const-string v0, "ytv://"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "u"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lcom/narvii/photos/PhotoManager;->replaceExtension(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    :cond_4
    :goto_0
    return-object v0
.end method

.method public getUri(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->filesDir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string v0, "photo://files/"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    :cond_2
    const-string v0, "photo://absolute/"

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public getVideoCoverUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const-string v0, "_v1.mp4"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    move-result v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x4

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p1, ".jpg"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public hasCamera()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "android.hardware.camera"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
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

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p2, v0, :cond_3

    .line 4
    .line 5
    if-eqz p3, :cond_3

    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 25
    move-result v0

    .line 26
    move v2, v1

    .line 27
    .line 28
    :goto_0
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 70
    .line 71
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v0

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    check-cast v0, Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    const-string v3, "fail to import image to ["

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "], "

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    return-object p3

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 137
    move-result-object p1

    .line 138
    return-object p1
.end method

.method public importFromCameraResult(Ljava/io/File;ILandroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 p3, -0x1

    .line 2
    .line 3
    if-ne p2, p3, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/photos/PhotoManager;->getCameraDir()Ljava/io/File;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    new-instance p3, Ljava/io/File;

    .line 10
    .line 11
    const-string v0, ".index"

    .line 12
    .line 13
    .line 14
    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p3}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Ljava/io/File;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/narvii/photos/PhotoManager;->importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;

    .line 41
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object p1

    .line 43
    :catch_0
    move-exception p2

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v2, "fail to import image to ["

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p1, "], "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 75
    :cond_1
    const/4 p1, 0x0

    .line 76
    return-object p1
.end method

.method public importPhoto(Ljava/io/File;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "file"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    new-instance p2, Ljava/io/FileInputStream;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    :goto_0
    const/16 v0, 0x1000

    .line 44
    .line 45
    new-array v0, v0, [B

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x6

    .line 51
    const/4 v3, 0x4

    .line 52
    const/4 v4, 0x3

    .line 53
    const/4 v5, 0x2

    .line 54
    .line 55
    const/16 v6, 0x47

    .line 56
    const/4 v7, 0x1

    .line 57
    const/4 v8, 0x0

    .line 58
    .line 59
    if-lt v1, v2, :cond_2

    .line 60
    .line 61
    aget-byte v2, v0, v8

    .line 62
    .line 63
    if-ne v2, v6, :cond_2

    .line 64
    .line 65
    aget-byte v2, v0, v7

    .line 66
    .line 67
    const/16 v9, 0x49

    .line 68
    .line 69
    if-ne v2, v9, :cond_2

    .line 70
    .line 71
    aget-byte v2, v0, v5

    .line 72
    .line 73
    const/16 v9, 0x46

    .line 74
    .line 75
    if-ne v2, v9, :cond_2

    .line 76
    .line 77
    aget-byte v2, v0, v4

    .line 78
    .line 79
    const/16 v9, 0x38

    .line 80
    .line 81
    if-ne v2, v9, :cond_2

    .line 82
    .line 83
    aget-byte v2, v0, v3

    .line 84
    .line 85
    const/16 v9, 0x37

    .line 86
    .line 87
    if-eq v2, v9, :cond_1

    .line 88
    .line 89
    const/16 v9, 0x39

    .line 90
    .line 91
    if-ne v2, v9, :cond_2

    .line 92
    :cond_1
    const/4 v2, 0x5

    .line 93
    .line 94
    aget-byte v2, v0, v2

    .line 95
    .line 96
    const/16 v9, 0x61

    .line 97
    .line 98
    if-ne v2, v9, :cond_2

    .line 99
    move v2, v7

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move v2, v8

    .line 102
    .line 103
    :goto_1
    if-lt v1, v3, :cond_3

    .line 104
    .line 105
    aget-byte v3, v0, v8

    .line 106
    .line 107
    const/16 v9, -0x77

    .line 108
    .line 109
    if-ne v3, v9, :cond_3

    .line 110
    .line 111
    aget-byte v3, v0, v7

    .line 112
    .line 113
    const/16 v9, 0x50

    .line 114
    .line 115
    if-ne v3, v9, :cond_3

    .line 116
    .line 117
    aget-byte v3, v0, v5

    .line 118
    .line 119
    const/16 v5, 0x4e

    .line 120
    .line 121
    if-ne v3, v5, :cond_3

    .line 122
    .line 123
    aget-byte v3, v0, v4

    .line 124
    .line 125
    if-ne v3, v6, :cond_3

    .line 126
    move v3, v7

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    move v3, v8

    .line 129
    .line 130
    .line 131
    :goto_2
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getNewName(Ljava/io/File;)Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v3, ".gif"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v4

    .line 152
    goto :goto_3

    .line 153
    .line 154
    :cond_4
    if-eqz v3, :cond_5

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v3, ".png"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v4

    .line 172
    .line 173
    :cond_5
    :goto_3
    new-instance v2, Ljava/io/File;

    .line 174
    .line 175
    .line 176
    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .line 178
    new-instance p1, Lcom/narvii/util/SafeFileOutputStream;

    .line 179
    .line 180
    .line 181
    invoke-direct {p1, v2}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V

    .line 182
    :goto_4
    const/4 v3, -0x1

    .line 183
    .line 184
    if-eq v1, v3, :cond_6

    .line 185
    .line 186
    .line 187
    :try_start_0
    invoke-virtual {p1, v0, v8, v1}, Lcom/narvii/util/SafeFileOutputStream;->write([BII)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 191
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    goto :goto_4

    .line 193
    :catchall_0
    move-exception v0

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v8}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 200
    throw v0

    .line 201
    .line 202
    .line 203
    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v7}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v2}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    return-object p1
.end method

.method public isGif(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isPng(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, ".png"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public isVideo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "photo://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "_v1.mp4"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    :cond_0
    const-string v0, ".mp4"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public isVideoCover(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "photo://"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "_v1.jpg"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    .line 17
    :cond_0
    const-string v0, ".jpg"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const/16 v1, 0x2e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 30
    move-result v1

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    if-gez v1, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p1, "."

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 59
    move-result-object v0

    .line 60
    array-length v1, v0

    .line 61
    .line 62
    :goto_1
    if-ge v3, v1, :cond_3

    .line 63
    .line 64
    aget-object v2, v0, v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    move-result v4

    .line 73
    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 78
    .line 79
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 80
    goto :goto_1

    .line 81
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

    .line 7
    :cond_0
    iget-object v10, v0, Lcom/narvii/photos/PhotoUploadSpec;->uri:Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lcom/narvii/photos/PhotoUploadSpec;->headers:[Ljava/lang/String;

    .line 9
    iget-object v3, v0, Lcom/narvii/photos/PhotoUploadSpec;->target:Ljava/lang/String;

    .line 10
    iget-boolean v2, v0, Lcom/narvii/photos/PhotoUploadSpec;->original:Z

    .line 11
    iget v4, v0, Lcom/narvii/photos/PhotoUploadSpec;->quality:I

    .line 12
    iget-boolean v7, v0, Lcom/narvii/photos/PhotoUploadSpec;->keepPng:Z

    .line 13
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Lcom/narvii/photos/PhotoManager$2;

    invoke-direct {v1, v8, v9, v10, v0}, Lcom/narvii/photos/PhotoManager$2;-><init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/PhotoUploadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "/media/upload"

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/target/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
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

    .line 22
    :try_start_1
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 25
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->isGif(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    const-string v2, "image/gif"

    aput-object v2, v1, v13

    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {v8, v10}, Lcom/narvii/photos/PhotoManager;->isPng(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    const-string v2, "image/png"

    aput-object v2, v1, v13

    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    :cond_5
    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    const-string v2, "image/jpg"

    aput-object v2, v1, v13

    .line 29
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 30
    :cond_6
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v15

    new-array v6, v13, [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v5, v15

    move-object/from16 v16, v6

    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;[Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {v0, v15}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    new-array v1, v12, [Ljava/lang/String;

    aput-object v11, v1, v14

    aget-object v2, v16, v14

    aput-object v2, v1, v13

    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    aget-object v1, v16, v14

    const-string v2, "image/"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, v16, v14

    const/4 v2, 0x6

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    :cond_7
    invoke-virtual {v15}, Ljava/io/File;->length()J

    :goto_1
    const/16 v1, 0x7530

    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    iget v1, v8, Lcom/narvii/photos/PhotoManager;->retryCount:I

    if-eqz v1, :cond_8

    .line 38
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_8
    iget-object v1, v8, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    .line 39
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/photos/PhotoManager$3;

    const-class v3, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-direct {v2, v8, v3, v10, v9}, Lcom/narvii/photos/PhotoManager$3;-><init>(Lcom/narvii/photos/PhotoManager;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_2
    iget-object v1, v8, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 41
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$string;->out_of_memory:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v9, v10, v2, v1, v0}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "out of memory when upload image"

    .line 42
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 43
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const/4 v2, -0x1

    invoke-interface {v9, v10, v2, v1, v0}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "fail to upload image"

    .line 44
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
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

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getUploadedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 47
    new-instance p2, Lcom/narvii/photos/PhotoManager$4;

    invoke-direct {p2, p0, p5, p1, v0}, Lcom/narvii/photos/PhotoManager$4;-><init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/PhotoUploadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 48
    :try_start_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->mediaServer()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v2, "/media/upload"

    .line 51
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/target/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :catch_1
    move-exception p2

    goto/16 :goto_6

    .line 53
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v2, "jpg"

    .line 54
    invoke-static {}, Lcom/narvii/util/Utils;->createTmpFile()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    invoke-static {p3}, Lcom/narvii/photos/PhotoManager;->isUHQ(Ljava/lang/String;)Z

    const/16 p3, 0x55

    if-eqz p4, :cond_3

    .line 57
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p4, p3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v2, "png"

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 58
    :cond_3
    invoke-static {p2, p3, v4}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V

    .line 59
    :goto_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Ljava/io/File;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->deleteBodyAfterDone()Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const-string p3, "Content-Type"

    const/4 p4, 0x0

    aput-object p3, p2, p4

    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "image/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->headers([Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 p2, 0x7530

    .line 63
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    iget p2, p0, Lcom/narvii/photos/PhotoManager;->retryCount:I

    if-eqz p2, :cond_4

    .line 64
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_4
    iget-object p2, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    const-string p3, "api"

    .line 65
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 67
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    new-instance p4, Lcom/narvii/photos/PhotoManager$5;

    const-class v1, Lcom/narvii/photos/PhotoUploadResponse;

    invoke-direct {p4, p0, v1, p1, p5}, Lcom/narvii/photos/PhotoManager$5;-><init>(Lcom/narvii/photos/PhotoManager;Ljava/lang/Class;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    invoke-virtual {p2, p3, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_8

    .line 68
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    :goto_4
    invoke-interface {p5, p1, v0, p3, p2}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string p3, "fail to compress upload image"

    .line 69
    invoke-static {p3, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_5
    iget-object p3, p0, Lcom/narvii/photos/PhotoManager;->context:Lcom/narvii/app/NVContext;

    .line 70
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/narvii/lib/R$string;->out_of_memory:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x2

    invoke-interface {p5, p1, p4, p3, p2}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "out of memory when upload image"

    .line 71
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 72
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    :goto_7
    invoke-interface {p5, p1, v0, p3, p2}, Lcom/narvii/photos/PhotoUploadListener;->onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "fail to upload image"

    .line 73
    invoke-static {p1, p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    return-void
.end method

.method public upload(Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
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

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs upload(Ljava/lang/String;Ljava/lang/String;ZLcom/narvii/photos/PhotoUploadListener;[Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p2}, Lcom/narvii/photos/PhotoManager;->isUHQ(Ljava/lang/String;)Z

    .line 5
    invoke-static {p1}, Lcom/narvii/photos/PhotoUploadSpec;->builder(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->target(Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    const/16 p2, 0x55

    invoke-virtual {p1, p2}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->quality(I)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->original(Z)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->headers([Ljava/lang/String;)Lcom/narvii/photos/PhotoUploadSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/photos/PhotoUploadSpec$Builder;->build()Lcom/narvii/photos/PhotoUploadSpec;

    move-result-object p1

    .line 6
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

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lcom/narvii/photos/PhotoManager$VideoUploadTask;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;-><init>(Lcom/narvii/photos/PhotoManager;Lcom/narvii/photos/VideoUploadSpec;Lcom/narvii/photos/VideoUploadListener;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/photos/PhotoManager$VideoUploadTask;->startUpload()V

    .line 13
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

    .line 4
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

    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->isGif(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    if-eqz p5, :cond_4

    const-string p1, "image/gif"

    .line 7
    aput-object p1, p5, v1

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p7}, Lcom/narvii/photos/PhotoManager;->createBitmapAtTargetSize(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->getPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 10
    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    const/4 p7, 0x0

    .line 11
    :try_start_0
    new-instance v0, Lcom/narvii/util/SafeFileOutputStream;

    invoke-direct {v0, p4}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p6, :cond_2

    .line 12
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/narvii/photos/PhotoManager;->isPng(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p5, :cond_3

    const-string p1, "image/png"

    .line 14
    aput-object p1, p5, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p7, v0

    goto :goto_3

    .line 15
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/narvii/util/image/BitmapUtils;->compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    if-eqz p5, :cond_4

    .line 18
    aget-object p1, p5, v1

    if-nez p1, :cond_4

    const-string p1, "image/jpg"

    .line 19
    aput-object p1, p5, v1

    :cond_4
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 20
    :goto_3
    invoke-virtual {p7, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
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

    .line 1
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

    .line 2
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

    .line 3
    invoke-virtual/range {v1 .. v8}, Lcom/narvii/photos/PhotoManager;->writeUploadDataTo(Ljava/lang/String;Ljava/lang/String;ILjava/io/File;[Ljava/lang/String;ZZ)V

    return-void
.end method
