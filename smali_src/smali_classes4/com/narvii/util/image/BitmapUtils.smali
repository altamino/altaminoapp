.class public Lcom/narvii/util/image/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static compressJpeg(Landroid/graphics/Bitmap;ILjava/io/OutputStream;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 14
    move-result v1

    .line 15
    .line 16
    div-int/lit8 v2, v0, 0x10

    .line 17
    .line 18
    const/16 v3, 0x30

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result v2

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    .line 27
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v2

    .line 29
    .line 30
    div-int/lit8 v5, v1, 0x10

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    move v5, v4

    .line 41
    move v6, v5

    .line 42
    .line 43
    :goto_0
    if-gt v6, v2, :cond_2

    .line 44
    .line 45
    if-nez v5, :cond_2

    .line 46
    move v7, v4

    .line 47
    .line 48
    :goto_1
    if-gt v7, v3, :cond_1

    .line 49
    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    mul-int v8, v6, v0

    .line 53
    div-int/2addr v8, v2

    .line 54
    const/4 v9, 0x1

    .line 55
    .line 56
    add-int/lit8 v10, v0, -0x1

    .line 57
    .line 58
    .line 59
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    .line 60
    move-result v8

    .line 61
    .line 62
    mul-int v10, v7, v1

    .line 63
    div-int/2addr v10, v3

    .line 64
    .line 65
    add-int/lit8 v11, v1, -0x1

    .line 66
    .line 67
    .line 68
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v10

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v8, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 73
    move-result v8

    .line 74
    .line 75
    ushr-int/lit8 v8, v8, 0x18

    .line 76
    .line 77
    const/16 v10, 0xff

    .line 78
    and-int/2addr v8, v10

    .line 79
    .line 80
    if-eq v8, v10, :cond_0

    .line 81
    move v5, v9

    .line 82
    .line 83
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move v0, v5

    .line 89
    :cond_3
    const/4 v1, 0x0

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 95
    move-result v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 99
    move-result v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 107
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    const/4 v2, -0x1

    .line 109
    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 112
    .line 113
    new-instance v2, Landroid/graphics/Canvas;

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    const/4 v3, 0x0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :goto_2
    move-object v1, v0

    .line 122
    goto :goto_4

    .line 123
    :catch_0
    move-exception v1

    .line 124
    goto :goto_3

    .line 125
    :catch_1
    move-exception v0

    .line 126
    move-object v12, v1

    .line 127
    move-object v1, v0

    .line 128
    move-object v0, v12

    .line 129
    .line 130
    .line 131
    :goto_3
    invoke-static {v1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 132
    goto :goto_2

    .line 133
    .line 134
    :cond_4
    :goto_4
    if-nez v1, :cond_5

    .line 135
    .line 136
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 140
    goto :goto_5

    .line 141
    .line 142
    :cond_5
    :try_start_2
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    :goto_5
    return-void

    .line 150
    :catchall_0
    move-exception p0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    throw p0
.end method

.method public static createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    .line 17
    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 18
    .line 19
    mul-int v0, p2, p3

    .line 20
    .line 21
    new-array v9, v0, [I

    .line 22
    .line 23
    new-array v0, v0, [I

    .line 24
    .line 25
    .line 26
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    .line 27
    move-result-object v8

    .line 28
    const/4 v10, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    .line 33
    const/16 v6, 0x1908

    .line 34
    .line 35
    const/16 v7, 0x1401

    .line 36
    move v2, p0

    .line 37
    move v3, p1

    .line 38
    move v4, p2

    .line 39
    move v5, p3

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 43
    move p0, v10

    .line 44
    .line 45
    :goto_0
    if-ge p0, p3, :cond_1

    .line 46
    .line 47
    mul-int p1, p0, p2

    .line 48
    .line 49
    sub-int v1, p3, p0

    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    mul-int/2addr v1, p2

    .line 53
    move v2, v10

    .line 54
    .line 55
    :goto_1
    if-ge v2, p2, :cond_0

    .line 56
    .line 57
    add-int v3, p1, v2

    .line 58
    .line 59
    aget v3, v9, v3

    .line 60
    .line 61
    shr-int/lit8 v4, v3, 0x10

    .line 62
    .line 63
    and-int/lit16 v4, v4, 0xff

    .line 64
    .line 65
    shl-int/lit8 v5, v3, 0x10

    .line 66
    .line 67
    const/high16 v6, 0xff0000

    .line 68
    and-int/2addr v5, v6

    .line 69
    .line 70
    .line 71
    const v6, -0xff0100

    .line 72
    and-int/2addr v3, v6

    .line 73
    or-int/2addr v3, v5

    .line 74
    or-int/2addr v3, v4

    .line 75
    .line 76
    add-int v4, v1, v2

    .line 77
    .line 78
    aput v3, v0, v4

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 89
    .line 90
    .line 91
    invoke-static {v0, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 92
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    return-object p0

    .line 94
    .line 95
    :goto_2
    const-string p1, "bitmap"

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    const/4 p0, 0x0

    .line 100
    return-object p0
.end method

.method public static crop(Landroid/graphics/Bitmap;IIFF)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p3, v0

    .line 4
    .line 5
    if-ltz v1, :cond_1

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpl-float v2, p3, v1

    .line 10
    .line 11
    if-gtz v2, :cond_1

    .line 12
    .line 13
    cmpg-float v0, p4, v0

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    cmpl-float v0, p4, v1

    .line 18
    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    if-ne p2, v1, :cond_0

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    .line 35
    .line 36
    .line 37
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 38
    int-to-float p1, p1

    .line 39
    int-to-float v2, v0

    .line 40
    .line 41
    div-float v3, p1, v2

    .line 42
    int-to-float p2, p2

    .line 43
    int-to-float v4, v1

    .line 44
    .line 45
    div-float v5, p2, v4

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    .line 49
    move-result v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 53
    div-float/2addr p1, v3

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 57
    move-result v5

    .line 58
    div-float/2addr p2, v3

    .line 59
    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 62
    move-result v6

    .line 63
    mul-float/2addr v2, p3

    .line 64
    .line 65
    div-int/lit8 p1, v5, 0x2

    .line 66
    int-to-float p1, p1

    .line 67
    sub-float/2addr v2, p1

    .line 68
    float-to-int p1, v2

    .line 69
    mul-float/2addr v4, p4

    .line 70
    .line 71
    div-int/lit8 p2, v6, 0x2

    .line 72
    int-to-float p2, p2

    .line 73
    sub-float/2addr v4, p2

    .line 74
    float-to-int p2, v4

    .line 75
    sub-int/2addr v0, v5

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 79
    move-result p1

    .line 80
    const/4 p3, 0x0

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result v3

    .line 85
    sub-int/2addr v1, v6

    .line 86
    .line 87
    .line 88
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result p1

    .line 90
    .line 91
    .line 92
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 93
    move-result v4

    .line 94
    const/4 v8, 0x1

    .line 95
    move-object v2, p0

    .line 96
    .line 97
    .line 98
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    .line 102
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string p1, "horizontalCenterPercent and verticalCenterPercent must be between 0.0f and 1.0f, inclusive."

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    throw p0
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;IIIIII)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-nez p2, :cond_2

    .line 9
    :cond_1
    const/4 p1, 0x0

    .line 10
    move p2, p1

    .line 11
    .line 12
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    new-instance v6, Landroid/graphics/Paint;

    .line 19
    .line 20
    .line 21
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 22
    const/4 p2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    .line 27
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 28
    .line 29
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 36
    .line 37
    new-instance v1, Landroid/graphics/Canvas;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    const/4 p2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, p2, p2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    int-to-float v2, p3

    .line 46
    int-to-float v3, p4

    .line 47
    int-to-float v4, p5

    .line 48
    int-to-float v5, p6

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    return-object p1
.end method

.method public static cropCenterAtSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    if-le p2, v1, :cond_1

    .line 13
    :cond_0
    int-to-float v2, v0

    .line 14
    .line 15
    const/high16 v3, 0x3f800000    # 1.0f

    .line 16
    mul-float/2addr v2, v3

    .line 17
    int-to-float p1, p1

    .line 18
    div-float/2addr v2, p1

    .line 19
    int-to-float v4, v1

    .line 20
    mul-float/2addr v4, v3

    .line 21
    int-to-float p2, p2

    .line 22
    div-float/2addr v4, p2

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 26
    move-result v2

    .line 27
    mul-float/2addr p1, v2

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 31
    move-result p1

    .line 32
    mul-float/2addr p2, v2

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 36
    move-result p2

    .line 37
    .line 38
    :cond_1
    mul-int v2, v0, p2

    .line 39
    .line 40
    mul-int v3, p1, v1

    .line 41
    const/4 v4, 0x0

    .line 42
    .line 43
    const/high16 v5, 0x3f000000    # 0.5f

    .line 44
    .line 45
    if-le v2, v3, :cond_2

    .line 46
    int-to-float v2, p2

    .line 47
    int-to-float v1, v1

    .line 48
    div-float/2addr v2, v1

    .line 49
    int-to-float v1, p1

    .line 50
    int-to-float v0, v0

    .line 51
    mul-float/2addr v0, v2

    .line 52
    sub-float/2addr v1, v0

    .line 53
    mul-float/2addr v1, v5

    .line 54
    move v0, v4

    .line 55
    move v4, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    int-to-float v2, p1

    .line 58
    int-to-float v0, v0

    .line 59
    div-float/2addr v2, v0

    .line 60
    int-to-float v0, p2

    .line 61
    int-to-float v1, v1

    .line 62
    mul-float/2addr v1, v2

    .line 63
    sub-float/2addr v0, v1

    .line 64
    mul-float/2addr v0, v5

    .line 65
    .line 66
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 73
    add-float/2addr v4, v5

    .line 74
    float-to-int v2, v4

    .line 75
    int-to-float v2, v2

    .line 76
    add-float/2addr v0, v5

    .line 77
    float-to-int v0, v0

    .line 78
    int-to-float v0, v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    new-instance p2, Landroid/graphics/Canvas;

    .line 96
    .line 97
    .line 98
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 99
    const/4 v0, 0x0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 103
    return-object p1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    move-object v0, p0

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-lez v0, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-gtz v0, :cond_2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 43
    move-result v1

    .line 44
    .line 45
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    const/4 v1, 0x1

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    .line 66
    move-result v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    .line 70
    move-result v3

    .line 71
    const/4 v4, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    return-object v0
.end method

.method public static encodeYUV420SP([B[III)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    mul-int v3, v1, v2

    .line 9
    const/4 v4, 0x0

    .line 10
    move v5, v4

    .line 11
    move v6, v5

    .line 12
    move v7, v6

    .line 13
    .line 14
    :goto_0
    if-ge v5, v2, :cond_a

    .line 15
    move v8, v4

    .line 16
    .line 17
    :goto_1
    if-ge v8, v1, :cond_9

    .line 18
    .line 19
    aget v9, p1, v7

    .line 20
    .line 21
    const/high16 v10, 0xff0000

    .line 22
    and-int/2addr v10, v9

    .line 23
    .line 24
    shr-int/lit8 v10, v10, 0x10

    .line 25
    .line 26
    .line 27
    const v11, 0xff00

    .line 28
    and-int/2addr v11, v9

    .line 29
    .line 30
    shr-int/lit8 v11, v11, 0x8

    .line 31
    .line 32
    const/16 v12, 0xff

    .line 33
    and-int/2addr v9, v12

    .line 34
    .line 35
    mul-int/lit8 v13, v10, 0x42

    .line 36
    .line 37
    mul-int/lit16 v14, v11, 0x81

    .line 38
    add-int/2addr v13, v14

    .line 39
    .line 40
    mul-int/lit8 v14, v9, 0x19

    .line 41
    add-int/2addr v13, v14

    .line 42
    .line 43
    add-int/lit16 v13, v13, 0x80

    .line 44
    .line 45
    shr-int/lit8 v13, v13, 0x8

    .line 46
    .line 47
    add-int/lit8 v13, v13, 0x10

    .line 48
    .line 49
    mul-int/lit8 v14, v10, -0x26

    .line 50
    .line 51
    mul-int/lit8 v15, v11, 0x4a

    .line 52
    sub-int/2addr v14, v15

    .line 53
    .line 54
    mul-int/lit8 v15, v9, 0x70

    .line 55
    add-int/2addr v14, v15

    .line 56
    .line 57
    add-int/lit16 v14, v14, 0x80

    .line 58
    .line 59
    shr-int/lit8 v14, v14, 0x8

    .line 60
    .line 61
    add-int/lit16 v14, v14, 0x80

    .line 62
    .line 63
    mul-int/lit8 v10, v10, 0x70

    .line 64
    .line 65
    mul-int/lit8 v11, v11, 0x5e

    .line 66
    sub-int/2addr v10, v11

    .line 67
    .line 68
    mul-int/lit8 v9, v9, 0x12

    .line 69
    sub-int/2addr v10, v9

    .line 70
    .line 71
    add-int/lit16 v10, v10, 0x80

    .line 72
    .line 73
    shr-int/lit8 v9, v10, 0x8

    .line 74
    .line 75
    add-int/lit16 v9, v9, 0x80

    .line 76
    array-length v10, v0

    .line 77
    .line 78
    if-ge v6, v10, :cond_2

    .line 79
    .line 80
    add-int/lit8 v10, v6, 0x1

    .line 81
    .line 82
    if-gez v13, :cond_0

    .line 83
    move v13, v4

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_0
    if-le v13, v12, :cond_1

    .line 87
    move v13, v12

    .line 88
    :cond_1
    :goto_2
    int-to-byte v11, v13

    .line 89
    .line 90
    aput-byte v11, v0, v6

    .line 91
    move v6, v10

    .line 92
    .line 93
    :cond_2
    rem-int/lit8 v10, v5, 0x2

    .line 94
    .line 95
    if-nez v10, :cond_8

    .line 96
    .line 97
    rem-int/lit8 v10, v7, 0x2

    .line 98
    .line 99
    if-nez v10, :cond_8

    .line 100
    array-length v10, v0

    .line 101
    .line 102
    if-ge v3, v10, :cond_5

    .line 103
    .line 104
    add-int/lit8 v10, v3, 0x1

    .line 105
    .line 106
    if-gez v9, :cond_3

    .line 107
    move v9, v4

    .line 108
    goto :goto_3

    .line 109
    .line 110
    :cond_3
    if-le v9, v12, :cond_4

    .line 111
    move v9, v12

    .line 112
    :cond_4
    :goto_3
    int-to-byte v9, v9

    .line 113
    .line 114
    aput-byte v9, v0, v3

    .line 115
    move v3, v10

    .line 116
    :cond_5
    array-length v9, v0

    .line 117
    .line 118
    if-ge v3, v9, :cond_8

    .line 119
    .line 120
    add-int/lit8 v9, v3, 0x1

    .line 121
    .line 122
    if-gez v14, :cond_6

    .line 123
    move v12, v4

    .line 124
    goto :goto_4

    .line 125
    .line 126
    :cond_6
    if-le v14, v12, :cond_7

    .line 127
    goto :goto_4

    .line 128
    :cond_7
    move v12, v14

    .line 129
    :goto_4
    int-to-byte v10, v12

    .line 130
    .line 131
    aput-byte v10, v0, v3

    .line 132
    move v3, v9

    .line 133
    .line 134
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 135
    .line 136
    add-int/lit8 v8, v8, 0x1

    .line 137
    goto :goto_1

    .line 138
    .line 139
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 140
    goto :goto_0

    .line 141
    :cond_a
    return-void
.end method

.method public static findBestSampleSize(IIII)I
    .locals 4

    .line 1
    int-to-double v0, p0

    .line 2
    int-to-double v2, p2

    .line 3
    div-double/2addr v0, v2

    .line 4
    int-to-double p0, p1

    .line 5
    int-to-double p2, p3

    .line 6
    div-double/2addr p0, p2

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    .line 10
    move-result-wide p0

    .line 11
    .line 12
    const/high16 p2, 0x3f800000    # 1.0f

    .line 13
    .line 14
    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    .line 15
    mul-float/2addr p3, p2

    .line 16
    float-to-double v0, p3

    .line 17
    .line 18
    cmpg-double v0, v0, p0

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    move p2, p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    float-to-int p0, p2

    .line 24
    return p0
.end method

.method public static getBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getNV21Bytes(Landroid/graphics/Bitmap;)[B
    .locals 12

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    move-result v8

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    move-result v9

    .line 13
    .line 14
    mul-int v10, v8, v9

    .line 15
    .line 16
    new-array v11, v10, [I

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    move-object v0, p0

    .line 21
    move-object v1, v11

    .line 22
    move v3, v8

    .line 23
    move v6, v8

    .line 24
    move v7, v9

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 28
    .line 29
    mul-int/lit8 v10, v10, 0x3

    .line 30
    .line 31
    div-int/lit8 v10, v10, 0x2

    .line 32
    .line 33
    new-array p0, v10, [B

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v11, v8, v9}, Lcom/narvii/util/image/BitmapUtils;->encodeYUV420SP([B[III)V

    .line 37
    return-object p0
.end method

.method public static getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-gt v0, p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-le v0, p2, :cond_3

    .line 13
    :cond_0
    int-to-float v0, p1

    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    mul-float/2addr v0, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v0, v2

    .line 23
    int-to-float v2, p2

    .line 24
    mul-float/2addr v2, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v2, v1

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 38
    move-result v1

    .line 39
    int-to-float v1, v1

    .line 40
    mul-float/2addr v1, v0

    .line 41
    .line 42
    const/high16 v2, 0x3f000000    # 0.5f

    .line 43
    add-float/2addr v1, v2

    .line 44
    float-to-int v1, v1

    .line 45
    .line 46
    if-le v1, p1, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move p1, v1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    move-result v1

    .line 53
    int-to-float v1, v1

    .line 54
    mul-float/2addr v1, v0

    .line 55
    add-float/2addr v1, v2

    .line 56
    float-to-int v0, v1

    .line 57
    .line 58
    if-le v0, p2, :cond_2

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    move p2, v0

    .line 61
    :goto_1
    const/4 v0, 0x1

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 65
    move-result-object p0

    .line 66
    :cond_3
    return-object p0
.end method

.method public static openBitmapAtSize(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 4

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
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 18
    .line 19
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, p1, p2}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    .line 23
    move-result p1

    .line 24
    .line 25
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 26
    const/4 p1, 0x0

    .line 27
    .line 28
    :try_start_0
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 38
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p2

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    .line 44
    const/4 p2, 0x0

    .line 45
    .line 46
    :goto_0
    if-nez p2, :cond_0

    .line 47
    .line 48
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 49
    .line 50
    mul-int/lit8 p2, p2, 0x2

    .line 51
    .line 52
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 53
    .line 54
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    .line 56
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 64
    move-result-object p2

    .line 65
    :cond_0
    return-object p2
.end method

.method public static readImageRotation(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const/4 p0, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return p0

    .line 12
    .line 13
    :cond_0
    const-string v1, "Orientation"

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    const/4 v1, 0x6

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    const/16 p0, 0x10e

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_2
    const/16 p0, 0x5a

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_3
    const/16 p0, 0xb4

    .line 38
    :goto_1
    return p0
.end method
