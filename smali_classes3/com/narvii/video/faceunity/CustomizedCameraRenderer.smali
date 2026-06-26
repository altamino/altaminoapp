.class public Lcom/narvii/video/faceunity/CustomizedCameraRenderer;
.super Landroid/opengl/GLSurfaceView;
.source "CustomizedCameraRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;,
        Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;,
        Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;
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

    .line 123
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    .line 107
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 111
    new-instance v1, Lcom/narvii/video/gles/OESTexture;

    invoke-direct {v1}, Lcom/narvii/video/gles/OESTexture;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    .line 112
    new-instance v1, Lcom/narvii/video/faceunity/Shader;

    invoke-direct {v1}, Lcom/narvii/video/faceunity/Shader;-><init>()V

    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOffscreenShader:Lcom/narvii/video/faceunity/Shader;

    .line 114
    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 117
    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 118
    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    .line 120
    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    const/16 v1, 0x438

    .line 202
    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    const/16 v1, 0x2d0

    .line 203
    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    .line 373
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    .line 374
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    .line 124
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 102
    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    .line 107
    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 111
    new-instance v0, Lcom/narvii/video/gles/OESTexture;

    invoke-direct {v0}, Lcom/narvii/video/gles/OESTexture;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    .line 112
    new-instance v0, Lcom/narvii/video/faceunity/Shader;

    invoke-direct {v0}, Lcom/narvii/video/faceunity/Shader;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOffscreenShader:Lcom/narvii/video/faceunity/Shader;

    .line 114
    iput-boolean p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 117
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 118
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    .line 120
    iput-boolean p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    const/16 v0, 0x438

    .line 202
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    const/16 v0, 0x2d0

    .line 203
    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    .line 373
    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    .line 374
    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    .line 130
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    .line 131
    invoke-direct {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method private createFbo(II)I
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 379
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 380
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 381
    aget v0, v2, v3

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    .line 382
    aget v0, v1, v3

    iput v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    .line 384
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v12, 0x0

    move v7, p1

    move v8, p2

    .line 385
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const p1, 0x812f

    const/16 p2, 0x2802

    .line 386
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2803

    .line 387
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2601

    const/16 p2, 0x2800

    .line 388
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2801

    .line 389
    invoke-static {v1, p2, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 392
    iget p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 394
    iget p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    const v0, 0x8ce0

    invoke-static {p2, v0, v1, p1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 397
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    const p2, 0x8cd5

    if-eq p1, p2, :cond_0

    const-string p1, "CustomizedRenderer"

    const-string p2, "Failed to create framebuffer!!!"

    .line 399
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3
.end method

.method private init()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 136
    fill-array-data v1, :array_0

    .line 137
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFullQuadVertices:Ljava/nio/ByteBuffer;

    .line 138
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFullQuadVertices:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    new-instance v0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;

    invoke-direct {v0, p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$MyContextFactory;-><init>(Lcom/narvii/video/faceunity/CustomizedCameraRenderer;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 v0, 0x2

    .line 143
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 144
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 145
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 147
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setDebugFlags(I)V

    return-void

    nop

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
    .locals 3

    .line 285
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0

    :cond_3
    return v1
.end method

.method public initCameraTexture()V
    .locals 4

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOffscreenShader:Lcom/narvii/video/faceunity/Shader;

    sget v1, Lcom/narvii/video/R$raw;->vshader:I

    sget v2, Lcom/narvii/video/R$raw;->fshader:I

    iget-object v3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/video/faceunity/Shader;->setProgram(IILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 181
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnEGLContextHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;

    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 186
    invoke-interface {v0, v1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;->onEGLContextReady(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    invoke-virtual {v0}, Lcom/narvii/video/gles/OESTexture;->init()V

    .line 194
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 195
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    invoke-virtual {v2}, Lcom/narvii/video/gles/OESTexture;->getTextureId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 196
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v0, 0x0

    .line 407
    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    .line 408
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 410
    iput-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 414
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 416
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 417
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 420
    :cond_0
    iput-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    monitor-enter p0

    .line 306
    :try_start_0
    iget p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    const/16 v0, 0x780

    const/16 v1, 0x438

    if-nez p1, :cond_0

    .line 307
    invoke-direct {p0, v1, v0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->createFbo(II)I

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 311
    new-instance p1, Lcom/narvii/video/faceunity/TextureRenderer;

    invoke-direct {p1, v2}, Lcom/narvii/video/faceunity/TextureRenderer;-><init>(Z)V

    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 315
    new-instance p1, Lcom/narvii/video/faceunity/TextureRenderer;

    invoke-direct {p1, v3}, Lcom/narvii/video/faceunity/TextureRenderer;-><init>(Z)V

    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->getDisplayRotation()I

    move-result p1

    .line 322
    iget-boolean v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    if-eqz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 323
    invoke-static {v5, v5, v5, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4100

    .line 324
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 327
    iget-object v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 330
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 331
    invoke-static {v3, v3, v1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 332
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFbo:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 334
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    iget v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    invoke-virtual {v0, v4}, Lcom/narvii/video/faceunity/TextureRenderer;->rotate(I)V

    .line 336
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraToFbo:Lcom/narvii/video/faceunity/TextureRenderer;

    iget-object v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSrcTexture:Lcom/narvii/video/gles/OESTexture;

    invoke-virtual {v4}, Lcom/narvii/video/gles/OESTexture;->getTextureId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/narvii/video/faceunity/TextureRenderer;->draw(I)V

    .line 337
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 340
    iget v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewHeight:I

    mul-int v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 341
    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewHeight:I

    .line 345
    iget v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    if-ne v4, v2, :cond_3

    neg-int p1, p1

    add-int/lit16 p1, p1, 0xb4

    .line 346
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_3
    add-int/lit16 p1, p1, 0xb4

    .line 348
    rem-int/lit16 p1, p1, 0x168

    .line 355
    :goto_0
    iget v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewWidth:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 357
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    invoke-virtual {v0, p1}, Lcom/narvii/video/faceunity/TextureRenderer;->rotate(I)V

    .line 359
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mFboToView:Lcom/narvii/video/faceunity/TextureRenderer;

    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    invoke-virtual {v0, v1}, Lcom/narvii/video/faceunity/TextureRenderer;->draw(I)V

    .line 361
    iput-boolean v3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    .line 363
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnFrameAvailableHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnFrameAvailableHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;

    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mDstTexture:I

    iget-object v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mEGLCurrentContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, p1}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;->onFrameAvailable(ILjavax/microedition/khronos/egl/EGLContext;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 160
    :try_start_0
    iput-boolean p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mUpdateTexture:Z

    .line 161
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_0
    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewWidth:I

    .line 213
    iput p3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mViewHeight:I

    .line 215
    iget-boolean v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CustomizedRenderer"

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_4

    const/16 v1, 0x500

    .line 233
    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    const/16 v1, 0x2d0

    .line 234
    iput v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    .line 236
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    .line 238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const-string v6, "CustomizedRenderer"

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supported fps range "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v5, v2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v5, v5, v2

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 243
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 244
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v5, v5, v2

    if-gt v4, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v4, v4, v2

    :goto_2
    const-string v5, "CustomizedRenderer"

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPreviewFpsRange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aget v1, v1, v3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :cond_3
    const-string v1, "CustomizedRenderer"

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewWidth:I

    iget v4, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraPreviewHeight:I

    invoke-virtual {v0, v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 254
    :cond_4
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_5

    .line 256
    iget-object v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    const/4 v6, 0x0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 257
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    int-to-float v5, v3

    mul-float v5, v5, v4

    int-to-float p3, p3

    div-float p3, v5, p3

    aput p3, v1, v2

    .line 258
    iget-object p3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    int-to-float p2, p2

    div-float/2addr v5, p2

    aput v5, p3, v3

    goto :goto_3

    .line 260
    :cond_5
    iget-object v5, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOrientationM:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 261
    iget-object v1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    int-to-float v5, v3

    mul-float v5, v5, v4

    int-to-float p3, p3

    div-float p3, v5, p3

    aput p3, v1, v2

    .line 262
    iget-object p3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mRatio:[F

    int-to-float p2, p2

    div-float/2addr v5, p2

    aput v5, p3, v3

    .line 266
    :goto_3
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 268
    new-instance p2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 269
    iget p3, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraIndex:I

    invoke-static {p3, p2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 270
    iget p2, p2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    .line 272
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 274
    iget-object p2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 275
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p2

    .line 276
    iput-boolean v2, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    const-string p3, "CustomizedRenderer"

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mCameraRotation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mPreviewing:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->initCameraTexture()V

    const-string p2, "CustomizedRenderer"

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnEGLContextHandler(Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnEGLContextHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnEGLContextListener;

    return-void
.end method

.method public setOnFrameAvailableHandler(Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/narvii/video/faceunity/CustomizedCameraRenderer;->mOnFrameAvailableHandler:Lcom/narvii/video/faceunity/CustomizedCameraRenderer$OnFrameAvailableListener;

    return-void
.end method
