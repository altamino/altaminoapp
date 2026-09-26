.class public Lcom/narvii/video/faceunity/CustomizedCameraRenderer;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;,
        Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;,
        Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CustomizedRenderer"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraIndex:I

.field private mCameraPreviewHeight:I

.field private mCameraPreviewWidth:I

.field private mCameraRotation:I

.field private mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

.field private mContext:Landroid/content/Context;

.field private mDstTexture:I

.field private mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mFbo:I

.field private mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

.field private mFullQuadVertices:Ljava/nio/ByteBuffer;

.field private final mOffscreenShader:Lcom/narvii/video/faceunity/Shader;

.field private mOnEGLContextHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;

.field private mOnFrameAvailableHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;

.field private mOrientationM:[F

.field private mPreviewing:Z

.field private mRatio:[F

.field public final mSrcTexture:Lcom/narvii/video/gles/OESTexture;

.field private volatile mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private volatile mUpdateTexture:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 2
    new-instance v1, Lcom/narvii/video/gles/OESTexture;

    invoke-direct {v1}, Lcom/narvii/video/gles/OESTexture;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    .line 3
    new-instance v1, Lcom/narvii/video/faceunity/Shader;

    invoke-direct {v1}, Lcom/narvii/video/faceunity/Shader;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOffscreenShader:Lcom/narvii/video/faceunity/Shader;

    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    const/16 v1, 0x438

    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    const/16 v1, 0x2d0

    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 6
    new-instance v0, Lcom/narvii/video/gles/OESTexture;

    invoke-direct {v0}, Lcom/narvii/video/gles/OESTexture;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    .line 7
    new-instance v0, Lcom/narvii/video/faceunity/Shader;

    invoke-direct {v0}, Lcom/narvii/video/faceunity/Shader;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOffscreenShader:Lcom/narvii/video/faceunity/Shader;

    iput-boolean p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    iput-boolean p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    const/16 v0, 0x438

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    return-object p1
.end method

.method private createFbo(II)I
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    new-array v2, v0, [I

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 13
    .line 14
    aget v0, v2, v3

    .line 15
    .line 16
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    .line 17
    .line 18
    aget v0, v1, v3

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    .line 21
    .line 22
    const/16 v1, 0xde1

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 26
    .line 27
    const/16 v4, 0xde1

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    const/16 v6, 0x1908

    .line 31
    const/4 v9, 0x0

    .line 32
    .line 33
    const/16 v10, 0x1908

    .line 34
    .line 35
    const/16 v11, 0x1401

    .line 36
    const/4 v12, 0x0

    .line 37
    move v7, p1

    .line 38
    move v8, p2

    .line 39
    .line 40
    .line 41
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 42
    .line 43
    const/16 p1, 0x2802

    .line 44
    .line 45
    .line 46
    const p2, 0x812f

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 50
    .line 51
    const/16 p1, 0x2803

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 55
    .line 56
    const/16 p1, 0x2800

    .line 57
    .line 58
    const/16 p2, 0x2601

    .line 59
    .line 60
    .line 61
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 62
    .line 63
    const/16 p1, 0x2801

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 67
    .line 68
    iget p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    .line 69
    .line 70
    .line 71
    const p2, 0x8d40

    .line 72
    .line 73
    .line 74
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 75
    .line 76
    .line 77
    const p1, 0x8ce0

    .line 78
    .line 79
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    .line 80
    .line 81
    .line 82
    invoke-static {p2, p1, v1, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 83
    .line 84
    .line 85
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 86
    move-result p1

    .line 87
    .line 88
    .line 89
    const p2, 0x8cd5

    .line 90
    .line 91
    if-eq p1, p2, :cond_0

    .line 92
    .line 93
    const-string p1, "CustomizedRenderer"

    .line 94
    .line 95
    const-string p2, "Failed to create framebuffer!!!"

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return v3
.end method

.method private init()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    new-array v1, v0, [B

    .line 5
    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFullQuadVertices:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;-><init>(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 30
    const/4 v0, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 34
    const/4 v0, 0x2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    .line 47
    return-void

    .line 48
    nop

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    :array_0
    .array-data 1
        -0x1t
        0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public getDisplayRotation()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "window"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    const/4 v1, 0x2

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    const/4 v1, 0x3

    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    .line 34
    :cond_0
    const/16 v0, 0x10e

    .line 35
    return v0

    .line 36
    .line 37
    :cond_1
    const/16 v0, 0xb4

    .line 38
    return v0

    .line 39
    .line 40
    :cond_2
    const/16 v0, 0x5a

    .line 41
    return v0
.end method

.method public initCameraTexture()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOffscreenShader:Lcom/narvii/video/faceunity/Shader;

    .line 3
    .line 4
    sget v1, Lcom/narvii/video/R$raw;->vshader:I

    .line 5
    .line 6
    sget v2, Lcom/narvii/video/R$raw;->fshader:I

    .line 7
    .line 8
    iget-object v3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/video/faceunity/Shader;->setProgram(IILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnEGLContextHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;->onEGLContextReady(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/video/gles/OESTexture;->init()V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 47
    .line 48
    new-instance v1, Landroid/graphics/SurfaceTexture;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/video/gles/OESTexture;->getTextureId()I

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 58
    .line 59
    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 70
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 31
    .line 32
    :cond_0
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 33
    return-void
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    .line 4
    .line 5
    const/16 v0, 0x780

    .line 6
    .line 7
    const/16 v1, 0x438

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1, v0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->createFbo(II)I

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/video/faceunity/TextureRenderer;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v2}, Lcom/narvii/video/faceunity/TextureRenderer;-><init>(Z)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/video/faceunity/TextureRenderer;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v3}, Lcom/narvii/video/faceunity/TextureRenderer;-><init>(Z)V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->getDisplayRotation()I

    .line 44
    move-result p1

    .line 45
    .line 46
    iget-boolean v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    const/high16 v4, 0x3f800000    # 1.0f

    .line 51
    const/4 v5, 0x0

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v5, v5, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 55
    .line 56
    const/16 v4, 0x4100

    .line 57
    .line 58
    .line 59
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 60
    .line 61
    iget-object v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 68
    .line 69
    .line 70
    invoke-static {v3, v3, v1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 71
    .line 72
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    .line 73
    .line 74
    .line 75
    const v1, 0x8d40

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 79
    .line 80
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 81
    .line 82
    iget v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4}, Lcom/narvii/video/faceunity/TextureRenderer;->rotate(I)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 88
    .line 89
    iget-object v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/narvii/video/gles/OESTexture;->getTextureId()I

    .line 93
    move-result v4

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lcom/narvii/video/faceunity/TextureRenderer;->draw(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 100
    .line 101
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    .line 102
    .line 103
    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewHeight:I

    .line 104
    mul-int/2addr v0, v1

    .line 105
    int-to-float v0, v0

    .line 106
    .line 107
    const/high16 v4, 0x42c80000    # 100.0f

    .line 108
    mul-float/2addr v0, v4

    .line 109
    .line 110
    iget v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    .line 111
    int-to-float v5, v5

    .line 112
    div-float/2addr v0, v5

    .line 113
    div-float/2addr v0, v4

    .line 114
    float-to-int v0, v0

    .line 115
    .line 116
    iget v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    .line 117
    .line 118
    if-ne v4, v2, :cond_3

    .line 119
    neg-int p1, p1

    .line 120
    .line 121
    add-int/lit16 p1, p1, 0xb4

    .line 122
    .line 123
    rem-int/lit16 p1, p1, 0x168

    .line 124
    goto :goto_1

    .line 125
    .line 126
    :cond_3
    add-int/lit16 p1, p1, 0xb4

    .line 127
    .line 128
    rem-int/lit16 p1, p1, 0x168

    .line 129
    .line 130
    :goto_1
    iget v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewWidth:I

    .line 131
    sub-int/2addr v2, v0

    .line 132
    .line 133
    div-int/lit8 v2, v2, 0x2

    .line 134
    .line 135
    .line 136
    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p1}, Lcom/narvii/video/faceunity/TextureRenderer;->rotate(I)V

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 144
    .line 145
    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/narvii/video/faceunity/TextureRenderer;->draw(I)V

    .line 149
    .line 150
    iput-boolean v3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    .line 151
    .line 152
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnFrameAvailableHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    .line 157
    .line 158
    iget-object v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 159
    .line 160
    .line 161
    invoke-interface {v0, v1, v2, p1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;->onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_4
    monitor-exit p0

    .line 163
    return-void

    .line 164
    :goto_2
    monitor-exit p0

    .line 165
    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x1

    .line 3
    .line 4
    :try_start_0
    iput-boolean p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewWidth:I

    .line 4
    .line 5
    iput p3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewHeight:I

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .line 29
    :try_start_2
    const-string v1, "CustomizedRenderer"

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v3, "setPreviewTexture "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    :goto_1
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x1

    .line 69
    const/4 v3, 0x0

    .line 70
    .line 71
    if-lez v1, :cond_4

    .line 72
    .line 73
    const/16 v1, 0x500

    .line 74
    .line 75
    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    .line 76
    .line 77
    const/16 v1, 0x2d0

    .line 78
    .line 79
    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v5

    .line 92
    .line 93
    if-eqz v5, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    check-cast v5, [I

    .line 100
    .line 101
    const-string v6, "CustomizedRenderer"

    .line 102
    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v8, "supported fps range "

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    aget v8, v5, v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v8, " "

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    aget v5, v5, v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v5

    .line 132
    .line 133
    .line 134
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    goto :goto_2

    .line 136
    .line 137
    .line 138
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v4

    .line 140
    .line 141
    check-cast v4, [I

    .line 142
    .line 143
    aget v4, v4, v2

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v5

    .line 148
    .line 149
    check-cast v5, [I

    .line 150
    .line 151
    aget v5, v5, v2

    .line 152
    add-int/2addr v4, v5

    .line 153
    .line 154
    div-int/lit8 v4, v4, 0x2

    .line 155
    .line 156
    .line 157
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 158
    move-result v5

    .line 159
    .line 160
    if-lez v5, :cond_3

    .line 161
    .line 162
    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v5

    .line 165
    .line 166
    check-cast v5, [I

    .line 167
    .line 168
    aget v5, v5, v2

    .line 169
    .line 170
    if-gt v4, v5, :cond_2

    .line 171
    goto :goto_3

    .line 172
    .line 173
    .line 174
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v4

    .line 176
    .line 177
    check-cast v4, [I

    .line 178
    .line 179
    aget v4, v4, v2

    .line 180
    .line 181
    :goto_3
    const-string v5, "CustomizedRenderer"

    .line 182
    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    const-string v7, "setPreviewFpsRange "

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v7

    .line 196
    .line 197
    check-cast v7, [I

    .line 198
    .line 199
    aget v7, v7, v3

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v7, " "

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v6

    .line 215
    .line 216
    .line 217
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    check-cast v1, [I

    .line 224
    .line 225
    aget v1, v1, v3

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 229
    .line 230
    :cond_3
    const-string v1, "CustomizedRenderer"

    .line 231
    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    const-string v5, "setPreviewSize "

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    iget v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v5, " "

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    iget v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v4

    .line 260
    .line 261
    .line 262
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    .line 265
    .line 266
    iget v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 270
    .line 271
    :cond_4
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    move-result-object v1

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 279
    move-result-object v1

    .line 280
    .line 281
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 282
    .line 283
    const/high16 v4, 0x3f800000    # 1.0f

    .line 284
    .line 285
    if-ne v1, v2, :cond_5

    .line 286
    .line 287
    iget-object v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    .line 288
    const/4 v6, 0x0

    .line 289
    .line 290
    const/high16 v7, 0x42b40000    # 90.0f

    .line 291
    const/4 v8, 0x0

    .line 292
    const/4 v9, 0x0

    .line 293
    .line 294
    const/high16 v10, 0x3f800000    # 1.0f

    .line 295
    .line 296
    .line 297
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 298
    .line 299
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    .line 300
    int-to-float v5, v3

    .line 301
    mul-float/2addr v5, v4

    .line 302
    int-to-float p3, p3

    .line 303
    .line 304
    div-float p3, v5, p3

    .line 305
    .line 306
    aput p3, v1, v2

    .line 307
    int-to-float p2, p2

    .line 308
    div-float/2addr v5, p2

    .line 309
    .line 310
    aput v5, v1, v3

    .line 311
    goto :goto_4

    .line 312
    .line 313
    :cond_5
    iget-object v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    .line 314
    const/4 v6, 0x0

    .line 315
    const/4 v7, 0x0

    .line 316
    const/4 v8, 0x0

    .line 317
    const/4 v9, 0x0

    .line 318
    .line 319
    const/high16 v10, 0x3f800000    # 1.0f

    .line 320
    .line 321
    .line 322
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 323
    .line 324
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    .line 325
    int-to-float v5, v3

    .line 326
    mul-float/2addr v5, v4

    .line 327
    int-to-float p3, p3

    .line 328
    .line 329
    div-float p3, v5, p3

    .line 330
    .line 331
    aput p3, v1, v2

    .line 332
    int-to-float p2, p2

    .line 333
    div-float/2addr v5, p2

    .line 334
    .line 335
    aput v5, v1, v3

    .line 336
    .line 337
    :goto_4
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 341
    .line 342
    new-instance p2, Landroid/hardware/Camera$CameraInfo;

    .line 343
    .line 344
    .line 345
    invoke-direct {p2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 346
    .line 347
    iget p3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    .line 348
    .line 349
    .line 350
    invoke-static {p3, p2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 351
    .line 352
    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 353
    .line 354
    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 355
    .line 356
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 360
    .line 361
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 365
    move-result-object p2

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    .line 369
    move-result-object p2

    .line 370
    .line 371
    iput-boolean v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    .line 372
    .line 373
    const-string p3, "CustomizedRenderer"

    .line 374
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    const-string v1, "onSurfaceChanged end "

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string p1, " "

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    const-string p1, " "

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    iget p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string p1, " "

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    iget-boolean p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object p1

    .line 419
    .line 420
    .line 421
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    monitor-exit p0

    .line 423
    return-void

    .line 424
    :goto_5
    monitor-exit p0

    .line 425
    throw p1
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->initCameraTexture()V

    .line 5
    .line 6
    const-string p2, "CustomizedRenderer"

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "onSurfaceCreated "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p1, " end"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    .line 36
    throw p1
.end method

.method public setOnEGLContextHandler(Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnEGLContextHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;

    return-void
.end method

.method public setOnFrameAvailableHandler(Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnFrameAvailableHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;

    return-void
.end method
