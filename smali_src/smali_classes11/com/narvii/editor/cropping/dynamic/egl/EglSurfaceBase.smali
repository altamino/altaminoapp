.class public Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "GLUtil"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/narvii/editor/cropping/dynamic/egl/EglCore;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mWidth:I

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mHeight:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 15
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mWidth:I

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mHeight:I

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string p2, "surface already created"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "surface already created"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public getHeight()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mHeight:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    const/16 v2, 0x3056

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    .line 14
    move-result v0

    .line 15
    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mWidth:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    const/16 v2, 0x3057

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    .line 14
    move-result v0

    .line 15
    :cond_0
    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 8
    return-void
.end method

.method public makeCurrentReadFrom(Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    .line 10
    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 8
    .line 9
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mHeight:I

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mWidth:I

    .line 17
    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getWidth()I

    .line 18
    move-result v7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->getHeight()I

    .line 22
    move-result v8

    .line 23
    .line 24
    mul-int v0, v7, v8

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x4

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 30
    move-result-object v9

    .line 31
    .line 32
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    const/16 v4, 0x1908

    .line 40
    .line 41
    const/16 v5, 0x1401

    .line 42
    move v2, v7

    .line 43
    move v3, v8

    .line 44
    move-object v6, v9

    .line 45
    .line 46
    .line 47
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    const/4 v0, 0x0

    .line 52
    .line 53
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 54
    .line 55
    new-instance v2, Ljava/io/FileOutputStream;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    .line 63
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 64
    .line 65
    .line 66
    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 71
    .line 72
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 73
    .line 74
    const/16 v3, 0x5a

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string v1, "Saved "

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v1, "x"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, " frame as \'"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string p1, "\'"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    const-string v0, "GLUtil"

    .line 124
    .line 125
    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    move-object v0, v1

    .line 130
    goto :goto_0

    .line 131
    :catchall_1
    move-exception p1

    .line 132
    .line 133
    :goto_0
    if-eqz v0, :cond_0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 137
    :cond_0
    throw p1

    .line 138
    .line 139
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 140
    .line 141
    const-string v0, "Expected EGL context/surface is not current"

    .line 142
    .line 143
    .line 144
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p1
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    .line 8
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEglCore:Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/editor/cropping/dynamic/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v1, "GLUtil"

    .line 13
    .line 14
    const-string v2, "WARNING: swapBuffers() failed"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return v0
.end method
