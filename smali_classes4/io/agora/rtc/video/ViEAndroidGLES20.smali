.class public Lio/agora/rtc/video/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;,
        Lio/agora/rtc/video/ViEAndroidGLES20$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "ViEAndroidGLES20"


# instance fields
.field private mLastRotation:I

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeGLPragram:I

.field private nativeGLResourceUpdated:Z

.field private nativeGLTextureId:[I

.field private nativeObject:J

.field private openGLCreated:Z

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 39
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 41
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 45
    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    .line 46
    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    .line 48
    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 49
    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    .line 50
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    const/4 v0, -0x1

    .line 391
    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 58
    invoke-direct {p0, p1, p1, p1}, Lio/agora/rtc/video/ViEAndroidGLES20;->init(ZII)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 39
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 41
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 45
    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    .line 46
    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    .line 48
    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 49
    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    .line 50
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    const/4 p1, -0x1

    .line 391
    iput p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 64
    invoke-direct {p0, p2, p3, p4}, Lio/agora/rtc/video/ViEAndroidGLES20;->init(ZII)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 318
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 319
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private native OnCfgChangedNative(JI)V
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    const-class v0, Lio/agora/rtc/video/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lio/agora/rtc/video/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lio/agora/rtc/video/ViEAndroidGLES20;)I
    .locals 0

    .line 33
    iget p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    return p0
.end method

.method static synthetic access$400(Lio/agora/rtc/video/ViEAndroidGLES20;)[I
    .locals 0

    .line 33
    iget-object p0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    return-object p0
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 5

    .line 113
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 115
    :try_start_0
    sget-object v1, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AGORA_SDK"

    const-string v1, "egl error!!, video may not displayed!!"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkOrientation()I
    .locals 2

    .line 376
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 383
    :catch_0
    sget-object v0, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    const-string v1, "checkOrientation display getRotation throwout exception"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    return v0

    .line 388
    :cond_0
    iget v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    return v0
.end method

.method private init(ZII)V
    .locals 15

    move-object v0, p0

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 79
    :cond_0
    new-instance v1, Lio/agora/rtc/video/ViEAndroidGLES20$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/agora/rtc/video/ViEAndroidGLES20$ContextFactory;-><init>(Lio/agora/rtc/video/ViEAndroidGLES20$1;)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 85
    new-instance v1, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;

    if-eqz p1, :cond_1

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object v3, v1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x0

    move-object v8, v1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Lio/agora/rtc/video/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 90
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method private updateOrientation()V
    .locals 3

    .line 393
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->checkOrientation()I

    move-result v0

    .line 394
    iget v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    if-eq v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 396
    iget-boolean v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v1, :cond_0

    .line 397
    iget-wide v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v1, v2, v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->OnCfgChangedNative(JI)V

    .line 399
    :cond_0
    iput v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->mLastRotation:I

    .line 400
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-void
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .locals 2

    .line 416
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 417
    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 418
    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    const-wide/16 v0, 0x0

    .line 419
    iput-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    .line 420
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 421
    invoke-virtual {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->releaseOpenGLResource()V

    return-void
.end method

.method public ReDraw()V
    .locals 1

    .line 425
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method

.method public RegisterNativeObject(J)V
    .locals 1

    .line 409
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 410
    iput-wide p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    const/4 p1, 0x1

    .line 411
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 412
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public UpdateOpenGLResource([I)V
    .locals 6

    const/4 v0, 0x0

    .line 432
    aget v1, p1, v0

    iput v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLPragram:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 434
    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLTextureId:[I

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v3

    aput v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 436
    iput-boolean v1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    .line 437
    sget-object v3, Lio/agora/rtc/video/ViEAndroidGLES20;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateOpenGLResource, program = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " texture[0~2] = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 371
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->updateOrientation()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .line 327
    invoke-direct {p0}, Lio/agora/rtc/video/ViEAndroidGLES20;->updateOrientation()V

    .line 329
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 330
    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    if-nez p1, :cond_2

    .line 336
    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    iget p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    iget v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, p1, v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 339
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z

    .line 341
    :cond_2
    iget-wide v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lio/agora/rtc/video/ViEAndroidGLES20;->DrawNative(J)V

    .line 342
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 331
    :cond_3
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    const/4 p1, 0x1

    .line 346
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->surfaceCreated:Z

    .line 347
    iput p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewWidth:I

    .line 348
    iput p3, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->viewHeight:I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface changed to width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AGORA_SDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_0

    .line 355
    iget-wide v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeObject:J

    invoke-direct {p0, v2, v3, p2, p3}, Lio/agora/rtc/video/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result p2

    if-nez p2, :cond_0

    .line 356
    iput-boolean p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->openGLCreated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p1, "Exception occurs when create RtcEngine"

    .line 359
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 361
    :goto_2
    iget-object p2, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 365
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public releaseOpenGLResource()V
    .locals 1

    .line 441
    iget-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance v0, Lio/agora/rtc/video/ViEAndroidGLES20$1;

    invoke-direct {v0, p0}, Lio/agora/rtc/video/ViEAndroidGLES20$1;-><init>(Lio/agora/rtc/video/ViEAndroidGLES20;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20;->nativeGLResourceUpdated:Z

    return-void
.end method
