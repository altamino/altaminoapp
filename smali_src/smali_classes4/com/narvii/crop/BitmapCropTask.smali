.class public Lcom/narvii/crop/BitmapCropTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/narvii/crop/BitmapCropTask;->mBitmapFilePath:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 19
    .line 20
    iput p6, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 29
    .line 30
    iput p7, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredWidth:I

    .line 31
    .line 32
    iput p8, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredHeight:I

    .line 33
    .line 34
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 37
    .line 38
    const/16 p1, 0x64

    .line 39
    .line 40
    iput p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressQuality:I

    .line 41
    .line 42
    iput-object p9, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p10, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p11, p0, Lcom/narvii/crop/BitmapCropTask;->mCropCallback:Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;

    .line 47
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 0
    .param p0    # Ljava/io/Closeable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 11
    .line 12
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 22
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 25
    .line 26
    new-instance v2, Ljava/io/File;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    .line 42
    move-result-wide v6

    .line 43
    move-object v3, p0

    .line 44
    move-object v8, v0

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 59
    :cond_1
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    move-object v9, v0

    .line 62
    move-object v0, p0

    .line 63
    move-object p0, v9

    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p1

    .line 66
    move-object p0, v0

    .line 67
    .line 68
    :goto_0
    if-eqz v0, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 72
    .line 73
    :cond_2
    if-eqz p0, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 77
    :cond_3
    throw p1
.end method

.method private crop()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 15
    move-result v0

    .line 16
    .line 17
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 18
    div-float/2addr v0, v2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 24
    move-result v2

    .line 25
    .line 26
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 27
    div-float/2addr v2, v3

    .line 28
    .line 29
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 30
    int-to-float v4, v3

    .line 31
    .line 32
    cmpl-float v4, v0, v4

    .line 33
    .line 34
    if-gtz v4, :cond_0

    .line 35
    .line 36
    iget v4, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 37
    int-to-float v4, v4

    .line 38
    .line 39
    cmpl-float v4, v2, v4

    .line 40
    .line 41
    if-lez v4, :cond_2

    .line 42
    :cond_0
    int-to-float v3, v3

    .line 43
    div-float/2addr v3, v0

    .line 44
    .line 45
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 46
    int-to-float v0, v0

    .line 47
    div-float/2addr v0, v2

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 51
    move-result v0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 57
    move-result v3

    .line 58
    int-to-float v3, v3

    .line 59
    mul-float/2addr v3, v0

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 63
    move-result v3

    .line 64
    .line 65
    iget-object v4, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 69
    move-result v4

    .line 70
    int-to-float v4, v4

    .line 71
    mul-float/2addr v4, v0

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 75
    move-result v4

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 82
    .line 83
    if-eq v3, v2, :cond_1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    .line 88
    :cond_1
    iput-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 89
    .line 90
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 91
    div-float/2addr v2, v0

    .line 92
    .line 93
    iput v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 94
    .line 95
    :cond_2
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    .line 96
    const/4 v2, 0x0

    .line 97
    .line 98
    cmpl-float v0, v0, v2

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    new-instance v7, Landroid/graphics/Matrix;

    .line 103
    .line 104
    .line 105
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    .line 107
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 113
    move-result v2

    .line 114
    .line 115
    div-int/lit8 v2, v2, 0x2

    .line 116
    int-to-float v2, v2

    .line 117
    .line 118
    iget-object v3, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 122
    move-result v3

    .line 123
    .line 124
    div-int/lit8 v3, v3, 0x2

    .line 125
    int-to-float v3, v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 129
    .line 130
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 131
    const/4 v3, 0x0

    .line 132
    const/4 v4, 0x0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 136
    move-result v5

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 142
    move-result v6

    .line 143
    const/4 v8, 0x1

    .line 144
    .line 145
    .line 146
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 150
    .line 151
    if-eq v2, v0, :cond_3

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 155
    .line 156
    :cond_3
    iput-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 157
    .line 158
    :cond_4
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 159
    .line 160
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 161
    .line 162
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 163
    .line 164
    iget v2, v2, Landroid/graphics/RectF;->left:F

    .line 165
    sub-float/2addr v0, v2

    .line 166
    .line 167
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 168
    div-float/2addr v0, v2

    .line 169
    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 172
    move-result v0

    .line 173
    .line 174
    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 177
    .line 178
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 179
    .line 180
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 181
    .line 182
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 183
    sub-float/2addr v0, v2

    .line 184
    .line 185
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 186
    div-float/2addr v0, v2

    .line 187
    .line 188
    .line 189
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 190
    move-result v0

    .line 191
    .line 192
    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    .line 193
    .line 194
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 198
    move-result v0

    .line 199
    .line 200
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 201
    div-float/2addr v0, v2

    .line 202
    .line 203
    .line 204
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 205
    move-result v0

    .line 206
    .line 207
    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    .line 208
    .line 209
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 213
    move-result v0

    .line 214
    .line 215
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentScale:F

    .line 216
    div-float/2addr v0, v2

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 220
    move-result v0

    .line 221
    .line 222
    iput v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    .line 223
    .line 224
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    .line 225
    .line 226
    .line 227
    invoke-direct {p0, v2, v0}, Lcom/narvii/crop/BitmapCropTask;->shouldCrop(II)Z

    .line 228
    move-result v0

    .line 229
    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 233
    .line 234
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    .line 235
    .line 236
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    .line 237
    .line 238
    iget v4, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    .line 239
    .line 240
    iget v5, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    .line 241
    .line 242
    .line 243
    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 248
    move-result v2

    .line 249
    .line 250
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredWidth:I

    .line 251
    .line 252
    if-ne v2, v3, :cond_6

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 256
    move-result v2

    .line 257
    .line 258
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredHeight:I

    .line 259
    .line 260
    if-eq v2, v3, :cond_5

    .line 261
    goto :goto_0

    .line 262
    .line 263
    .line 264
    :cond_5
    invoke-direct {p0, v0}, Lcom/narvii/crop/BitmapCropTask;->saveImage(Landroid/graphics/Bitmap;)V

    .line 265
    goto :goto_1

    .line 266
    .line 267
    :cond_6
    :goto_0
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredWidth:I

    .line 268
    .line 269
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->mDesiredHeight:I

    .line 270
    .line 271
    .line 272
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 273
    move-result-object v1

    .line 274
    .line 275
    .line 276
    invoke-direct {p0, v1}, Lcom/narvii/crop/BitmapCropTask;->saveImage(Landroid/graphics/Bitmap;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    :goto_1
    const/4 v0, 0x1

    .line 281
    return v0

    .line 282
    .line 283
    :cond_7
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 287
    move-result v0

    .line 288
    .line 289
    if-nez v0, :cond_8

    .line 290
    .line 291
    new-instance v0, Ljava/io/File;

    .line 292
    .line 293
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 300
    move-result v0

    .line 301
    .line 302
    if-eqz v0, :cond_8

    .line 303
    .line 304
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mImageInputPath:Ljava/lang/String;

    .line 305
    .line 306
    iget-object v2, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v2}, Lcom/narvii/crop/BitmapCropTask;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    goto :goto_2

    .line 311
    .line 312
    :cond_8
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    .line 313
    .line 314
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    .line 315
    .line 316
    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    .line 317
    .line 318
    iget v4, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    .line 319
    .line 320
    iget v5, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    .line 321
    .line 322
    .line 323
    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 324
    move-result-object v0

    .line 325
    .line 326
    .line 327
    invoke-direct {p0, v0}, Lcom/narvii/crop/BitmapCropTask;->saveImage(Landroid/graphics/Bitmap;)V

    .line 328
    :goto_2
    return v1
