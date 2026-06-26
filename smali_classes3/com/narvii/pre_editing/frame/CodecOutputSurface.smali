.class Lcom/narvii/pre_editing/frame/CodecOutputSurface;
.super Ljava/lang/Object;
.source "CodecOutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CodecOutputSurface"


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field mHeight:I

.field private mPixelBuf:Ljava/nio/ByteBuffer;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

.field mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 43
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 44
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 62
    iput p1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 63
    iput p2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 65
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->eglSetup()V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->makeCurrent()V

    .line 67
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->setup()V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 319
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private eglSetup()V
    .locals 13

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 104
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    .line 108
    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    new-array v6, v1, [I

    .line 114
    fill-array-data v6, :array_0

    new-array v1, v4, [Landroid/opengl/EGLConfig;

    new-array v11, v4, [I

    .line 125
    iget-object v5, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v9, 0x0

    array-length v10, v1

    const/4 v12, 0x0

    move-object v8, v1

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    new-array v5, v3, [I

    .line 131
    fill-array-data v5, :array_1

    .line 135
    iget-object v6, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v7, v1, v0

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v6, v7, v8, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    iput-object v5, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    const-string v5, "eglCreateContext"

    .line 137
    invoke-direct {p0, v5}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    new-array v5, v5, [I

    const/16 v6, 0x3057

    aput v6, v5, v0

    .line 143
    iget v6, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    aput v6, v5, v4

    const/16 v4, 0x3056

    aput v4, v5, v2

    iget v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    aput v2, v5, v3

    const/4 v2, 0x4

    const/16 v3, 0x3038

    aput v3, v5, v2

    .line 148
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v1, v1, v0

    invoke-static {v2, v1, v5, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string v0, "eglCreatePbufferSurface"

    .line 149
    invoke-direct {p0, v0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    .line 74
    new-instance v0, Lcom/narvii/pre_editing/frame/STextureRender;

    invoke-direct {v0}, Lcom/narvii/pre_editing/frame/STextureRender;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 75
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    invoke-virtual {v0}, Lcom/narvii/pre_editing/frame/STextureRender;->surfaceCreated()V

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    invoke-virtual {v1}, Lcom/narvii/pre_editing/frame/STextureRender;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecOutputSurface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    invoke-virtual {v1}, Lcom/narvii/pre_editing/frame/STextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 91
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 93
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    .line 95
    iget v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    iget v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 209
    :try_start_1
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 210
    iget-boolean v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "frame wait timed out"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    .line 216
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    .line 219
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    .line 220
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    const-string v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :catchall_0
    move-exception v1

    .line 220
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public drawImage(Z)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const-string p1, "CodecOutputSurface"

    const-string v0, "new frame available"

    .line 240
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 242
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    .line 246
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 247
    monitor-exit p1

    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 247
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 161
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 162
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 163
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 165
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 166
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 167
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 169
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 176
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    .line 177
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public saveFrame(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 287
    iget v3, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    iget v4, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    iget-object v7, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 v0, 0x0

    .line 292
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    :try_start_1
    iget v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    iget v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 295
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 296
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 297
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frame as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CodecOutputSurface"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 300
    :cond_0
    throw p1
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 307
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 308
    iget v3, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    iget v4, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    iget-object v7, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 310
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 311
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-void
.end method
