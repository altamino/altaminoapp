.class public Lcom/cdv/utils/NvAndroidThumbnail;
.super Ljava/lang/Object;
.source "NvAndroidThumbnail.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAndroidThumbnail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createThumbnail(Landroid/content/Context;Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v8, "_id"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p2, :cond_2

    .line 48
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    new-array v6, v10, [Ljava/lang/String;

    aput-object p1, v6, v9

    const/4 v7, 0x0

    const-string v5, "_data=?"

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    new-array v6, v10, [Ljava/lang/String;

    aput-object p1, v6, v9

    const/4 v7, 0x0

    const-string v5, "_data=?"

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    const-string v11, "NvAndroidThumbnail"

    if-eqz v2, :cond_e

    .line 63
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 64
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_c

    .line 66
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v8, "_data"

    if-eqz p2, :cond_3

    .line 75
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    new-array v6, v10, [Ljava/lang/String;

    .line 78
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    const/4 v7, 0x0

    const-string/jumbo v5, "video_id=?"

    move-object v2, v1

    .line 75
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 81
    :cond_3
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v10, [Ljava/lang/String;

    aput-object v8, v4, v9

    new-array v6, v10, [Ljava/lang/String;

    .line 84
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    const/4 v7, 0x0

    const-string v5, "image_id=?"

    move-object v2, v1

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_8

    .line 89
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_4

    .line 91
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 93
    :cond_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :goto_2
    if-ltz v3, :cond_6

    .line 95
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 99
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p2, :cond_5

    goto :goto_3

    .line 101
    :cond_5
    invoke-static {p1}, Lcom/cdv/utils/NvAndroidThumbnail;->detectImageFileRotation(Ljava/lang/String;)I

    move-result v9

    :goto_3
    move/from16 v4, p3

    move/from16 v5, p4

    .line 102
    invoke-static {v3, v4, v5, v9}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromThumbnailImageFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_6
    move/from16 v4, p3

    move/from16 v5, p4

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_7
    move/from16 v4, p3

    move/from16 v5, p4

    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_8
    move/from16 v4, p3

    move/from16 v5, p4

    :goto_4
    if-eqz p2, :cond_9

    .line 113
    invoke-static {v1, v12, v13, v10, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    .line 115
    :cond_9
    invoke-static {v1, v12, v13, v10, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_a

    new-array v0, v10, [Ljava/lang/Object;

    .line 117
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    const-string v1, "Fail to get thumbnail file for media \'%d\'!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static/range {p1 .. p4}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_a
    if-eqz p2, :cond_b

    goto :goto_6

    .line 120
    :cond_b
    invoke-static {p1}, Lcom/cdv/utils/NvAndroidThumbnail;->detectImageFileRotation(Ljava/lang/String;)I

    move-result v9

    .line 121
    :goto_6
    invoke-static {v0, v9}, Lcom/cdv/utils/NvAndroidThumbnail;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_c
    move/from16 v4, p3

    move/from16 v5, p4

    .line 123
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :cond_d
    move/from16 v4, p3

    move/from16 v5, p4

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :cond_e
    move/from16 v4, p3

    move/from16 v5, p4

    :goto_7
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v9

    const-string v1, "Failed to query media store id for \'%s\'!"

    .line 127
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static/range {p1 .. p4}, Lcom/cdv/utils/NvAndroidThumbnail;->createThumbnailFromFile(Ljava/lang/String;ZII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_f
    :goto_8
    return-object v0
.end method

.method private static createThumbnailFromFile(Ljava/lang/String;ZII)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 194
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 198
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 199
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v1, p2, :cond_0

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, p3, :cond_0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 200
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 201
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    int-to-float p3, p3

    div-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 202
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 204
    :cond_0
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 205
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    invoke-static {p0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "Failed to create video thumbnail bitmap for \'%s\'!"

    .line 213
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "NvAndroidThumbnail"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p1
.end method

.method private static createThumbnailFromThumbnailImageFile(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 3

    .line 163
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 165
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 167
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 168
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v1, p1, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, p2, :cond_0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 169
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 170
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    mul-float v1, v1, v2

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 171
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 p1, 0x0

    .line 173
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/cdv/utils/NvAndroidThumbnail;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static detectImageFileRotation(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    .line 135
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    .line 136
    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    return-object p0

    .line 181
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x42b40000    # 90.0f

    .line 183
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x43340000    # 180.0f

    .line 185
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/high16 p1, 0x43870000    # 270.0f

    .line 187
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