.end method

.method private saveImage(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mContext:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v2, Ljava/io/File;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 34
    .line 35
    iget v2, p0, Lcom/narvii/crop/BitmapCropTask;->mCompressQuality:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/narvii/crop/BitmapCropTask;->close(Ljava/io/Closeable;)V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/narvii/crop/BitmapCropTask;->close(Ljava/io/Closeable;)V

    .line 50
    throw p1
.end method

.method private shouldCrop(II)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    .line 7
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 8
    div-float/2addr p1, p2

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x1

    .line 14
    add-int/2addr p1, p2

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeX:I

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/narvii/crop/BitmapCropTask;->mMaxResultImageSizeY:I

    .line 21
    .line 22
    if-gtz v0, :cond_2

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 25
    .line 26
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 29
    .line 30
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 31
    sub-float/2addr v0, v1

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result v0

    .line 36
    int-to-float p1, p1

    .line 37
    .line 38
    cmpl-float v0, v0, p1

    .line 39
    .line 40
    if-gtz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 43
    .line 44
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 47
    .line 48
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 49
    sub-float/2addr v0, v1

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 53
    move-result v0

    .line 54
    .line 55
    cmpl-float v0, v0, p1

    .line 56
    .line 57
    if-gtz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 60
    .line 61
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 64
    .line 65
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 66
    sub-float/2addr v0, v1

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 70
    move-result v0

    .line 71
    .line 72
    cmpl-float v0, v0, p1

    .line 73
    .line 74
    if-gtz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropRect:Landroid/graphics/RectF;

    .line 77
    .line 78
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 79
    .line 80
    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 81
    .line 82
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 83
    sub-float/2addr v0, v1

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 87
    move-result v0

    .line 88
    .line 89
    cmpl-float p1, v0, p1

    .line 90
    .line 91
    if-gtz p1, :cond_2

    .line 92
    .line 93
    iget p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentAngle:F

    .line 94
    const/4 v0, 0x0

    .line 95
    .line 96
    cmpl-float p1, p1, v0

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const/4 p2, 0x0

    .line 101
    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/crop/BitmapCropTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mBitmapFilePath:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mBitmapFilePath:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ViewBitmap is recycled"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/narvii/crop/BitmapCropTask;->mCurrentImageRect:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CurrentImageRect is empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/narvii/crop/BitmapCropTask;->crop()Z

    const/4 p1, 0x0

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
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/narvii/crop/BitmapCropTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 7
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mCropCallback:Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/crop/BitmapCropTask;->mImageOutputPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, p0, Lcom/narvii/crop/BitmapCropTask;->mCropCallback:Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;

    iget v3, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetX:I

    iget v4, p0, Lcom/narvii/crop/BitmapCropTask;->cropOffsetY:I

    iget v5, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageWidth:I

    iget v6, p0, Lcom/narvii/crop/BitmapCropTask;->mCroppedImageHeight:I

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;->onBitmapCropped(Landroid/net/Uri;IIII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/narvii/crop/BitmapCropTask$BitmapCropCallback;->onCropFailure(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
