.class public Lcom/narvii/util/image/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V
    .locals 13

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 131
    div-int/lit8 v2, v0, 0x10

    const/16 v3, 0x30

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v4, 0x8

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 132
    div-int/lit8 v5, v1, 0x10

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v5, v2, :cond_2

    if-nez v6, :cond_2

    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-gt v6, v3, :cond_1

    if-nez v7, :cond_1

    mul-int v8, v5, v0

    .line 136
    div-int/2addr v8, v2

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x1

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v10, v6, v1

    .line 137
    div-int/2addr v10, v3

    add-int/lit8 v11, v1, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 138
    invoke-virtual {p0, v8, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    ushr-int/lit8 v8, v8, 0x18

    const/16 v10, 0xff

    and-int/2addr v8, v10

    if-eq v8, v10, :cond_0

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_0

    :cond_2
    move v0, v6

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    .line 150
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 151
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v2, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2

    :catch_1
    move-exception v0

    .line 154
    :goto_2
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 158
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4

    .line 161
    :cond_5
    :try_start_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method public static createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;
    .locals 11

    .line 330
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 331
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    mul-int v0, p2, p3

    .line 332
    new-array v9, v0, [I

    .line 333
    new-array v0, v0, [I

    .line 334
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v10, 0x0

    .line 335
    invoke-virtual {v8, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 337
    :try_start_0
    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p3, :cond_1

    mul-int p1, p0, p2

    sub-int v1, p3, p0

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    add-int v3, p1, v2

    .line 343
    aget v3, v9, v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    add-int v4, v1, v2

    .line 347
    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p1, "bitmap"

    .line 352
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v1

    if-gtz v2, :cond_1

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_1

    cmpl-float v0, p4, v1

    if-gtz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    return-object p0

    .line 228
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v2, v0

    div-float v3, p1, v2

    int-to-float p2, p2

    int-to-float v4, v1

    div-float v5, p2, v4

    .line 229
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 232
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    div-float/2addr p1, v3

    .line 235
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v5

    div-float/2addr p2, v3

    .line 236
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-float v2, v2, p3

    .line 237
    div-int/lit8 p1, v5, 0x2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    mul-float v4, v4, p4

    .line 238
    div-int/lit8 p2, v6, 0x2

    int-to-float p2, p2

    sub-float/2addr v4, p2

    float-to-int p2, v4

    sub-int/2addr v0, v5

    .line 240
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v1, v6

    .line 241
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v8, 0x1

    move-object v2, p0

    .line 242
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 218
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "horizontalCenterPercent and verticalCenterPercent must be between 0.0f and 1.0f, inclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIIIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 202
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 204
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, 0x1

    .line 205
    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 207
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    .line 208
    invoke-virtual {v1, p0, p2, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    .line 209
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public static cropCenterAtSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt p1, v0, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float p1, p1

    div-float/2addr v2, p1

    int-to-float v4, v1

    mul-float v4, v4, v3

    int-to-float p2, p2

    div-float/2addr v4, p2

    .line 95
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float p1, p1, v2

    .line 96
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-float p2, p2, v2

    .line 97
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    :cond_1
    mul-int v2, v0, p2

    mul-int v3, p1, v1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    if-le v2, v3, :cond_2

    int-to-float v2, p2

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float v1, p1

    int-to-float v0, v0

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    mul-float v0, v1, v5

    goto :goto_0

    :cond_2
    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, p2

    int-to-float v1, v1

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    mul-float v0, v0, v5

    move v4, v0

    const/4 v0, 0x0

    .line 111
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 112
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    add-float/2addr v4, v5

    float-to-int v2, v4

    int-to-float v2, v2

    .line 113
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 115
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_3

    .line 117
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 119
    :cond_3
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 120
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p2, p0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 174
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 175
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 180
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 181
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static encodeYUV420SP([B[III)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    mul-int v3, v1, v2

    const/4 v4, 0x0

    move v7, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    move v8, v7

    move v7, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_9

    .line 281
    aget v9, p1, v6

    .line 282
    aget v9, p1, v6

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x10

    .line 283
    aget v10, p1, v6

    const v11, 0xff00

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x8

    .line 284
    aget v11, p1, v6

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/2addr v11, v4

    mul-int/lit8 v13, v9, 0x42

    mul-int/lit16 v14, v10, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v11, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x10

    mul-int/lit8 v14, v9, -0x26

    mul-int/lit8 v15, v10, 0x4a

    sub-int/2addr v14, v15

    mul-int/lit8 v15, v11, 0x70

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v10, v10, 0x5e

    sub-int/2addr v9, v10

    mul-int/lit8 v11, v11, 0x12

    sub-int/2addr v9, v11

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v9, v9, 0x8

    add-int/lit16 v9, v9, 0x80

    .line 294
    array-length v10, v0

    if-ge v7, v10, :cond_2

    add-int/lit8 v10, v7, 0x1

    if-gez v13, :cond_0

    const/4 v13, 0x0

    goto :goto_2

    :cond_0
    if-le v13, v12, :cond_1

    const/16 v13, 0xff

    :cond_1
    :goto_2
    int-to-byte v11, v13

    .line 295
    aput-byte v11, v0, v7

    move v7, v10

    .line 297
    :cond_2
    rem-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_8

    rem-int/lit8 v10, v6, 0x2

    if-nez v10, :cond_8

    .line 298
    array-length v10, v0

    if-ge v8, v10, :cond_5

    add-int/lit8 v10, v8, 0x1

    if-gez v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    if-le v9, v12, :cond_4

    const/16 v9, 0xff

    :cond_4
    :goto_3
    int-to-byte v9, v9

    .line 299
    aput-byte v9, v0, v8

    move v8, v10

    .line 301
    :cond_5
    array-length v9, v0

    if-ge v8, v9, :cond_8

    add-int/lit8 v9, v8, 0x1

    if-gez v14, :cond_6

    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    if-le v14, v12, :cond_7

    goto :goto_4

    :cond_7
    move v12, v14

    :goto_4
    int-to-byte v10, v12

    .line 302
    aput-byte v10, v0, v8

    move v8, v9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    move v5, v7

    move v7, v8

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static findBestSampleSize(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    .line 47
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    float-to-double v0, p3

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    float-to-int p0, p2

    return p0
.end method

.method public static getBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 254
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getNV21Bytes(Landroid/graphics/Bitmap;)[B
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 262
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 263
    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 264
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 v10, v10, 0x3

    .line 265
    div-int/lit8 v10, v10, 0x2

    new-array p0, v10, [B

    .line 266
    invoke-static {p0, v11, v8, v9}, Lcom/narvii/util/image/BitmapUtils;->encodeYUV420SP([B[III)V

    return-object p0
.end method

.method public static getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 312
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    :cond_0
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 313
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, p2

    mul-float v2, v2, v1

    .line 314
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 315
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-le v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 320
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    const/4 v0, 0x1

    .line 324
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static openBitmapAtSize(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 64
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 65
    invoke-static {v2, v3, p1, p2}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 69
    :try_start_0
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 70
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 73
    invoke-static {p2}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_0

    .line 77
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 79
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 80
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public static readImageRotation(Ljava/lang/String;)I
    .locals 3

    .line 361
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 p0, 0x0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Orientation"

    .line 366
    invoke-virtual {v0, v2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x10e

    goto :goto_1

    :cond_2
    const/16 p0, 0x5a

    goto :goto_1

    :cond_3
    const/16 p0, 0xb4

    :goto_1
    return p0
.end method
