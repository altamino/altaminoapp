.class public Lcom/narvii/crop/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "BitmapCropTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapCropTask"


# instance fields
.field private cropOffsetX:I

.field private cropOffsetY:I

.field private mBitmapFilePath:Ljava/lang/String;

.field private final mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final mCompressQuality:I

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mCropCallback:Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;

.field private final mCropRect:Landroid/graphics/RectF;

.field private mCroppedImageHeight:I

.field private mCroppedImageWidth:I

.field private mCurrentAngle:F

.field private final mCurrentImageRect:Landroid/graphics/RectF;

.field private mCurrentScale:F

.field private final mDesiredHeight:I

.field private final mDesiredWidth:I

.field private final mImageInputPath:Ljava/lang/String;

.field private final mImageOutputPath:Ljava/lang/String;

.field private final mMaxResultImageSizeX:I

.field private final mMaxResultImageSizeY:I

.field private mViewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/RectF;Landroid/graphics/RectF;FIILjava/lang/String;Ljava/lang/String;Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object p3, p0, Lcom/narvii/crop/BitmapCropTask;->mBitmapFilePath:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 64
    iput-object p4, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 65
    iput-object p5, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 67
    iput p6, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 70
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 71
    iput p7, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredWidth:I

    .line 72
    iput p8, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredHeight:I

    .line 74
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p1, 0x64

    .line 75
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressQuality:I

    .line 77
    iput-object p9, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    .line 78
    iput-object p10, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    .line 81
    iput-object p11, p0, Lcom/narvii/crop/BitmapCropTask;->mCropCallback:Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 244
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 232
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 233
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v4, 0x0

    .line 234
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 235
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz p1, :cond_2

    .line 238
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object v0, p0

    move-object p0, v9

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v9, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v9

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object p1, v0

    :goto_0
    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz p1, :cond_4

    .line 238
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 239
    :cond_4
    throw p0
.end method

.method private crop()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    if-lez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    .line 114
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v2, v3

    .line 116
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 118
    :cond_0
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 119
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 120
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 122
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-eq v3, v2, :cond_1

    .line 124
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    :cond_1
    iput-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 128
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v2, v0

    iput v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 133
    :cond_2
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 134
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 135
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v7, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 137
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_3

    .line 139
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    :cond_3
    iput-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    .line 145
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    .line 146
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    .line 147
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    .line 149
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    invoke-direct {p0, v0, v2}, Lcom/narvii/crop/BitmapCropTask;->shouldCrop(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    iget v4, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    iget v5, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredWidth:I

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredHeight:I

    if-eq v2, v3, :cond_5

    goto :goto_0

    .line 158
    :cond_5
    invoke-direct {p0, v0}, Lcom/narvii/crop/BitmapCropTask;->saveImage(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 155
    :cond_6
    :goto_0
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredWidth:I

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredHeight:I

    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/crop/BitmapCropTask;->saveImage(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/crop/BitmapCropTask;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    iget v4, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    iget v5, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    invoke-direct {p0, v0}, Lcom/narvii/crop/BitmapCropTask;->saveImage(Landroid/graphics/Bitmap;)V

    :goto_2
    return v1
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 184
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressQuality:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-static {v1}, Lcom/narvii/crop/BitmapCropTask;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/narvii/crop/BitmapCropTask;->close(Ljava/io/Closeable;)V

    .line 189
    throw p1
.end method

.method private shouldCrop(II)Z
    .locals 2

    .line 202
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 203
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_2

    iget p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/crop/BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mBitmapFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mBitmapFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 91
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is recycled"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 95
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CurrentImageRect is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 100
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/crop/BitmapCropTask;->crop()Z

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/narvii/crop/BitmapCropTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropCallback:Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 210
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 211
    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCropCallback:Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    iget v4, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    iget v5, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    iget v6, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    invoke-interface/range {v1 .. v6}, Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;->onBitmapCropped(Landroid/net/Uri;IIII)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface {v0, p1}, Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;->onCropFailure(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
