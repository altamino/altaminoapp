.class Lcom/narvii/pre_editing/frame/CodecOutputSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 8
    .line 9
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 12
    .line 13
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 23
    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    if-lez p2, :cond_0

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 29
    .line 30
    iput p2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->eglSetup()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->makeCurrent()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->setup()V

    .line 40
    return-void

    .line 41
    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    throw p1
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x3000

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, ": EGL error: 0x"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v1
.end method

.method private eglSetup()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    iput-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 8
    .line 9
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 10
    .line 11
    if-eq v1, v2, :cond_4

    .line 12
    const/4 v2, 0x2

    .line 13
    .line 14
    new-array v3, v2, [I

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    const/16 v1, 0xd

    .line 24
    .line 25
    new-array v6, v1, [I

    .line 26
    .line 27
    .line 28
    fill-array-data v6, :array_0

    .line 29
    const/4 v10, 0x1

    .line 30
    .line 31
    new-array v1, v10, [Landroid/opengl/EGLConfig;

    .line 32
    .line 33
    new-array v11, v4, [I

    .line 34
    .line 35
    iget-object v5, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    move-object v8, v1

    .line 40
    .line 41
    .line 42
    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const/16 v3, 0x3098

    .line 48
    .line 49
    const/16 v4, 0x3038

    .line 50
    .line 51
    .line 52
    filled-new-array {v3, v2, v4}, [I

    .line 53
    move-result-object v2

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 56
    .line 57
    aget-object v5, v1, v0

    .line 58
    .line 59
    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v5, v6, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    iput-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 66
    .line 67
    const-string v2, "eglCreateContext"

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v2}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 71
    .line 72
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 73
    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    iget v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 77
    .line 78
    const/16 v3, 0x3056

    .line 79
    .line 80
    iget v5, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 81
    .line 82
    const/16 v6, 0x3057

    .line 83
    .line 84
    .line 85
    filled-new-array {v6, v2, v3, v5, v4}, [I

    .line 86
    move-result-object v2

    .line 87
    .line 88
    iget-object v3, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 89
    .line 90
    aget-object v1, v1, v0

    .line 91
    .line 92
    .line 93
    invoke-static {v3, v1, v2, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 97
    .line 98
    const-string v0, "eglCreatePbufferSurface"

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v0}, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 104
    .line 105
    if-eqz v0, :cond_0

    .line 106
    return-void

    .line 107
    .line 108
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    const-string v1, "surface was null"

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 114
    throw v0

    .line 115
    .line 116
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 117
    .line 118
    const-string v1, "null context"

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    throw v0

    .line 123
    .line 124
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    const-string v1, "unable to find RGB888+recordable ES2 EGL config"

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 131
    :cond_3
    const/4 v0, 0x0

    .line 132
    .line 133
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    .line 136
    .line 137
    const-string v1, "unable to initialize EGL14"

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 141
    throw v0

    .line 142
    .line 143
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 144
    .line 145
    const-string v1, "unable to get EGL14 display"

    .line 146
    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 149
    throw v0

    .line 150
    nop

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
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
.end method

.method private setup()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/pre_editing/frame/STextureRender;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/pre_editing/frame/STextureRender;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/pre_editing/frame/STextureRender;->surfaceCreated()V

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v1, "textureID="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/pre_editing/frame/STextureRender;->getTextureId()I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-string v1, "CodecOutputSurface"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/narvii/pre_editing/frame/STextureRender;->getTextureId()I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 50
    .line 51
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 55
    .line 56
    new-instance v0, Landroid/view/Surface;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    .line 64
    .line 65
    iget v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 66
    .line 67
    iget v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 68
    mul-int/2addr v0, v1

    .line 69
    .line 70
    mul-int/lit8 v0, v0, 0x4

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide/16 v2, 0x9c4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 22
    .line 23
    const-string v2, "frame wait timed out"

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .line 32
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 36
    throw v2

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    .line 40
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 43
    .line 44
    const-string v1, "before updateTexImage"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/narvii/pre_editing/frame/STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 53
    return-void

    .line 54
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    throw v1
.end method

.method public drawImage(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/narvii/pre_editing/frame/STextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;Z)V

    .line 8
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    const-string v1, "eglMakeCurrent failed"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    .line 2
    const-string p1, "CodecOutputSurface"

    .line 3
    .line 4
    const-string v0, "new frame available"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 10
    monitor-enter p1

    .line 11
    .line 12
    :try_start_0
    iget-boolean v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameAvailable:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 23
    monitor-exit p1

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string v1, "mFrameAvailable already set, frame could be dropped"

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v0
.end method

.method public release()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 27
    .line 28
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 31
    .line 32
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 35
    .line 36
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 44
    const/4 v0, 0x0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mTextureRender:Lcom/narvii/pre_editing/frame/STextureRender;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurface:Landroid/view/Surface;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 51
    return-void
.end method

.method public saveFrame(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    iget v3, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 10
    .line 11
    iget v4, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 12
    .line 13
    const/16 v5, 0x1908

    .line 14
    .line 15
    const/16 v6, 0x1401

    .line 16
    .line 17
    iget-object v7, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 24
    .line 25
    new-instance v2, Ljava/io/FileOutputStream;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    :try_start_1
    iget v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 34
    .line 35
    iget v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 36
    .line 37
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 52
    .line 53
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 54
    .line 55
    const/16 v3, 0x5a

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    const-string v1, "Saved "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    iget v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v1, "x"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    iget v1, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, " frame as \'"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p1, "\'"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    const-string v0, "CodecOutputSurface"

    .line 109
    .line 110
    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    move-object v0, v1

    .line 115
    goto :goto_0

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    .line 118
    :goto_0
    if-eqz v0, :cond_0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 122
    :cond_0
    throw p1
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    iget v3, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mWidth:I

    .line 10
    .line 11
    iget v4, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mHeight:I

    .line 12
    .line 13
    const/16 v5, 0x1908

    .line 14
    .line 15
    const/16 v6, 0x1401

    .line 16
    .line 17
    iget-object v7, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/CodecOutputSurface;->mPixelBuf:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 31
    return-void
.end method
