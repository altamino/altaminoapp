.class public Lio/agora/rtc/gdp/EglSurfaceBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String; = "GDPGlUtil"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lio/agora/rtc/gdp/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lio/agora/rtc/gdp/EglCore;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglCore"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 6
    .line 7
    iput-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 8
    const/4 v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    .line 11
    .line 12
    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    .line 13
    .line 14
    iput-object p1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 15
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/gdp/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 15
    .line 16
    iput p1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    .line 17
    .line 18
    iput p2, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    .line 24
    const-string/jumbo p2, "surface already created"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/agora/rtc/gdp/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "surface already created"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1
.end method

.method public getHeight()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 7
    .line 8
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    const/16 v2, 0x3056

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/gdp/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

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
    iget v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 7
    .line 8
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    const/16 v2, 0x3057

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/gdp/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

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
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 8
    return-void
.end method

.method public makeCurrentReadFrom(Lio/agora/rtc/gdp/EglSurfaceBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readSurface"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    iget-object p1, p1, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lio/agora/rtc/gdp/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    .line 10
    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 8
    .line 9
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 10
    .line 11
    iput-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mHeight:I

    .line 15
    .line 16
    iput v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mWidth:I

    .line 17
    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

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
    invoke-virtual {p0}, Lio/agora/rtc/gdp/EglSurfaceBase;->getWidth()I

    .line 18
    move-result v7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lio/agora/rtc/gdp/EglSurfaceBase;->getHeight()I

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
    const-string v0, "glReadPixels"

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lio/agora/rtc/gdp/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 59
    .line 60
    new-instance v2, Ljava/io/FileOutputStream;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    .line 68
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 69
    .line 70
    .line 71
    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 76
    .line 77
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 78
    .line 79
    const/16 v3, 0x5a

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v1, "Saved "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v1, "x"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, " frame as \'"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p1, "\'"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    const-string v0, "GDPGlUtil"

    .line 130
    .line 131
    .line 132
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    move-object v0, v1

    .line 136
    goto :goto_0

    .line 137
    :catchall_1
    move-exception p1

    .line 138
    .line 139
    :goto_0
    if-eqz v0, :cond_0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 143
    :cond_0
    throw p1

    .line 144
    .line 145
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 146
    .line 147
    const-string v0, "Expected EGL context/surface is not current"

    .line 148
    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p1
.end method

.method public setPresentationTime(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nsecs"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1, p2}, Lio/agora/rtc/gdp/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    .line 8
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEglCore:Lio/agora/rtc/gdp/EglCore;

    .line 3
    .line 4
    iget-object v1, p0, Lio/agora/rtc/gdp/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lio/agora/rtc/gdp/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v1, "GDPGlUtil"

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
